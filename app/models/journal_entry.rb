class JournalEntry < ApplicationRecord
  belongs_to :journal
  validates :title,   presence: true, length: { minimum: 3, maximum: 50 }
  validates :content, presence: true
  validates :journal_id, presence: true
end
