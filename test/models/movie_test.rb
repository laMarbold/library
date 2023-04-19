# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  description  :string
#  director     :string
#  duration     :string
#  release_year :integer
#  status       :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
