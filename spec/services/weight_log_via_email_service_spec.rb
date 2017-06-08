RSpec.describe WeightLogViaEmailService do
  let(:parser) { class_double(WeightParserService, new: true) }

  describe '#initialize' do
    subject(:service) { described_class.new(email: email, parser: parser) }

    let(:email) do
      { to: 'test@test.com',
        from: 'test@test.com',
        body: 'May 27, 2017 at 8:39AM 160.0 pounds 24.62' }
    end

    specify { expect(service.email).to eq(email) }
    specify { expect(service.parser).to eq(parser) }
  end

  describe '#process' do
    before { service.process }

    subject(:service) { described_class.new(email: email, parser: parser_class) }

    let(:email) do
      { subject: 'Weight logged May 27, 2017 at 10:07PM',
        plain: "#{log_date.to_s(:long)} at 8:39AM 160.0 pounds 24.62" }
    end

    let(:parser_class) { class_double(WeightParserService, new: parser) }
    let(:parser)       { instance_double(WeightParserService, parse: true) }
    let(:log_date)     { Date.new(2017, 5, 26) }

    specify { expect(parser_class).to have_received(:new) }
    specify { expect(parser).to have_received(:parse) }

    context 'creates weight log' do
      specify do
        expect { described_class.new(email: email, parser: parser_class) }
          .to change { WeightEntry.count }.by 1
      end
    end

    context 'spawns analysis service'
  end
end
