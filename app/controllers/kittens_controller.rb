class KittensController < ApplicationController
  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
      if @kitten.save
        flash[:success] = "Kitten created!"
        redirect_to kitten_path(@kitten)
      else
        flash[:success] = "Check params!"
        render :new
      end
  end

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json {render :json => @kittens}
      format.xml {render :xml => @kittens}
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render :json => @kitten}
      format.xml {render :xml => @kitten}
      end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.delete
    flash[:success] = "Kitten deleted!"
    redirect_to kittens_path
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
      if @kitten.update(kitten_params)
        flash[:success] = "Kitten created!"
          redirect_to kitten_path(@kitten)
      else
        flash[:success] = "check params!"
        render :edit
      end
  end

  private
      def kitten_params
         params.require(:kitten).permit(:name, :cuteness, :softness)
       end
end
