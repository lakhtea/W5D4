class User < ApplicationRecord
    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    has_many :enrolled_courses,
        through: :enrollments,
        source: :course

    validates :name, presence: true
end

# through -> source many->many relationship

#belongs_to -> has_many one->many relationship