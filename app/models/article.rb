class Article < ActiveRecord::Base
    has_many :comments, :dependent => :destroy
    validates :title, presence: {message: "タイトルがありません。"}
    validates :title, length: {maximum: 20,message: "タイトルはは20字以下にしてください。"}
    validates :text, presence: {message: "本文がありません。"}    
end
