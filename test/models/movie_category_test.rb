# == Schema Information
#
# Table name: movie_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  movie_id    :integer
#
require "test_helper"

class MovieCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
