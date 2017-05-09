class AddAvatarToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :avatar, :string
  end
end
