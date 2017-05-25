RSpec.describe 'Email sends weight' do
  it 'saves weight for user' do
    expect { post '/incoming_emails' }.to change(WeightEntry.count).by(1)
  end

  it 'analyzes weight goal progress'
  it 'sends SMS to user'
end
