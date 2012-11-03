class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firt_name
      t.string :last_name
      t.string :favorite_blog
      t.string :address
      t.integer :phone_number
      t.datetime :data_of_birth
      t.string :user_name
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.string :current_login_ip

      t.timestamps
    end
  end
end
