class Project < ApplicationRecord
  has_many :person_projects
  has_many :people, through: :person_projects
end
