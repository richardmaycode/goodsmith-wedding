class Memory < ApplicationRecord
  has_rich_text :content

  has_many_attached :images

  validates :submitter, presence: true
end
