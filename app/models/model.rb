# frozen_string_literal: true

# == Schema Information
#
# Table name: models
#
#  id          :uuid             not null, primary key
#  classified  :string
#  name        :string
#  plural      :string
#  singular    :string
#  underscored :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  idea_id     :uuid             not null
#
# Indexes
#
#  index_models_on_idea_id  (idea_id)
#
# Foreign Keys
#
#  fk_rails_...  (idea_id => ideas.id)
#
class Model < ApplicationRecord
  belongs_to :idea
end
