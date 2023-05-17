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

  post '/muscle_groups' do
    muscle_group = MuscleGroup.create(
      name: params[:name],
      image_url: params[:image_url]
    )
    muscle_group.to_json
  end

  post '/exercises' do 
    exercise = Exercise.create(
      name: params[:name],
      image_url: params[:image_url],
      how_to_do: params[:how_to_do],
      muscle_group_id: params[:muscle_group_id]
    )
    exercise.to_json
  end

  post '/stretches' do 
    stretch = Stretch.create(
      name: params[:name],
      image_url: params[:image_url],
      how_to_do: params[:how_to_do],
      muscle_group_id: params[:muscle_group_id]
    )
    stretch.to_json
  end

end
