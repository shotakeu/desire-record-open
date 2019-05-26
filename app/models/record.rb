class Record < ApplicationRecord
  validates :desire_level, numericality: { less_than: 11, greater_than: -1}
  validates :feeling_level, numericality: { less_than: 11, greater_than: -1}
end
