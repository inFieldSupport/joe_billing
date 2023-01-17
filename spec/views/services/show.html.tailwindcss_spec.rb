require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    assign(:service, Service.create!(
      name: "Name",
      rate: 2.5,
      registered_users: 3,
      active_users: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
