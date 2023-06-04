class Student < ApplicationRecord
    has_many :blogs
    validates :first_name, :last_name, :email, presence: :true
end
