require "paperclip"

class Car < ActiveRecord::Base
  has_one :models
  belongs_to :user
  
  # Paperclip support
  has_attached_file :image, :styles => { :larger => "500x500>", :thumb => "100x100>" }
end