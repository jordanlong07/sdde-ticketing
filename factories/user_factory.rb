require 'faker'

FactoryBot.define do
    factory :new_user do
        email { Faker::Internet.email }
        user_name { Faker::Internet.username }
        password { Faker::Internet.password }
        password_confirmation { password }
    end
end

FactoryBot.define do
    factory :user do
        email { Faker::Internet.email }
        user_name { Faker::Internet.username }
        password { Faker::Internet.password }
    end
end