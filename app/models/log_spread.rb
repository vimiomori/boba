class LogSpread < ApplicationRecord
  belongs_to :journal
  belongs_to :parent_log, class_name: 'LogSpread', optional: true
  has_many   :child_logs, class_name: 'LogSpread', foreign_key: 'parent_log_id'
  has_many   :tasks
  validates  :type, presence: true
end