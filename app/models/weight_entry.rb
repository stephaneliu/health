# == Schema Information
#
# Table name: weight_entries
#
#  id         :integer          not null, primary key
#  date       :date             not null
#  user_id    :integer          not null
#  weight     :float(24)        not null
#  unit_id    :integer          default(1)
#  bmi        :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_weight_entries_on_user_id  (user_id)
#

# Object persists weight entry
class WeightEntry < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :user, presence: true
  validates :weight, presence: true

  UNITS = { pounds: OpenStruct.new(id: 1, label: 'lbs') }.freeze
end
