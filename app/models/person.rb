class Person < ApplicationRecord
  has_many :person_projects
  has_many :projects, through: :person_projects
end
