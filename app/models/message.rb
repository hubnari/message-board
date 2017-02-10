class Message < ActiveRecord::Base
  validates :name , length: {maximum: 20} , presence: true
  validates :body , length: {minimum: 2 , maximum: 20 } , presence: true
end
