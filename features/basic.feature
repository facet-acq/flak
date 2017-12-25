Feature: the application has a health check

    Scenario: respond that it is working
        Given the application is running
        When we call the health check
        Then the status code will be 200
