class Event < ApplicationRecord
    validates :price_low, :presence => true,
            :numericality => {:greater_than => 0}
    validates :price_high, :presence => true,
            :numericality => {:greater_than => 0}
end