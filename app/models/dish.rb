class Dish < ActiveRecord::Base
    belongs_to :restaurant
    has_many :dish_tags
    has_many :tags, through: :dish_tags

    validates :name, presence: true
    validates :restaurant, presence: true

    validate :unique_tags

    def unique_tags
        if self.tags != self.tags.uniq
            errors.add(:tags, "tags must all be unique")
        end
    end
    
end