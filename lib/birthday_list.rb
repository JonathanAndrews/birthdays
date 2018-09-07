require "date"
class BirthdayList

  def initialize
    @list = []
  end

  def add_birthday(name, input_date)
    date = Date.strptime(input_date, "%d-%m-%y")
    @list << { name: name, date: date }
  end

  def print_list
    string = ""
    @list.each do |hash|
      string += "#{hash[:name]}: #{hash[:date].strftime("%d/%m/%Y")}\n"
    end
    string
  end

  def birthday_search
    @list.each do |hash|
  #    binding.pry
      return yay_a_birthday if today_is_someones_birthday
    end
  end

  def yay_a_birthday
    "It's #{hash[:name]}'s birthday today! They are #{Date.today.strftime("%Y").to_i - hash[:date].strftime("%Y").to_i} years old!"
  end

  def today_is_someones_birthday
    Date.today.strftime("%d/%m") == hash[:date].strftime("%d/%m")
  end

end
