class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :text
      t.references :list, null: false, foreign_key: true
      t.boolean :done, default: false 
      t.timestamps
    end
  end
end
