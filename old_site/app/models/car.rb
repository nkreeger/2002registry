require "paperclip"

class Car < ActiveRecord::Base
  belongs_to :user
  
  # Paperclip support
  has_attached_file :image, :styles => { :larger => "500x500>", :thumb => "100x100>" }

  def model
    Model.find(model_id)
  end
end
