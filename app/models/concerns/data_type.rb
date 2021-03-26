module DataType
  extend ActiveSupport::Concern

  included do
    has_one :column, as: :data_type, touch: true
  end
end
