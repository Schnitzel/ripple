Feature: Protected content

   As authorized I want to be able to login to the site so I can view pages which are not for the general public

  Scenario: Login form renders correctly
    Given I visit the page "/login"
    Then there should be a login form with the title "Login"
    And there should be a form field with the label "Username"
    And there should be a form field with the label "Password"
    And there should be a submit button with the text "Submit"
    And there should be a login form button with the text "Register"
    And there should be a login form button with the text "Forgot password"

  Scenario: Login success
    Given there is a user in the system with the following credentials:
      | login     | password     | active | email                    |
      | testuser1 | Password-111 | true   | testuser1@mailinator.com |
    And I visit the page "/login"
    When I enter the the following login credentials:
      | login     | password     |
      | testuser1 | Password-111 |
    And I submit the login form
    Then the login status colour should should be "green"
    And the login status message should be "Login Successful."
    And the created user should be removed

  Scenario: Login failure
    Given I visit the page "/login"
    When I enter the the following login credentials:
      | login     | password   |
      | dummyuser | Pasword-21 |
    And I submit the login form
    Then the login status colour should should be "red"
    And the login status message should be "Login Failed. Please try again"

  Scenario: Accessing a protected content page when unauthenticated
    Given I have created a landing page with the json fixture "Pages/ProtectedContent/tc-pc1"
    When I have navigated to the created test page
    Then I should see a 404 page
    And the created page should be removed

  Scenario: Accessing a protected content page when authenticated
    Given I have created a landing page with the json fixture "Pages/ProtectedContent/tc-pc1"
    And there is a user in the system with the following credentials:
      | login     | password     | active | email                    | role   |
      | testuser2 | Password-222 | true   | testuser2@mailinator.com | Member |
    And I visit the page "/login"
    When I enter the the following login credentials:
      | login     | password     |
      | testuser2 | Password-222 |
    And I submit the login form
    Then I should be redirected to the page "/"
    Given I have navigated to the created test page
    Then the page title should be "protected content page"
    And the h1 should be "protected content page"
    And the created user should be removed
    And the created page should be removed

  @skip
  Scenario: Can still navigate after session is expired
    Given I have created a landing page with the json fixture "Pages/ProtectedContent/tc-pc1"
    And there is a user in the system with the following credentials:
      | login     | password     | active | email                    | role   |
      | testuser3 | Password-333 | true   | testuser3@mailinator.com | Member |
    And I visit the page "/login"
    When I enter the the following login credentials:
      | login     | password     |
      | testuser3 | Password-333 |
    And I submit the login form
    Then I should be redirected to the page "/"
    Given I have navigated to the created test page
    Then the page title should be "protected content page"
    And the h1 should be "protected content page"
    When I wait for 60 seconds
    Given I have navigated to the created test page
    Then the menu should have 2 top level items
    And the logout button should not be visible
    And the created user should be removed
    And the created page should be removed

  # Scenario: Login on a landing page with a login component
  #   Given I have configured authenticated content in the backend
  #   And I have created a landing page with the fixture "Pages/ProtectedContent/tc-pc2"
  #   When I have navigated to the created test page
  #   Then there should be a login form with the title "Login"
  #   And there should be a form field with the label "Username"
  #   And there should be a form field with the label "Password"
  #   And there should be a submit button with the text "Submit"
  #   And there should be a login form button with the text "Register"
  #   And there should be a login form button with the text "Forgot password"
