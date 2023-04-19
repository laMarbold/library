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

module Association
  class BookCategory < ApplicationRecord
    belongs_to :book
    belongs_to :category
  end
end

