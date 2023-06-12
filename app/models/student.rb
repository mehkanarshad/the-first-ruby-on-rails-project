class Student < ApplicationRecord
    has_many :blogs , dependent: :destroy
    validates :first_name, :last_name, :email, presence: :true
end
