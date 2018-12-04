require 'faker'

class Generator


  def name
    @first_name = Faker::Name.name
  end

  def address_user
    @address = Faker::Address.street_address
  end

  def postcode_user
    @postcode = Faker::Address.postcode
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

end

test = Generator.new
puts test.name
puts test.gender_user
puts test.nationality_user
puts test.address_user
puts test.postcode_user
puts test.job_title
puts test.date_of_birth_user
puts test.age
