class Department < ApplicationRecord
  belongs_to :company
  has_many :employees
  has_many :projects
end