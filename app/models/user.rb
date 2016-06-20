class User < ActiveRecord::Base
  belongs_to :project
  has_many :cards
  has_many :stories, through: :cards
  validates :name, presence: true
end
