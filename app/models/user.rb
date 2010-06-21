require "digest"


# == Schema Info
#
# Table name: users
#
#  id               :integer         not null, primary key
#  address1         :string(255)
#  address2         :string(255)
#  city             :string(255)
#  country          :string(255)
#  email            :string(255)
#  name             :string(255)
#  password         :string(255)
#  password_confirm :string(255)
#  share_info       :boolean
#  state            :string(255)
#  zip              :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#
class User < ActiveRecord::Base
  # Attribute getter
  attr_accessor :password

  # Attribute getter/setters 
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

  # Attribute validations
  EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_presence_of     :name, :email
  validates_length_of       :name, :maximum => 50
  validates_format_of       :email, :with => EmailRegex
  validates_uniqueness_of   :email, :case_sensitive => false
  validates_confirmation_of :password
  validates_presence_of     :password
  validates_length_of       :password, :within => 6..40
  # XXX ADD MORE VALIDATION HERE

  before_save :encrypt_password

  #
  # @brief Check to see if 'submitted_password' mathes the user's password.
  #
  def has_password?(submitted_password)
    # Comapre encrypted_password with the encrypted version of
    # submitted_password.
    encrypted_password == encrypt(submitted_password)
  end

  #
  # @brief Create a reference to the user in the sessions object.
  #
  def remember_me
    # XXX KREEGER TO DO
    #self.remember_token = encrypt("#{salt}--#{id}--#{Time.now.utc}")
    #save_without_validation
  end

  #
  # @brief Return a valid user if the email and password match.
  #
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password?(submitted_password)
  end

  private
    def encrypt_password
      unless password.nil?
        self.salt = make_salt
        self.encrypt_password = encrypt(password)
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
