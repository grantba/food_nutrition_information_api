class User < ApplicationRecord
    has_secure_password
    has_many :favorites, dependent: :destroy
    has_many :meals, dependent: :destroy

    validates :username, :email, presence: {message: "You must provide a username and email to sign up for an account."}
    validates :username, uniqueness: {message: "Username must be unique. Unfortunately, someone has already taken that username. Please choose another one."}
    validates :username, length: {minimum: 6, message: "Username must be at least 6 characters in length."}
    validates :email, uniqueness: {message: "Email must be unique. That email already exists."}
    validates :email, format: {with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i, message: "You must provide a valid email address, for example, user@email.com."}
end
