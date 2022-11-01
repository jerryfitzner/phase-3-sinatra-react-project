class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    students = Student.all.order(:first_name)
    students.to_json(include: [:donors])
  end

  post "/students" do
    student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age]
    )
    student.to_json
  end

  # get "/donors" do
  #   donors = Donor.all
  #   donors.to_json(include: [:student])
  # end

end
