# == Schema Information
#
# Table name: book_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  book_id     :integer
#  category_id :integer
#
require "test_helper"

class BookCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
