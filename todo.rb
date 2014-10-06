require 'csv'
require 'securerandom'

class Todo
  attr_reader :description, :id

  def initialize(options)
    @description = options.fetch(:description)
    @id = options.fetch(:id, SecureRandom.hex(3))
  end

  def to_s
    "id: #{id}, description: #{description}"
  end

  def to_a
    [id, description]
  end
end

class TodoList
  def initialize(storage: storage)
    @todos = []
    @storage = storage
  end

  def add(item)
    todos << item
  end

  def delete id: id
    todos.delete_if { |item| item.id == id }
  end

  def single_item id: id
    todos.find { |item| item.id == id }
  end

  def to_s
    todos.map(&:to_s).join("\n")
  end

  def save
    @storage.save todos
  end

  def load_from_file
    self.todos = @storage.load_from_file
  end

  private
  attr_accessor :todos
end

class Persistence
  OPTIONS = { headers: true, header_converters: :symbol }

  def initialize filename
    @filename = filename
  end

  def load_from_file
    CSV.read(filename, OPTIONS).map { |row| Todo.new row }
  end

  def save todos
    CSV.open(filename, "w") do |csv|
      csv << ["id","description"]
      todos.each { |todo| csv << todo.to_a }
    end
  end

  private
  attr_reader :filename
end


todo_list = TodoList.new(storage: Persistence.new("other.csv"))

todo_list.load_from_file

todo_list.add(Todo.new(description: "some cool description"))
todo_list.delete(id: "4")
puts
puts todo_list.single_item(id: "7")
puts
puts todo_list


todo_list.save
