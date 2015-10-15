require_relative 'manufacturer'

class Wagon
	include Manufacturer

	attr_accessor :num, :free, :max, :type

	def initialize(max, type) 
		@max = max
		@free = max
		@type = type
		validate!
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

	def valid?
		validate!
	rescue
		false
	end

	protected

	def validate!
		raise ArgumentError, "Не указан тип вагона" if @type.nil?
		raise ArgumentError, "Укажите количество или объем вагона" if @max.nil?
		raise ArgumentError, "Количество или объем вагона не может быть меньше или равно нулю" if @max <= 0
		true
	end
end