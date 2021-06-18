class CreateFibonacciNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :fibonacci_numbers do |t|
      t.integer :input_number
      t.integer :output_number

      t.timestamps
    end
  end
end
