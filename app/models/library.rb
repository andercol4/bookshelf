# == Schema Information
#
# Table name: libraries
#
#  id         :bigint           not null, primary key
#  name       :string
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Library < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
end
