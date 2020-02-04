class Employee < ActiveRecord::Base
    validates :employeename, presence: { message: 'Please Enter Employee Name'} , length: {minimum:5, maximum: 20,message:'Employee Name Must be between 5-20'}
    validates :designation, presence: { message: 'Please Enter Designation'}, length: {minimum:2, maximum: 10,message:'Designation Must be between 5-10'}
    validates :phone, presence: { message: 'Please enter Phone'}, numericality: { only_integer: true,message:'Phone Must be Integer' },length: {is: 5,message:'Phone Must be of length 5'}
end