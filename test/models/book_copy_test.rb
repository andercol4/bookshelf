# == Schema Information
#
# Table name: book_copies
#
#  id          :bigint           not null, primary key
#  book_id     :bigint           not null
#  book_format :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class BookCopyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
