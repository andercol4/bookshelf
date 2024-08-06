# == Schema Information
#
# Table name: book_authors
#
#  id         :bigint           not null, primary key
#  book_id    :bigint           not null
#  author_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class BookAuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
