class Micropost < ApplicationRecord
  belongs_to :user
  
  # 最大１４０文字（１４１文字以上の場合はエラー）
  # presence: true -> 値が存在しているかどうかを確認
  validates :content, length: { maximum: 140 }, presence: true
end
