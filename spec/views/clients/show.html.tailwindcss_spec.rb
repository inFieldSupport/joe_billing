require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    assign(:client, Client.create!(
      name: "Name",
      email: "email@example.com",
      owner: "test",
      address: "lorem ipsum",
      state: "lorem",
      total_customers: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/email@example.com/)
    expect(rendered).to match(/test/)
    expect(rendered).to match(/lorem ipsum/)
    expect(rendered).to match(/lorem/)
    expect(rendered).to match(/2/)
  end
end
