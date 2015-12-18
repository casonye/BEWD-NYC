class Student < ActiveRecord::Base
	belongs_to :course
	has_one :instructor, through: :course

	validates :grade, presence: true
end
