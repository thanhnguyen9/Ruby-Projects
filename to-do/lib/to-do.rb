# Follow along the example of creating a To Do list program.
# Extend it so that a user can mark a task as done and have it removed from their list.
# Allow users to have multiple lists. You should have two models now: Task and List;
# each should go in its own file. List should have an instance variable called tasks whose value is
# an array containing all of the tasks in that list.
# You'll need to make a method to add a task to a list that takes a task as an argument.
# Here's a couple specs to get you started:

# describe(List) do
#   it("starts out with an empty list of tasks") do
#     test_list = List.new("School stuff")
#     test_list.tasks.should eq []
#   end

#   it("can add tasks") do
#     test_list = List.new("School stuff")
#     test_task = Task.new("Learn Ruby")
#     test_list.add_task(test_task)
#     test_list.tasks.should eq [test_task]
#   end
# end

class Task
	
	attr_accessor :discription

	def initialize(discription)
		@discription = discription
	end

end

class List

	attr_accessor :name, :tasks

	def initialize(name)
		@name = name
		@tasks = []
	end

	def add_tasks
		
	end
end

class User

	attr_accessor :name, :tasks

	def initialize(name)
		@name = name
		@tasks = []
	end

	def add_task
		p "Enter a description of the new task:"
		user = gets.chomp
		@tasks << Task.new(user)
		p "Task just added"
	end

	def list
		p "Here are all of your tasks: "

		@tasks.each do |task|
			p task.discription
		end
	end
end



