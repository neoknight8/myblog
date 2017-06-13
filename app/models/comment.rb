class Comment < ActiveRecord::Base
  belongs_to :article
  validates :title, presence: true
  validates :text, presence: true

end
