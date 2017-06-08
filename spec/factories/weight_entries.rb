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

FactoryGirl.define do
  factory :weight_entry do
    date "2017-05-09"
    user nil
    weight 1
    unit_id 1
    bmi 1.5
  end
end
