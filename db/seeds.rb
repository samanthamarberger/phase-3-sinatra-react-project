puts "🌱 Seeding data..."

# Seed your database here
# exercise_names = ["Push-ups", "Squats", "Lunges", "Sit-ups", "Planks", "Deadlifts", 
# "Bicep Curls", "Tricep Extensions", "Pull-ups", "Jumping Jacks"]

# stretch_names = ["Hamstring stretch", "Quad stretch", "Hip flexor stretch", 
# "Calf stretch", "Shoulder stretch", "Tricep stretch", "Chest stretch", 
# "Upper back stretch", "Lower back stretch", "Neck stretch"]

MuscleGroup.create(name: "Chest" image_url: "https://tse2.explicit.bing.net/th?id=OIP.AbmihbPCdJ0idR3O1OJXvgHaD4&pid=Api&P=0&h=180")
MuscleGroup.create(name: "Back" image_url: "https://tse1.mm.bing.net/th?id=OIP.m8R-0lIx3c2q1r4554eHxwHaD4&pid=Api&P=0&h=180")
MuscleGroup.create(name: "Legs" image_url: "https://tse3.mm.bing.net/th?id=OIP.CCaTj7B5HI0e7pIotjn4PAHaE7&pid=Api&P=0&h=180")
## EXERCISES
# CHEST
Exercise.create(name: "Bench Press" image_url: "https://tse3.mm.bing.net/th?id=OIP.0WyI-mGblY26GtmTnt4xQQHaEG&pid=Api&P=0&h=180"
 how_to_do: "Lie flat on your back.  Grip the bar with your hands shoulder-width apart. Lower the bar to lightly touch your chest, then press the bar back up until your arms are straight."
 muscle_group_id: muscle_group.id)
Exercise.create(name: "Pushup" image_url: "https://tse2.explicit.bing.net/th?id=OIP.5X_J3UjSdlfaDuEJGtayGAHaE8&pid=Api&P=0&h=180" 
how_to_do: "Position your feet close together and your arms shoulder with apart and fully extended. Slowly lower yourself until your arms reach 90 degrees.  Press back up until you are in the starting position"
muscle_group_id: muscle_group.id)

# BACK
Exercise.create(name: "Pull-up" image_url: "https://tse4.mm.bing.net/th?id=OIP.3fI1p5ikgmNfCWjyMGPpAwHaHa&pid=Api&P=0&h=180" 
how_to_do: "Start hanging from the bar with your arms shoulder width apart.  Pull your body upward until your chin is over the bar.  Lower yourself back down to the starting position."
muscle_group_id: muscle_group.id)
Exercise.create(name: "Dumbbell Row" image_url: "https://hips.hearstapps.com/hmg-prod/images/form-check-index-1591205064.png?crop=0.6666666666666666xw:1xh;center,top&resize=1200:*" 
how_to_do: "Lean over the bench with your back at a 90 degree angle, with one arm, pull the dumbell upwards until it is flush with your back.  Lower back to the starting position."
muscle_group_id: muscle_group.id)

# LEGS
Exercise.create(name: "Back Squat" image_url: "https://julielohre.com/wp-content/uploads/2017/11/Barbell-Back-Squat.jpg" 
how_to_do: "Hold the barbell on your shoulders.  Keeping your back straight, squat down until the angel of your legs reaches 90 degrees or greater. Press up until you reach starting position."
muscle_group_id: muscle_group.id)
Exercise.create(name: "Calf Raise" image_url: "https://i0.wp.com/bootcampmilitaryfitnessinstitute.com/wp-content/uploads/2018/02/Exercise-Calf-Raises-1.jpg?ssl=1" 
how_to_do: "Start with your feet flat on the ground.  Raise up on your toes as far as you can, squeezing the muscles in your calves.  Return to starting position."
muscle_group_id: muscle_group.id)

## STRETCHES
# CHEST
Stretch.create(name: "Chest Wall Stretch" image_url "https://s3assets.skimble.com/assets/3904/skimble-workout-trainer-exercise-chest-stretch-pectoralis-2_iphone.jpg" 
how_to_do: "Stand with one arm flush against the wall and lean away toward the opposite shoulder until you feel a good stretch."
muscle_group_id: muscle_group.id)
Stretch.create(name: "Chest Extension Stretch" image_url "https://insyncphysio.com/wp-content/uploads/2018/10/Behind-Back-Neck-Stretch.jpg" 
how_to_do: "Grab both hands behind your back and lift upward as far as you can to feel a good stretch."
muscle_group_id: muscle_group.id)

# BACK
Stretch.create(name: "" image_url "" how_to_do: "" muscle_group_id: muscle_group.id)
Stretch.create(name: "" image_url "" how_to_do: "" muscle_group_id: muscle_group.id)

# LEGS
Stretch.create(name: "" image_url "" how_to_do: "")
Stretch.create(name: "" image_url "" how_to_do: "")

puts "✅ Done seeding!"
