class UsersController < ApplicationController
  # usersのコントローラーを生成
  
  #userモデルからuserの情報を全てとってくる、そして@userっていう変数に渡す
  def index
    @users = User.all
  end

# idに応じたuserをとってきて@userという変数に
  def show
    @user = User.find(params[:id])
  end

  def edit
  end
end
