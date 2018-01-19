Given("The user is on the todo homepage") do
  @homepage = Todowebsite.new
  @homepage.todo_homepage.load
  @homepage.todo_homepage.displayed?
  @homepage.todo_homepage.assertHomepage
end

When("The user enters {string} in the todo bar") do |list_item|
  @homepage.todo_homepage.enterListItem(list_item)
end

Then("the user can find Gandalf") do
  @homepage.todo_homepage.findGandalf
end

Then("The {string} will be correct") do |todo_count|
  @homepage.todo_homepage.assertTodoCount(todo_count)
end

When("The user completes the Buy eggs and cheese to do") do
  @homepage.todo_homepage.completeTodo("Buy eggs and cheese")
end

Then("The Todo count will be 3 items left") do
  @homepage.todo_homepage.assertTodoCount("3 items left")
end