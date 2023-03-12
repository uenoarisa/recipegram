class Recipe < ApplicationRecord
  belongs_to :user
  # レシピは必ず一人のuserに属する
  attachment :image # ここを追加（_idは含めない）
end
