$(document).on 'ready page:load', ->
  CountryStateSelect({ 
  	chosen_ui: false, 
  	country_id: "company_country_field", 
  	state_id: "company_state_field", 
  	city_id: "company_city_field", 
  	city_place_holder: "Please select city", 
  	state_place_holder: 'Please select state' 
  })