class Story < ActiveRecord::Base
  belongs_to :project
  has_many :cards, dependent: :destroy
  has_many :users, through: :cards, dependent: :destroy
end
