# frozen_string_literal: true

class CreateColumnIntegers < ActiveRecord::Migration[6.1]
  def change
    create_table :column_integers, id: :uuid, &:timestamps
  end
end
