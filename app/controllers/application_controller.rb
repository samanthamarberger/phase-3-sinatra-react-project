class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    "Hello World"
  end

  get '/muscle_groups' do
    muscle_groups = MuscleGroup.all 
    muscle_groups.to_json
  end

  get '/muscle_groups/:id' do
    muscle_group = MuscleGroup.find(params[:id])
    muscle_group.to_json
  end

  get '/exercises' do
    exercises = Exercise.all
    exercises.to_json
  end

  get '/stretches' do
    stretches = Stretch.all
    stretches.to_json
  end

end
