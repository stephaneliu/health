# == Schema Information
#
# Table name: weight_entries
#
#  id         :integer          not null, primary key
#  date       :date             not null
#  user_id    :integer          not null
#  weight     :integer          not null
#  unit_id    :integer          default("1")
#  bmi        :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
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
