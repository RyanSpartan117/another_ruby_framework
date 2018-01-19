class Todohomepage < SitePrism::Page 
  set_url "http://todomvc.com/examples/angularjs/#/" 
  set_url_matcher /todomvc/ #Regex url matcher to check the page is displayed

  def assertHomepage #Assertions for the corresponding page within the corresponding page object class
    expect(page.title).to include("TodoMVC")
  end

  def enterListItem(list_item)
    todoBar = find('#new-todo')
    todoBar.set(list_item)
    todoBar.send_keys(:enter)
  end

  def assertTodoCount(todo_count)
    todoCount = find('#todo-count')
    expect(todoCount.text).to eql(todo_count)
  end

  def completeTodo(todo_to_complete)
    todo = find('.ng-binding', text: todo_to_complete)
    todoView = findParentNode(todo)
    checkbox = todoView.find('input[type="checkbox"]')
    checkbox.click
  end

  def findGandalf #made to fail
    find('.gandalf')
  end
end