class Article < ActiveRecord::Base
    has_many :comments, :dependent => :destroy
    validates :title, presence: true
    validates :title, length: {maximum: 20}
    validates :text, presence: true    
end
