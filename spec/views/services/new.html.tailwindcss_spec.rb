require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      name: "MyString",
      rate: 1.5,
      registered_users: 1,
      active_users: 1
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "input[name=?]", "service[rate]"

      assert_select "input[name=?]", "service[registered_users]"

      assert_select "input[name=?]", "service[active_users]"
    end
  end
end
