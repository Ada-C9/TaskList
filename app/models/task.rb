class Task < ApplicationRecord
  validates :priority, inclusion: {in: 1..5, message: "Priority can only be 1-5"} 

  def self.sort
    return self.all.sort_by { |task| task.priority }
  end
end
