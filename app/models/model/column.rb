# frozen_string_literal: true

# == Schema Information
#
# Table name: model_columns
#
#  id             :uuid             not null, primary key
#  data_type_type :string           not null
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  data_type_id   :uuid             not null
#  model_id       :uuid             not null
#
# Indexes
#
#  index_model_columns_on_data_type  (data_type_type,data_type_id)
#  index_model_columns_on_model_id   (model_id)
#
# Foreign Keys
#
#  fk_rails_...  (model_id => models.id)
#
module Model
  class Column < ApplicationRecord
    belongs_to :model

    delegated_type :data_type, types: %w[Column::String Column::Integer]
  end
end
