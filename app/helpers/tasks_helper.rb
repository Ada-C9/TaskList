module TasksHelper
  def format_date(date)
    date ? date.strftime("%B %d, %Y") : ""
  end
end
