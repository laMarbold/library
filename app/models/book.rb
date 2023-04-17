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

  has_many :book_categories, class_name: 'Association::BookCategory'
  has_many :categories, through: :book_categories
  has_many :reviews, as: 'reviewed_for'
  has_one_attached :cover

  enum :status => [:free , :rented]

  accepts_nested_attributes_for :reviews, reject_if: :all_blank

  def cover64
    cover&.open do |file|
      "data:image/png;base64,#{Base64.strict_encode64(file.read)}"
    end
  end
end
