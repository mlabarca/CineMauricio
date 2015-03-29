class SalasController < ApplicationController
  def index
    @sala = Sala.all
  end

  def new
  end

  def edit
  end
  
  # params list to be reused. Declared private for security
  private 
  def sala_params
    params.require(:sala).permit(:sala_number, :seat_rows, :seat_columns)
  end
  
end
