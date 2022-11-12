class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.save
    redirect_to cat_path(@cat), notice: '投稿に成功しました。'
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])
    @cat.update(cat_params)
    redirect_to cat_path(@cat), notice: '更新に成功しました。'
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    redirect_to cats_path(@cat)
  end

  private

  def cat_params
    params.require(:cat).permit(:catname, :appeal_point, :image_id)
  end
end
