# frozen_string_literal: true

# == Schema Information
#
# Table name: column_strings
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
module Column
  class String < ApplicationRecord
  end
end
