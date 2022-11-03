require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    students = Student.all.order(:first_name)
    students.to_json(include: [:donors])
  end

  get "/donors" do
    donors = Donor.all
    donors.to_json(include: [:student])
  end

  post "/students" do
    student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age]
    )
    student.to_json
  end

  post "/donors" do 
    donor = Donor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      donation: params[:donation],
      donation_received: params[:donation_received],
      student_id: params[:student_id]
    )
    donor.to_json
  end

  patch "/donors/:id" do
    donor = Donor.find(params[:id])
    donor.update(
      donation_received: params[:donation_received]
    )
    donor.to_json
  end

  delete "/donors/:id" do
    donor = Donor.find(params[:id])
    donor.destroy
    donor.to_json
  end

  

end
