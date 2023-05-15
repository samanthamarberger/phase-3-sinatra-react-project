puts "🌱 Seeding data..."

# Seed your database here
exercise_names = ["Push-ups", "Squats", "Lunges", "Sit-ups", "Planks", "Deadlifts", 
"Bicep Curls", "Tricep Extensions", "Pull-ups", "Jumping Jacks"]

stretch_names = ["Hamstring stretch", "Quad stretch", "Hip flexor stretch", 
"Calf stretch", "Shoulder stretch", "Tricep stretch", "Chest stretch", 
"Upper back stretch", "Lower back stretch", "Neck stretch"]

MuscleGroup.create(name: "Chest")
MuscleGroup.create(name: "Back")
MuscleGroup.create(name: "Biceps")
MuscleGroup.create(name: "Tricpes")
MuscleGroup.create(name: "Shoulders")
MuscleGroup.create(name: "Abs")
MuscleGroup.create(name: "Glutes")
MuscleGroup.create(name: "Hamstrings")
MuscleGroup.create(name: "Quads")
MuscleGroup.create(name: "Calves")

puts "✅ Done seeding!"
