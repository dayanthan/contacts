class AddColumnAvatarToContacts < ActiveRecord::Migration
  def change
  	add_attachment :contacts, :avatar
  end
end
