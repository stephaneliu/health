RSpec.describe WeightParserService do
  describe '#initialize' do
    subject(:service) { described_class.new(text) }

    let(:text) do
      'Date: May 27, 2017 at 10:07 PM\nWeight logged: 161.9 lbs\nBody mass index: 24.83'
    end

    specify { expect(service.text).to eq(text) }
  end

  describe '#parse' do
    subject(:parsed) { described_class.new(text).parse }

    let(:text) do
      "Date: May 27, 2017 at 10:07 PM\nWeight logged: #{weight} lbs\nBody mass index: #{bmi}"
    end

    let(:date) { Date.new(2017, 5, 27) }
    let(:weight) { 161.9 }
    let(:bmi)    { 24.83 }

    specify { expect(parsed[:date]).to eq(date) }
    specify { expect(parsed[:weight]).to eq(weight) }
    specify { expect(parsed[:bmi]).to eq(bmi) }
  end
end
