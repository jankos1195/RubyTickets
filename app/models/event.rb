class Event < ApplicationRecord
    validates :artist, :presence => true
    validates :description, :presence => true
    validates :price_low, :presence => true,
            :numericality => {:greater_than => 0}
    validates :price_high, :presence => true,
            :numericality => {:greater_than => 0}
    validates :event_date, :presence => true
    validate :event_date_not_from_past

    has_many :tickets

    def event_date_not_from_past
        if event_date < Date.today
            errors.add('Data wydarzenia', 'nie może być z przeszłości')
            return false
        end
        return true
      end

end