# frozen_string_literal: true

class CreateColumnStrings < ActiveRecord::Migration[6.1]
  def change
    create_table :column_strings, id: :uuid, &:timestamps
  end
end
