class Contact < ActiveRecord::Base
  attr_accessible :app_user_id, :contact_email, :contact_from, :contact_name, :contact_type, :user_id
  belongs_to:user
  validates :contact_name,:contact_email, :presence => {:message => 'Name cannot be blank, Task not saved'}

attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
