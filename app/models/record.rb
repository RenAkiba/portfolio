class Record < ApplicationRecord
    validates :dish, presence: true
    validates :calorie, presence: true
end
