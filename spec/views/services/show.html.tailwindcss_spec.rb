require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    assign(:service, Service.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
