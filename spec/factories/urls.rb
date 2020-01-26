FactoryBot.define do
  factory :url do
    original { "http://google.com" }
    slug { "abcdefg" }
    title { "Google" }
    visits { 0 }
  end
end
