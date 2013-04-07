class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :url
      t.string :cat
      t.integer :count

      t.timestamps
    end
  end
end
