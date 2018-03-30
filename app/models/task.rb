class Task < ApplicationRecord
  def completed?
    return self.completion_date.empty?
  end

  def complete!
    self.completion_date = Date.today
  end

  def incomplete!
    self.completion_date = ""
  end
end
