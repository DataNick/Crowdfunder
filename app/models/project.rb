class Project < ActiveRecord::Base
	belongs_to :owner, class_name: "User"
	has_many :rewards

	validates :title, presence: true
	validates :goal, presence: true
	validates :start_date, presence: true
	validates :end_date, presence: true

end
