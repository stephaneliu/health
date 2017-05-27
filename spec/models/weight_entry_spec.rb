# == Schema Information
#
# Table name: weight_entries
#
#  id         :integer          not null, primary key
#  date       :date             not null
#  user_id    :integer          not null
#  weight     :integer          not null
#  unit_id    :integer          default(1)
#  bmi        :float(24)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_weight_entries_on_user_id  (user_id)
#

require 'rails_helper'

RSpec.describe WeightEntry, type: :model do
  describe 'associations' do
    specify { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    specify { is_expected.to validate_presence_of :date }
    specify { is_expected.to validate_presence_of :user }
    specify { is_expected.to validate_presence_of :weight }
  end

  describe '::UNITS' do
    subject(:units) { described_class::UNITS[unit] }

    context 'when unit is 1' do
      let(:unit) { :pounds }

      specify { expect(units.id).to eq(1) }
      specify { expect(units.label).to eq('lbs') }
    end
  end
end
