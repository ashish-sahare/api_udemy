FactoryBot.define do
  factory :ashish do
    name { "ash" }
    user_id { User&.first&.id}
  end
end
