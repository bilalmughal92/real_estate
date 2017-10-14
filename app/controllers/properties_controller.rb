class PropertiesController < ApplicationController

	def index
		@records = Record.last(5)
    @sale_records = Record.last(5)
    @rent_records = Record.last(5)
	end
end
