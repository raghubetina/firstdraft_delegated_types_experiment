# frozen_string_literal: true

module DataType
  extend ActiveSupport::Concern

  included do
    has_one :column, as: :data_type, touch: true
  end
end
