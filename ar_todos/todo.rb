require_relative 'config/application'
require_relative 'app/controllers/todo_controller'



  if ARGV.any?

    case ARGV[0]
      when "list"
        TodoController.list
      when "add"
        TodoController.add ARGV[1..-1].join(' ')
      when "delete"
        TodoController.delete ARGV[1].to_i
      when "complete"
      	TodoController.complete ARGV[1].to_i
    end

end
