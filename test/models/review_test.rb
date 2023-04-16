# == Schema Information
#
# Table name: reviews
#
#  id                :bigint           not null, primary key
#  description       :string
#  rating            :integer
#  reviewed_for_type :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  reviewed_for_id   :integer
#
require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
