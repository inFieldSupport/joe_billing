require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      name: "MyString",
      email: "foo@bar.com",
      owner: "test",
      address: "lorem ipsum",
      state: "lorem",
      total_customers: 1
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input[name=?]", "client[name]"

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[owner]"

      assert_select "input[name=?]", "client[address]"

      assert_select "input[name=?]", "client[state]"

      assert_select "input[name=?]", "client[total_customers]"
    end
  end
end
