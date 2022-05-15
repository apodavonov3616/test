class Goal < ApplicationRecord

    validates :name, presence: true
    validates :details, presence: true
    validates :status, inclusion: [true, false]

    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User
end
