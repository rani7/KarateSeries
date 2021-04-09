Feature: Country list api
Background:
   * url 'https://restcountries.eu'
   * header Content-Type = 'application/json'
Scenario: get country list
Given path '/rest/v2/'
When method get
Then status 200