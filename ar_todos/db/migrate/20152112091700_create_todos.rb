require_relative '../../config/application'

class CreateTodos < ActiveRecord::Migration

	def change
		create_table :todos do |t|

			t.string :task
			t.boolean :completed, default: false
			t.timestamps null: false
		end
	end
end