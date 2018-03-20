class Task < ApplicationRecord

  def self.sort
    return self.all.sort_by { |task| task.priority }
  end
end
