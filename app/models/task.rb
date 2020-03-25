class Task < ApplicationRecord
  belongs_to :log_spread
  validates  :name, presence: true
  validates  :done, presence: true
  validates  :type, presence: true
  validates  :repeat, presence: true
end