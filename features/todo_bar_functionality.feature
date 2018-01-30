@TodoList
Feature: The todo list 

  @AddTodos
  Scenario Outline: A user can add several things to their todo to list
    Given The user is on the todo homepage
    When The user enters "<their_todo_item>" in the todo bar
    Then The "<todo_count>" will be correct

  Examples:
  | their_todo_item                                           | todo_count   |
  | Buy eggs and cheese                                       | 1 item left  |
  | Become a test automator                                   | 2 items left |
  | Find out Eminems real name                                | 3 items left |
  | Accidentally get in someones way then apologise profusely | 4 items left | 

  @FlyYouFools
  Scenario: YOU SHALL NOT PASS
    Given The user is on the todo homepage
    Then the user can find Gandalf 

  @removeTodos
  Scenario: I can remove a todo from the list
    Given The user is on the todo homepage
    When The user completes the Buy eggs and cheese to do
    Then The Todo count will be 3 items left