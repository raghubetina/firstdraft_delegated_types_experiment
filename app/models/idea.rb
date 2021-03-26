# == Schema Information
#
# Table name: ideas
#
#  id          :uuid             not null, primary key
#  ancestry    :string
#  description :text
#  name        :string
#  private     :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :uuid             not null
#
# Indexes
#
#  index_ideas_on_ancestry  (ancestry)
#  index_ideas_on_name      (name) UNIQUE
#  index_ideas_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Idea < ApplicationRecord
  belongs_to :user
end
