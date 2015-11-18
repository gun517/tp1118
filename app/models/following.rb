class Following < ActiveRecord::Base
    has_many :users
end
