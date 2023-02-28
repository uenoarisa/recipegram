class UsersController < ApplicationController
  # usersのコントローラーを生成
  
  #userモデルからuserの情報を全てとってくる、そして@userっていう変数に渡す
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end
end
