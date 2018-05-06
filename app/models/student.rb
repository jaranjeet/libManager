class Student < ApplicationRecord
	has_many :borrowings, dependent: :destroy
end
