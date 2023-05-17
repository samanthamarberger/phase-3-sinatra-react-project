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
Stretch.create(name: "Cat, Cow" image_url "data:image/png;base64,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"
 how_to_do: "While on hands and knees go between arching and inverting spine to stretch back" 
 muscle_group_id: muscle_group.id)
Stretch.create(name: "Cobra" image_url "data:image/jpeg;base64,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" 
how_to_do: "While lying on stomach, prop yourself up with your hands and push up" 
muscle_group_id: muscle_group.id)

# LEGS
Stretch.create(name: "Deep lunge" image_url "data:image/jpeg;base64,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" 
how_to_do: "One foot forward at a 90 degree angle and the other extended back with heel propped up" 
muscle_group_id: muscle_group.id)
Stretch.create(name: "Toe touch" image_url "data:image/jpeg;base64,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" 
how_to_do: "While sitting on the floor, extend feet in front of you and reach for feet" muscle_group_id: muscle_group.id)

puts "✅ Done seeding!"
