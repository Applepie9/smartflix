# frozen_string_literal: true

FactoryBot.define do
  factory :show do
    show_type { 'MyString' }
    sequence(:title) { |n| "Show_#{n}" }
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
