class Wagon
	attr_accessor :num, :free, :max, :type

	def initialize(max, type) 
		@max = max
		@free = max
		@type = type
	end

	def take(counts = 1)
		@free -= counts if @free - counts >= 0
	end

	def release(counts = 1)
		@free += counts
	end

	def occupied
		@max - @free
	end
end