require_relative '../../config/application'

class Todo < ActiveRecord::Base
  validates_presence_of :task, message: "No Blank Task"
  validates_uniqueness_of :task, message: 'Task Already Exist'

  
 end
