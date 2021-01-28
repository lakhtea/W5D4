class Enrollment < ApplicationRecord
    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :course,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Course
        
    validates :user_id, uniqueness: { scope: :course_id }
end
