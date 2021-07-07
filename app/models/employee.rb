class Employee < ApplicationRecord
     belongs_to :company
     has_and_belongs_to_many :projects ,join_table: 'employees_projects'
     has_many :comments, as: :commentable 
     accepts_nested_attributes_for :comments
end
