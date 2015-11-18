class Comment < ActiveRecord::Base
    belongs_to :blog
    belongs_to :user
    has_many :agreecs
end
