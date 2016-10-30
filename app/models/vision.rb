class Vision < ActiveRecord::Base
    belongs_to :user
    
    STYLES= %w[olivia earn solange jesse]
end
