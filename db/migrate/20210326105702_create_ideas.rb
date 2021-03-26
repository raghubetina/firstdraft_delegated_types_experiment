class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.string :ancestry
      t.text :description
      t.boolean :private, default: false

      t.timestamps
    end
    add_index :ideas, :name, unique: true
    add_index :ideas, :ancestry
  end
end
