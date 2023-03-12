class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :profile_image # ここを追加（_idは含めない）
  has_many :recipes, dependent: :destroy
  # ユーザーが削除されたらrecipeを
end
