class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
    # render('advertisements/index.html.erb')
  end

  def show
    # raise 'this is the show action'
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

  def update
    @advertisment = Advertisement.find(params[:id])
    @advertisment.title = params[:advertisement][:title]
    @advertisment.copy = params[:advertisement][:copy]
    @advertisment.price = params[:advertisement][:price]

    if @advertisement.save
      flash[:notice] = "Advertisement was updated."
      redirect_to @advertisement
    else
      flash[:error] = "Error saving advertisement. Please try again."
      render :new
    end
  end
end
