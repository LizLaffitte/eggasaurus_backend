class User < ApplicationRecord
    has_many :dinos
    has_many :species, through: :dinos
    has_secure_password
    validates :email, uniqueness: true, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :username, uniqueness: true, length: {in: 3..20}, presence: true
end
