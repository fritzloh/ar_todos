require 'faker'


15.times do
  Todo.create(task: Faker::Lorem.sentence)
end
