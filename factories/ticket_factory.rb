
FactoryBot.define do
    factory :ticket do
      title { Faker::Lorem.sentence }
      ticket_description { Faker::Lorem.paragraph }
      due_date { Faker::Time.forward(days: 30) } # Adjust as needed
      status { 'Pending' } # Set a default status if needed
      priority { %w[Low Medium High].sample }
      assigned_to { Faker::Internet.username }
      assigned_by { Faker::Internet.username }
    end
  end
  