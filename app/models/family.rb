class Family < ActiveRecord::Base
  has_many :people

  def income
    total = self.total_income
    return 0 if total == 0

    total / self.people.size
  end

  def income_per_capta
    return 0 if income == 0
    income / self.people.size
  end

  def total_income
    self.people.map { |p| p.income.to_f }.sum
  end

  def poverty_situation?
    income_per_capta <= 154 
  end

  def extreme_poverty_situation?
    income_per_capta <= 77 
  end
end
