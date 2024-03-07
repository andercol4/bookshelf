class Book < ApplicationRecord
  belongs_to :series, optional: true
  belongs_to :publication, optional: true
  has_many :book_authors
  has_many :authors, through: :book_authors
  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
