require 'rails_helper'

RSpec.describe WeightLogViaEmailService do
  describe '#initialize' do
    subject(:service) { described_class.new(email) }
    let(:email) { { text: 'hi' } }

    it 'assigns email to attr_reader email' do
      expect(service.email).to eq(email)
    end
  end

  describe '#process' do
    context 'delegates parsing of text to weight parser'
    context 'creates weight log'
    context 'spawns analysis service'
  end
end
