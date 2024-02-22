require_relative 'todolist'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo_list.add("Do SA9")
      expect(todo_list.todos).to include("Do SA9")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo_list.add("Do SA9")
      todo_list.remove("Do SA9")
      expect(todo_list.todos).not_to include ("Do SA9")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todo_list.add("Do SA9")
      todo_list.add("Study for midterm")
      expect(todo_list.todos).to eq(["Do SA9", "Study for midterm"])
    end
  end
end
