require 'rails_helper'

RSpec.describe ServiceType, type: :model do
  it "is valid with valid attributes" do
    expect(ServiceType.new(name:"test")).to be_valid
  end
  it "is not valid without a name" do
    service_type = ServiceType.new(name: nil)
    expect(service_type).to_not be_valid
  end
end
