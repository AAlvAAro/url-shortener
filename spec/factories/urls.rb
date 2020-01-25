FactoryBot.define do
  factory :url do
    original { "http://google.com" }
    short { "abcdefg" }
    title { "Google" }
    visits { 0 }
  end
end
