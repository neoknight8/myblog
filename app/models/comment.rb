class Comment < ActiveRecord::Base
  belongs_to :article_params
  validates :title, presence: {message: "タイトルが入力されていません。"}
  validates :text, presence: {message: "本文が入力されていません。"}

end
