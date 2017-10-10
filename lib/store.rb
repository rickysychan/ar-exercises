class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: {minimum: 3}
    validates :annual_revenue, numericality: {greater_than: 0}

    validate :must_have_one_of_each,
 
  def must_have_one_of_each
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, "must have at least one")
      errors.add(:womens_apparel, "must have at least one")
    end
  end
end


# * Stores must always have a name that is a minimum of 3 characters
# * Stores have an annual_revenue that is a number (integer) that must be 0 or more
# Stores must carry at least one of the men's or women's apparel