class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
    # render('advertisements/index.html.erb')
  end

  def show
    @advertisement = Advertisement.find(params[:id])
    # render 'advertisements/index.html.erb'
  end

  def edit
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisement.new
  end

  def create
    @advertisement = Advertisement.new
    @advertisement.title = params[:advertisement][:title]
    @advertisement.copy = params[:advertisement][:copy]
    @advertisement.price = params[:advertisement][:price]

    if @advertisement.save
      flash[:notice] = "Advertisement was saved."
      redirect_to @advertisement
    else
      flash[:error] = "There was an error saving the advertisement. Please try again."
      render :new
    end
  end
end
