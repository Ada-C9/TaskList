class Task < ApplicationRecord
  def completed?
    return self.completion_date.present?
  end

  def complete!
    self.completion_date = Date.today

  end

  def uncomplete!
    self.completion_date = nil
  end
end
