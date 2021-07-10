class Tweet < ApplicationRecord
    
    scope :mayores, ->(min) { where('created_at > ?', min) }
end
