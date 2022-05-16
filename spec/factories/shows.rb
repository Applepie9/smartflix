# frozen_string_literal: true

FactoryBot.define do
  factory :show do
    sequence(:show_id) { |n| "s#{n}" }
    traits_for_enum :show_type, ['Movie', 'TV Show']
    sequence(:title) { |n| "Show_#{n}" }
    director { 'MyText' }
    cast { 'MyText' }
    country { 'MyString' }
    date_added { '2022-05-05' }
    release_year { 2010 }
    rating { 'MyString' }
    duration { 'MyString' }
    listed_in { 'MyText' }
    description { 'MyText' }
  end
end
