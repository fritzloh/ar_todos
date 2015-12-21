require_relative '../models/todo'


class TodoController

   def self.list
	Todo.all.each {|x| p x}
   end


   def self.add(sentence)
   	adding = Todo.create(task: sentence)
   	 if adding.valid?
       p "Appended #{sentence} to your TODO list..."
     else
       p "ERROR, You Did Not Add Any Task!!"
     end
   end


   def self.delete(id)
    Todo.delete(id)
    if id == nil
       p "Error: Invalid id given!"
    else
   	   p "You have deleted task #{id}"
   	end
   	Todo.reset_pk_sequence
   end


   def self.complete(id)
   	Todo.update(id, :completed => true)
   end



end
#TodoController.delete(10)
#TodoController.add("add list")
#TodoController.list
#TodoController.complete(1)


