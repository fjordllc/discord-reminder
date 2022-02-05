class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.string :basic_auth_user
      t.string :basic_auth_password

      t.timestamps
    end
  end
end
