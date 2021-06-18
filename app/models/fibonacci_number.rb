class FibonacciNumber < ApplicationRecord
  validates :input_number, numericality: { only_integer: true }
end
