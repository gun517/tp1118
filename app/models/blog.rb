class Blog < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    has_many :agrees
end
