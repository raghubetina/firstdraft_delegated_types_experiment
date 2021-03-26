# frozen_string_literal: true

module Model
  class Column < ApplicationRecord
    belongs_to :model

    delegated_type :data_type, types: %w[]
  end
end
