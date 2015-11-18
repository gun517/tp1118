class Agree < ActiveRecord::Base
    belongs_to :blog
    has_many :users
end
