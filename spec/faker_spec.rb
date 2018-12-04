describe "tests" do

  before(:all) do
    @random_data = Generator.new
  end

  it 'should return string for name' do
    expect(@random_data.name).to be_kind_of String
  end

  # it 'capital' do
  #   expect(@random_data.capital_name).to be true
  # end

  it 'address should return a string' do
    expect(@random_data.address_user).to be_kind_of String
  end

  it 'postcode should return a string' do
    expect(@random_data.postcode_user).to be_kind_of String
  end

  it 'gender should return a string'do
    expect(@random_data.gender_user).to be_kind_of String
  end

  it 'job title should return a string' do
    expect(@random_data.job_title).to be_kind_of String
  end

  it 'nationality should return a string' do
    expect(@random_data.nationality_user).to be_kind_of String
  end

  it 'age should return an integer' do
    expect(@random_data.age).to be_kind_of Integer
  end

  it 'phone number should return a string' do
    expect(@random_data.phone_number_user).to be_kind_of String
  end





end
