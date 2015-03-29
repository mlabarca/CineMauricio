class SalasController < ApplicationController
  def index
    @salas = Sala.all
  end
  
  def show
    @sala = Sala.find(params[:id])
  end
  
  # Executes before rendering the "new" view
  def new
    @sala = Sala.new
  end
  
  # Executes when we submit the form in the "new" view
  def create
    @sala = Sala.new(sala_params)
    if @sala.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  
  def edit
    @sala = Sala.find(params[:id])
  end
  
  
  
  # params list to be reused. Declared private for security
  private 
  def sala_params
    params.require(:sala).permit(:sala_number, :seat_rows, :seat_columns)
  end
  
end
