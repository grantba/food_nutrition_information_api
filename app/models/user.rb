class User < ApplicationRecord
    has_secure_password
    has_many :favorites
    has_many :meals
    has_many :foods, through: :favorites
    has_many :foods, through: :meals

    validates :username, presence: {message: "You must provide a username to sign up for an account."}
    validates :username, uniqueness: {message: "Username must be unique. Unfortunately, someone has already taken that username. Please choose another one."}
    validates :username, length: {minimum: 6, message: "Username must be at least 6 characters in length."}
end
