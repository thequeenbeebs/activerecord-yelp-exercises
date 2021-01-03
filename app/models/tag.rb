class Tag < ActiveRecord::Base
    has_many :dish_tags
    has_many :dishes, through: :dish_tags

    validates :name, presence: true
    validates :name, length: {minimum: 3}

    validate :word_count

    def word_count
        if self.name.present? && self.name.split(" ").length > 2
            errors.add(:name, "must be no more than 2 words long")
        end
    end
end