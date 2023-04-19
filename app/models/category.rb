# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
  has_many :book_categories , class_name: 'Association::BookCategory'
  has_many :movie_categories, class_name: 'Association::MovieCategory'
  has_many :books ,through: :book_categories
  has_many :movies, through: :movie_categories
end
