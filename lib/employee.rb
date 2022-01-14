class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :first_name, presence: true
  validates :hourly_rate, numericality: {
    greater_than_or_equal_to: 40,
    less_than_or_equal_to: 200
  }
  validates :store_id, presence: true

  before_create do 
    pool = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten
    random_string = (0...8).map { pool[rand(pool.length)] }.join
    self.password = random_string
  end


end
