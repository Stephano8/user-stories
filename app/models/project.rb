class Project < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :stories, dependent: :destroy
  accepts_nested_attributes_for :users
end
