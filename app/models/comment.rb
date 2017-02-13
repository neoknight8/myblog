class Comment < ActiveRecord::Base
  belongs_to :article_params
  validates :title,:text, presence:true
end
