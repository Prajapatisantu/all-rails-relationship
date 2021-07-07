class Project < ApplicationRecord
    has_and_belongs_to_many :employees ,join_table: 'employees_projects'
    has_many :comments, as: :commentable
    accepts_nested_attributes_for :comments

end
