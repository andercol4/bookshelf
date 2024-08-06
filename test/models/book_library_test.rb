# == Schema Information
#
# Table name: book_libraries
#
#  id         :bigint           not null, primary key
#  book_id    :bigint           not null
#  library_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class BookLibraryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
