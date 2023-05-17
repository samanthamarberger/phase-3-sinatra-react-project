class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    "Hello World"
  end

  get "/muscle_groups" do
    muscle_groups = MuscleGroup.all 
    muscle_groups.to_json
  end


end
