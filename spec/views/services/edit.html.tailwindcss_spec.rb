require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  let(:service) {
    Service.create!(
      name: "MyString",
      rate: 1.5,
      registered_users: 1,
      active_users: 1
    )
  }

  before(:each) do
    assign(:service, service)
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(service), "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[rate]"

      assert_select "input[name=?]", "service[registered_users]"

      assert_select "input[name=?]", "service[active_users]"
    end
  end
end
