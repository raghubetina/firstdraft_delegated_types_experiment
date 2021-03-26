# frozen_string_literal: true

class CreateModels < ActiveRecord::Migration[6.1]
  def change
    create_table :models, id: :uuid do |t|
      t.references :idea, null: false, foreign_key: true, type: :uuid
      t.string :name
      t.string :classified
      t.string :plural
      t.string :singular
      t.string :underscored

      t.timestamps
    end
  end
end
