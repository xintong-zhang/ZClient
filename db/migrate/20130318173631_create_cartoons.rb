class CreateCartoons < ActiveRecord::Migration
  def change
    create_table :cartoons do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
