FactoryBot.define do
  factory :expense do
    name { "MyString" }
    amount { 1 }
    category { "MyString" }
    date { "2021-03-14" }
    owner { "MyString" }
  end
end
