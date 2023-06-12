class Friend < ApplicationRecord
    validates :first_name, :last_name, :email, presence: :true
    has_many :exps
end
