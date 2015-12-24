class CatsController < ApplicationController
  def index
    @cats = Cat.all 
  end

  def show
    @cat = Cat.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.clicks = @cat.clicks + 1
    @cat.save!
    respond_to do |format|
      format.html { redirect_to @cat }
      format.js
    end
  end
end
