class Program4
    require 'date'
	def self.interval_iterator(start_date, end_date, interval)
	  start_date = Date.parse(start_date)
	  end_date = Date.parse(end_date)
	  if interval == 'monthly'
		  (start_date..end_date).map {|date| date.strftime('%d-%m-%Y') == date.strftime("01-%m-%Y") ? date.strftime('%d-%m-%Y') : nil}.compact
	  elsif interval == 'weekly'
	    (start_date..end_date).map { |date| date.monday? ? date.strftime('%d-%m-%Y') : nil}.compact
	  else
	     "Please provide correct interval"
	  end
	end

	puts "Please enter start date"
	start_date = gets.chomp
	puts "Please enter end date"
	end_date = gets.chomp
	puts "Please enter interval"
	interval = gets.chomp
    result = Program4.interval_iterator(start_date, end_date, interval)
    puts result.inspect
end