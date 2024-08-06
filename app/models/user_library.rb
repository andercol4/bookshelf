# == Schema Information
#
# Table name: user_libraries
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  library_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserLibrary < ApplicationRecord
  belongs_to :user
  belongs_to :library
end
