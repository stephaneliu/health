# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string(255)
#  role                   :integer
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe User do
  let(:user) { build(:user, email: 'user@example.com') }

  describe 'attributes' do
    specify { expect(user.email).to match 'user@example.com' }
  end

  describe '#set_default_role' do
    subject { user.role }

    # Testing via after_initialize implementation
    let(:user) { described_class.new(role: role) }

    context 'when role is nil' do
      let(:role) { nil }

      specify    { is_expected.to eq('user') }
    end

    described_class.roles.each_key do |role|
      context "when role is assigned to #{role}" do
        let(:role) { role }

        specify { is_expected.to eq(role) }
      end
    end

    context 'when role is alien' do
      specify do
        expect { described_class.new(role: 'alien') }
          .to raise_error(ArgumentError, /not a valid role/)
      end
    end
  end
end
