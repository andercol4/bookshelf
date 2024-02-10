class Library < ApplicationRecord
  belongs_to :creator, className: "User", foreign_key "user_id"
end
