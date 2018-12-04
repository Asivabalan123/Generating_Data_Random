# generating_data_random
https://github.com/stympy/faker

This project generated random data for an application form using the faker gem.

This gem is a port of Perl's Data::Faker library that generates fake data. This is a gem that is pre-installed with Ruby, and require 'faker' is stated at the beginning of the ruby file.
HTTParty gem was also required to be able to make the get request to get information from the API i.e postcode.

JSON gem was required as JSON data was parsed with JSON GEM into a hash, and then extracted the relevant information.

Some data that was returned was not guaranteed to be unique by default.

To generate random data for postcode we used a postcode API called 'api.postcodes.io' and parsed the JSON file to randomly select a postcode.
