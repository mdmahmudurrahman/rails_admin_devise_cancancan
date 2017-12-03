class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :project, optional: true, dependent: :destroy
  belongs_to :company, optional: true, dependent: :destroy
  belongs_to :department, optional: true, dependent: :destroy
end
