# frozen_string_literal: true

json.extract! model, :id, :idea_id, :name, :classified, :plural, :singular, :underscored, :created_at, :updated_at
json.url model_url(model, format: :json)
