class User < ApplicationRecord
    has_many :events

    validates_presence_of :name, :email
    validates_uniqueness_of :email
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    before_validation { email.downcase! }
    has_secure_password

end
