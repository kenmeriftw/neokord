class FibonacciNumber < ApplicationRecord
  validates :input_number, numericality: { only_integer: true }
  validates :input_number, presence: true
end
