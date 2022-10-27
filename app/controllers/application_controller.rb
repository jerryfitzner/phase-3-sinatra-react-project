class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    students = Student.all
    students.to_json(include: [:donors])
  end

  get "/donors" do
    donors = Donor.all
    donors.to_json(include: [:student])
  end

end
