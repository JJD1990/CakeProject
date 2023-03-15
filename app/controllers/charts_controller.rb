class ChartsController < ApplicationController
    def cake_size
        render json: Employee.all.count
    end   

end
