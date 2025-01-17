class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #Muscle Group Index route
  get '/muscle_groups' do
    muscle_groups = MuscleGroup.all 
    muscle_groups.to_json(include: :exercises)
  end

  #Muscle Group show route
  get '/muscle_groups/:id' do
    muscle_group = MuscleGroup.find_by(id: params[:id])
    if muscle_group
      muscle_group.to_json(include: :exercises) 
    else
      "404 - Muscle Group not found"
    end
  end

  get '/exercises' do
    exercises = Exercise.all
    exercises.to_json
  end

  get '/stretches' do
    stretches = Stretch.all
    stretches.to_json
  end

  #POST 
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

  #PATCH

  patch '/exercises/:id' do
    exercise = Exercise.find(params[:id])
    exercise.update(
      how_to_do: params[:how_to_do] || exercise.how_to_do
    )
    exercise.to_json
  end

  patch '/stretches/:id' do
    @stretch = Stretch.find(params[:id])
    @stretch.update(
      how_to_do: params[:how_to_do] || stretch.how_to_do
    )
    stretch.to_json
  end

  #DELETE
  delete '/muscle_groups/:id' do
    muscle_group = MuscleGroup.find_by(id: params[:id])
    @muscle_group.destroy 
    muscle_group.to_json
  end

  delete '/exercises/:id' do
    exercise = Exercise.find(params[:id])
    exercise.destroy
    exercise.to_json
  end

  delete '/stretches/:id' do
    stretch = Stretch.find(params[:id])
    stretch.destroy
    stretch.to_json
  end

  get '/exercises/:keyword' do
      exercises = Exercise.all.select do |exercise| 
        exercise.how_to_do.include?(params[:keyword])
      end
      exercises.to_json
  end
  
end



# Search through the how to dos for the exercises and look for 
# keyword and then makes an array of those exercises 



