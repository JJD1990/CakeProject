class CakeController < ApplicationController
    def create
      @employee = Employee.find(params[:employee_id])
      @employee.cake_details = { flavor: params[:flavor], size: params[:size] }
      @employee.save!
      redirect_to employees_path
    end
  
    def index
      @pagy, @employees = pagy(Employee.all, items: 5)
    end
  
    def cake_size
        sizes = Employee.group("cake_details ->> 'size'")
                       .select("cake_details ->> 'size' as size, count(*) as count")
                       .map { |employee| { size: employee.size.to_s, count: employee.count.to_s } }
        render json: sizes
      end
      
end