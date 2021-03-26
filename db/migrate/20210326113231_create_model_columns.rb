# frozen_string_literal: true

class CreateModelColumns < ActiveRecord::Migration[6.1]
  def change
    create_table :model_columns, id: :uuid do |t|
      t.string :name
      t.references :data_type, polymorphic: true, null: false, type: :uuid
      t.references :model, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
