class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    #Bloggers should have unique names and ages above 0, and their bio should be over 30 characters long
    validates :name, uniqueness: true
    validates :age, length: {minimum: 0}
    validates :bio, length: {minimum: 30}
end
