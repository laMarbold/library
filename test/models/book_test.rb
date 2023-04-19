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
require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
