# frozen_string_literal: true

# == Schema Information
#
# Table name: column_integers
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Column::Integer < ApplicationRecord
  include DataType
end
