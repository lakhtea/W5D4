class User < ApplicationRecord
    belongs_to :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    has_many :enrolled_courses,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    validates :name, presence: true, uniqueness: true
end
