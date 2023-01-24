require 'rails_helper'

RSpec.describe Client, type: :model do
  it "is valid with valid attributes" do
    expect(Client.new(name:"test", email:"test@test.com", owner:"test", address:"lorem ipsum", state:"lorem")).to be_valid
  end
  it "is not valid without a name" do
    client = Client.new(name: nil, email:"test@test.com", owner:"test", address:"lorem ipsum", state:"lorem")
    expect(client).to_not be_valid
  end
  it "is not valid without a owmer" do
    client = Client.new(owner: nil, name:"test", email:"test@test.com", address:"lorem ipsum", state:"lorem")
    expect(client).to_not be_valid
  end
  it "is not valid without a email" do
    client = Client.new(email: nil, name:"test", owner:"test", address:"lorem ipsum", state:"lorem")
    expect(client).to_not be_valid
  end
  it "is not valid without a address" do
    client = Client.new(address: nil, name:"test", email:"test@test.com", owner:"test", state:"lorem")
    expect(client).to_not be_valid
  end
  it "is not valid without a state" do
    client = Client.new(state: nil, name:"test", email:"test@test.com", owner:"test", address:"lorem ipsum")
    expect(client).to_not be_valid
  end
end
