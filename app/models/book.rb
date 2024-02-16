class Book < ApplicationRecord
  belongs_to :author

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
