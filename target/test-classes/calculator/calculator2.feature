Feature: Integer Arithmetic Expressions
  Background:
    Given I initialise a calculator

  Scenario Outline: Evaluating arithmetic operations with two integer parameters
    Given an integer operation <op>
    When I provide a first number <n1>
    And I provide a second number <n2>
    Then its INFIX notation is <infix>
    And its POSTFIX notation is <postfix>
    And its PREFIX notation is <prefix>
    And the operation evaluates to <result>



    Examples:
    |op|n1|n2|infix|postfix|prefix|result|
    | "+" | 8 |  6|   ( 8 + 6 )  | (8, 6) +    |   + (8, 6)  |14|
    | "-" | 8 |  6|   ( 8 - 6 )  | (8, 6) -    |   - (8, 6)  |2 |
    | "*" | 8 |  6|   ( 8 * 6 )  | (8, 6) *    |   * (8, 6)  |48|
    | "/" | 8 |  6|   ( 8 / 6 )  | (8, 6) /    |   / (8, 6)  |1|



