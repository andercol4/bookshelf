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
class Book < ApplicationRecord

  has_many :book_authors, dependent: :destroy
  has_many :authors, through: :book_authors

  has_many :book_copies, dependent: :destroy

  belongs_to :series, optional: true
  belongs_to :publication, optional: true

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  accepts_nested_attributes_for :book_copies, reject_if: :all_blank, allow_destroy: true
  validates :authors, :length => { :minimum => 1 , message: "is too short (minimum is 1)"}
end
