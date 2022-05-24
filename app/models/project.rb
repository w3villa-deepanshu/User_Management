class Project < ApplicationRecord
    # belongs_to :user

    has_many :user_management_systems
    has_many :users, through: :user_management_systems
end
