class CategoryMicropost < ApplicationRecord
    belongs_to :category
    belongs_to :micropost
    belongs_to :category, counter_cache: :microposts_count
end
