class BookCopy < ApplicationRecord

  enum book_format: [:ereader, :audiobook, :physical]

  has_one_attached :file

  validates :file_attached?, if: :digital_copy?

  def file_attached?
    errors.add(:file, 'needs to be attached') if !file.attached?
  end

  def digital_copy?
    [:ereader, :audiobook,].include?(book_format)
  end
end
