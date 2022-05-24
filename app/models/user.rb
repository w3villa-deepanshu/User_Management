class User < ApplicationRecord
    has_many :user_management_systems, dependent: :delete_all
    has_many :projects, through: :user_management_systems
    
end
