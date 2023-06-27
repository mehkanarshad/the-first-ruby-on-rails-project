class Friend < ApplicationRecord
    validates :first_name, :last_name, :email, presence: :true
    belongs_to :user
end
