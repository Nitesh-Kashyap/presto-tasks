class Program5
	def self.pattern_printer(num)
		(1..num).each do |n|
			(n..num-1).map { |k| print " "}
			puts " *" * n
		end
		(1..num-1).to_a.reverse.each do |n|
			(n..num).map { |k| print " "}
			puts "* " * n
		end
	end
	puts "Please enter an integer"
	num = gets.chomp
	Program5.pattern_printer(num.to_i)
end