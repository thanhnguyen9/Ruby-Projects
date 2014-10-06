require "rspec"
require "to-do"

describe Task do
    it "should display description" do
        task = Task.new("Learn Ruby")
        task.discription.should == "Learn Ruby"
    end

end

describe(List) do
  it("starts out with an empty list of tasks") do
    test_list = List.new("School stuff")
    test_list.tasks.should eq []
  end

  it("can add tasks") do
    test_list = List.new("School stuff")
    test_task = Task.new("Learn Ruby")
    test_list.add_task(test_task)
    test_list.tasks.should eq [test_task]
  end
end