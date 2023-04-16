# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  author       :string
#  description  :string
#  release_year :integer
#  status       :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Book < ApplicationRecord

  has_many :book_categories
  has_many :categories, through: :book_categories
  has_many :reviews, as: 'reviewed_for'

  enum :status => [:free , :rented]

  accepts_nested_attributes_for :reviews, reject_if: :all_blank
end
