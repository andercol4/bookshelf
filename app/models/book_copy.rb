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
class BookCopy < ApplicationRecord

  belongs_to :book

  enum book_format: [:ereader, :audiobook, :physical]

  has_one_attached :file

  validate :file_attached?, if: :digital_copy?

  def file_attached?
    errors.add(:file, 'needs to be attached') if !file.attached?
  end

  def digital_copy?
    [:ereader, :audiobook,].include?(book_format)
  end
end
