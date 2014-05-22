FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "minnielouse#{n}@example.com"  } 
    password 'androgynous'
    password_confirmation 'androgynous'
  end

end
