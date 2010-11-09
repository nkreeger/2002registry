require "digest"
require "paperclip"

class User < ActiveRecord::Base
  attr_accessible :address1,
                  :address2,
                  :city,
                  :country,
                  :email,
                  :name,
                  :password,
                  :password_confirmation,
                  :share_info,
                  :state,
                  :zip

  has_many :cars

  has_attached_file :avatar, :styles => { :thumb => "100x100>" }

  before_save :encrypt_password

  def has_password?(submitted_password)
    # Comapre encrypted_password with the encrypted version of
    # submitted_password.
    encrypted_password == encrypt(submitted_password)
  end

  def remember_me!
    self.remember_token = encrypt("#{salt}--#{id}--#{Time.now.utc}")
    save_without_validation
  end

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  def update_password!(old_password, new_password)
    # XXX KREEGER: Add this method to the unit tests.
    # XXX KREEGER: Validate the old vs. the new password here?
    # XXX KREEGER: This method doesn't work, |password| is alwats nil? in encrypt_password
    if has_password?(old_password)
      self.password = new_password
      encrypt_password
      self.save
    else
      raise "Incorrect old password"
    end
  end

  private
    def encrypt_password
      unless password.nil?
        self.salt = make_salt
        self.encrypted_password = encrypt(password)
      end
    end

    def encrypt(string)
      secure_hash("#{salt}#{string}")
    end

    def make_salt
      secure_hash("#{Time.now.utc}#{password}")
    end

    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end
end
