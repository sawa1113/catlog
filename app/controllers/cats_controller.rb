class CatsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
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
    @cat = current_user.cats.build(cat_params)
    if @cat.save
      redirect_to cat_path(@cat), notice: "投稿に成功しました。"
    else
      render :new
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    if @cat.user != current_user
      redirect_to cats_path, alert: "不正なアクセスです。"
    end
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to cat_path(@cat), notice: 'データを更新しました。'
    else
      render :edit
    end
  end

  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    redirect_to cats_path(@cat), notice: 'データを削除しました。'
  end

  private

  def cat_params
    params.require(:cat).permit(:catname, :appeal_point, :image_id)
  end
end
