# == Schema Information
#
# Table name: books
#
#  id             :bigint           not null, primary key
#  title          :string
#  description    :text
#  link           :text
#  series_id      :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  publication_id :bigint
#
require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
