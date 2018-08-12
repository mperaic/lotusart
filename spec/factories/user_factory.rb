FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "1234567890"
    first_name "Peter"
    last_name "Example"
    admin false
  end

  factory :user2 do
    email
    password "12234567890"
    first_name "Peter2"
    last_name "Exampl2e"
    admin false
  end

  factory :admin, class: User do
  email 
  password "qwertyuiop"
  admin true
  first_name "Admin"
  last_name "User"
end

end
