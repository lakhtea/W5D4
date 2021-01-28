class Course < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :course_id,
        class_name: :Enrollment

    has_many :enrolled_students,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :User

    has_many :prequisites,
        primary_key: :id,
        foreign_key: :prereq_id,
        class_name: :Course

    has_one :instructor,
        primary_key: :id,
        foreign_key: :instructor_id,
        class_name: :User

    validates :prereq_id, uniqueness: true
end
