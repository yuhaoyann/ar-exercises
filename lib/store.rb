class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }

  validate :must_carry_men_or_women_apparel

  def must_carry_men_or_women_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "must carry at least one of the men's or women's apparel")
    end
  end
  # private
  #   before_destroy do
  #     if self.employees.size < 1
  #       self.destroy
  #     else
  #       throw(:abort)
  #     end
  #   end

end