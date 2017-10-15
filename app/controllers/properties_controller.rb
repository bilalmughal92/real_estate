class PropertiesController < ApplicationController

	def index
		@records = Record.last(5)
    @sale_records = Record.where(status: "For Sale")
    @rent_records = Record.where(status: "Rental")
	end

  def search
    @sale_records = Record.where(query("For Sale"))
    @sale_records = select_values(@sale_records) if @sale_records.present?
    @rent_records = Record.where(query("Rental"))
    @rent_records = select_values(@rent_records) if @rent_records.present?
    render :layout => false
  end

  private

  def query(query_string)
    query = "status LIKE '%#{query_string}%' "
    query += "AND city LIKE '%#{params[:city]}%' " if params[:city].present?
    query += "AND town LIKE '%#{params[:town]}%' " if params[:town].present?
    query
  end

  def select_values(records)
    record_array = records.as_json
    record_array.each do |record|
      if params[:price_from].present? && params[:price_from].to_i > record["price"].to_i
        record_array.delete(record)
      end
      if params[:price_to].present? && params[:price_to].to_i < record["price"].to_i
        record_array.delete(record)
      end
      if params[:square_feet_from].present? && params[:square_feet_from].to_i > record["square_foot"].to_i
        record_array.delete(record)
      end
      if params[:square_feet_to].present? && params[:square_feet_to].to_i < record["square_foot"].to_i
        record_array.delete(record)
      end
    end
    record_array
  end
end
