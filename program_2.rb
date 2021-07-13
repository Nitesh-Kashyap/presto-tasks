class Program2
	def self.printer(num)
       (1..num).map{|n| n%3 == 0 && n%5 == 0 ? "presto apps" : n%3 == 0 ? "presto" : n%5 == 0 ? "apps" : n}
	end
end
