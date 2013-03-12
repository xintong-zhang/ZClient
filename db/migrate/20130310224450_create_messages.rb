class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :phone_number
      t.string :content

      t.timestamps
    end
  end
end
