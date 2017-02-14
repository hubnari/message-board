class Message < ActiveRecord::Base
<<<<<<< HEAD
  validates :name , length: {maximum: 20}, presence: true
  validates :body , length: {minimum: 2 , maximum: 20} , presence: true
=======
  validates :name , length: {maximum: 20}, presence: true
  validates :body , length: {minimum: 2 , maximum: 20} , presence: true
>>>>>>> challenge1
end
