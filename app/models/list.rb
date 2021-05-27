class List < ApplicationRecord
has_many :bookmark
has_many :movies, through: :bookmarks, dependent: :destroy
validates :name, prensence: true, uniqueness: true
end
