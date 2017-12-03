class Project < ApplicationRecord
  belongs_to :department, dependent: :destroy
  has_many :employees
end
