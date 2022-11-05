
# The Student Fundraising App

The Student Fundraising app is a simple single page application which was built on the front end using REACT. There are many improvements which will added as time goes by. This app is designed to be paired with the sinatra/Active Record backend found here: [Backend Repo](https://github.com/jerryfitzner/phase-3-sinatra-react-project) 

## Requirements 

- Fork and clone the git hub repository for both the front, and back end.
  - [Front End](https://github.com/jerryfitzner/phase-3-project-frontend)
  - [Back End](https://github.com/jerryfitzner/phase-3-sinatra-react-project)

## Installation Insctructions

- Fork and clone the git hub repository, if you have not done so yet.
- Open the Back End first:
  - Open the terminal and run `bundle install` to install the gems. 
  - Next run `bundle exec rake db:seed` to seed the database with data. 
  - Lastly, run `bundle exec rake server` to start the API server.
- Open the Front End next:
  - Open the REACT App by typing `NPM Start` or `NPM Yarn` in the terminal.
- The app should now be live in your browser!

## Using the Student Fundraising App

This single page application displays a list of students who might be attending a trip in the future. 

### 1) Student Form

- At the top of the page, there is a form a user can use to submit a students name. This will add the students name to the list below. This is done in alphabetical order, by their first name.  

### 2) Each Student

- Each student has many donors. Each students donors can be found by clicking on the, "Donate Now" button next to their name. 

### 3) Each Students Donors

- After clicking the, "Donate Now" button, the students donors appear below their name. If there are no donors for the student, none will be listed.

### 4) Adding a Donor

- After clicking the, "Donate Now" button, a form appears where a new donors name and donation amount can be entered. This will add the donor below the student. 

### 5) Each Donor

- Each donor below a student can be updated in the following ways:
  - Delete
    - By clicking on the red button with an, "X" in the middle, a donor is permanently deleted. 
  - Donation Recieved
    - In order to track whether a donation has been recieved, a user can click on the, "Yes/No" to track whether or not a donation was recieved. 
    - This is updated in the database, so data is never lost between users or sessions. 
