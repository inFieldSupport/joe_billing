require 'rails_helper'

RSpec.describe "services/show", type: :view do
  before(:each) do
    assign(:service, Service.create!(
      service_type_id: 1,
      client_id: 1,
      rate: 2.5,
      active_users: 3,
      registered_users: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
