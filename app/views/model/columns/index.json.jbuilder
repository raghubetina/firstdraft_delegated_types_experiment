# frozen_string_literal: true

json.array! @model_columns, partial: 'model_columns/model_column', as: :model_column
