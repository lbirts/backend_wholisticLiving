class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.references :client
      t.references :provider

      t.timestamps
    end
  end
end
