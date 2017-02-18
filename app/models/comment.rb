class Comment < ActiveRecord::Base
  belongs_to :article_params
  validates :title, presence: true
  validates :text, presence: true

end
