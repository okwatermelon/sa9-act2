require 'prob2'
RSpec.describe TodoList do
    describe "#add" do
      it "adds a todo to the list" do
        list = TodoList.new
        list.add('milk')
        expect(list.todos).to include('milk')
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        list = TodoList.new
        list.add('milk')
        list.remove('milk')
        expect(list.todos).not_to include('milk')
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        list = TodoList.new
        list.add('milk')
        list.add('cereal')
        expect(list.todos).to eq(['milk', 'cereal'])
      end
    end
  end