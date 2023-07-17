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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    # user_paramsは下で定義
    @user.update(user_params) 
    redirect_to user_path(@user)
  end
  
  # priveteにすることでこのuserコントローラのみで参照　これをすることでセキュリティが強くなる
  private
  def user_params
    # :user　モデル名　:username, :email, :profile, :prifile_image　カラム名　
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end
end
