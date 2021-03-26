# frozen_string_literal: true

json.extract! model_column, :id, :name, :data_type_id, :data_type_type, :model_id, :created_at, :updated_at
json.url model_column_url(model_column, format: :json)
