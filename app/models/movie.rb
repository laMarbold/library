# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  description  :string
#  director     :string
#  duration     :string
#  price        :string
#  release_year :integer
#  status       :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Movie < ApplicationRecord
  has_many :movie_categories, class_name: 'Association::MovieCategory'
  has_many :categories, through: :movie_categories
  has_many :reviews, class_name: 'Review', as: :reviewed_for
  has_one_attached :cover

  enum :status => [:free , :rented]

  accepts_nested_attributes_for :reviews, reject_if: :all_blank

  def cover_url
    Rails.application.routes.url_helpers.url_for(cover)
  end

end
