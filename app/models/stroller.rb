class Stroller < ApplicationRecord
    has_many :reviews

    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end

    def average_score
        reviews.average(:score).round(2).to_f 
        # gets the average score based on star reviews
    end
end
