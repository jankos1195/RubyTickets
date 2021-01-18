class Ticket < ApplicationRecord
    validates :name, :presence => true,
            :length => { :minimum => 4 }
    validates :email_address, :presence => true,
            email: true
    validates :price, :presence => true,
            :numericality => {:greater_than => 0}

    belongs_to :event
end
