class Agreec < ActiveRecord::Base
    belongs_to :comment
    has_many :users
end
