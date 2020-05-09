FactoryBot.define do
  factory :date_request do
    references { "" }
    time_range_from { "2020-05-09 12:24:29" }
    time_range_to { "2020-05-09 12:24:29" }
    confirmed_at { false }
  end
end
