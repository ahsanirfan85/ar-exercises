class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {  minimum: 3  }
  validates :annual_revenue, numericality: {  only_integer: true, greater_than_or_equal_to: 0 }
  validate :mens_and_womens_apparel_both_cannot_be_empty_or_false

  def mens_and_womens_apparel_both_cannot_be_empty_or_false
    if mens_apparel == nil && womens_apparel == nil
      errors.add(:both_mens_apparel_and_womens_apparel, "can't both be empty together.")
    end
  end
end
