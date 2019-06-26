class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    cat = Cat.create!(cat_params)
    redirect_to cat, notice: t('.created')
  rescue StandardError => e
    redirect_to new_cat_path, alert: t('.not_created')
  end

  def show
    @cat = Cat.find(params.require(:id))
  end

  def destroy
    cat = Cat.find(params.require(:id))
    cat.destroy!
    redirect_to cats_path, notice: t('.destroyed')
  end

  private
    def cat_params
      params.require(:cat).permit(:image)
    end
end
