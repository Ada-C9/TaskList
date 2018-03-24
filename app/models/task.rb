require 'pry'

class Task < ApplicationRecord
  def completed?

    # if self.completion_date.empty?
    #   return true
    # else
    #   return false
    # end

    # the lines above could be written like this in one line
    #binding.pry
    # return !self.completion_date.nil?
    return self.completion_date.present?
  end

  def complete!
    self.completion_date = Date.today

  end

  def uncomplete!
    self.completion_date = nil

  end
end
