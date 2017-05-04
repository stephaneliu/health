FactoryGirl.define do
  factory :email, class: OpenStruct do
    to [{ full: 'to_user@email.com', email: 'to_user@email.com',
          token: 'to_user', host: 'email.com', name: nil }]
    from({ token: 'from_user', host: 'email.com', email: 'from_email@email.com',
           full: 'From User <from_user@email.com>', name: 'From User' })
    subject 'email subject'
    body 'Hello!'
    attachments {[]}

    # build(:email, :with_attachment)
    trait :with_attachment do
      attachments {[
        ActionDispatch::Http::UploadedFile.new({
          # Not yet created
          # filename: 'img.png', type: 'image/png',
          # tempfile: File.new("#{File.expand_path(File.dirname(__FILE__))}/fixtures/img.png")
        })
      ]}
    end
  end
end
