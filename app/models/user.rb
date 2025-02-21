class User < ApplicationRecord
    has_many :bookings, dependent: :destroy
    before_save { self.email = email.downcase }
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: URI::MailTo::EMAIL_REGEXP },
                      uniqueness: true
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
