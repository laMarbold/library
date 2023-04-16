# == Schema Information
#
# Table name: movie_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  movie_id    :integer

module Association
  class MovieCategory < ApplicationRecord
    belongs_to :movie, class_name: 'Movie'
    belongs_to :category, class_name: 'Category'
  end
end

