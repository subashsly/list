class TablesController < ApplicationController
 before_action :set_table, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name: "subash", password: "subash", only: :destroy 



  def index
  	@tables = Table.all
  end

  def new
  	@table = Table.new
  end

  def create
  	@table = Table.new(table_params)
  	if @table.save
  		redirect_to @table
  	else
  		render 'new'
  	end
  end

  def show
  	
  end

  def edit
  	
  end

  def update
  	  	if @table.update(table_params)
  		redirect_to @table
  		else
  		render 'edit'
  	end
  end

  def destroy
  	@table.destroy
  	redirect_to tables_path
  end

  private
   def set_table
      @table = Table.find(params[:id])
    end
  def table_params
  	params.require(:table).permit(:firstname, :lastname, :date_of_birth, :presence, :description)
  end
end
