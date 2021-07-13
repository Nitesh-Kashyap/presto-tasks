class DataPacket
	require 'json'
	attr_accessor :array_data, :hash_data
	def initialize(array_data,hash_data)
		@array_data = array_data
		@hash_data = hash_data
	end
	def array_data=(value)
		value = value.split(',')
	    super(value)
	end
	def hash_data=(value)
		value = JSON.parse(value)
		super(value)
	end
end
