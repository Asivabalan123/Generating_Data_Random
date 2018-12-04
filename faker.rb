require 'faker'
require 'json'
require 'httparty'
require 'rspec'


class Generator
  include HTTParty

  base_uri 'api.postcodes.io'

  def name
    @first_name = Faker::Name.name
  end

  def capital_name
    @first_name.start_with? /[A-Z]/
  end

  def address_user
    @address = Faker::Address.street_address
  end

  def postcode_user
    JSON.parse(self.class.get("/random/postcodes/").body)['result']['postcode']
  end

  def gender_user
    @gender = Faker::Gender.binary_type
  end

  def job_title
    @job = Faker::Job.title
  end

  def nationality_user
    @nationality = Faker::Nation.nationality
  end

  def date_of_birth_user
    @date_of_birth  = Faker::Date.birthday
  end

  def age
    Date.today.year - date_of_birth_user.year
  end

  def phone_number_user
    Faker::Config.locale = 'en-GB'
    @phone_number = Faker::PhoneNumber.phone_number
  end

  def university_user
    @university = Faker::University.name
  end

  def programming_language_user
    @programming_language = Faker::ProgrammingLanguage.name
  end

  def bank_account_number_user
    @bank_account_number = Faker::Bank.account_number
  end

  def company_industry_user
    @company_industry = Faker::Company.industry
  end

  def company_user
    @company = Faker::Company.name
  end

  def marital_status_user
    @marital_status = Faker::Demographic.marital_status
  end

end
