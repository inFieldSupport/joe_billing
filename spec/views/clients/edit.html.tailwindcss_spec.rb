require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  let(:client) {
    Client.create!(
      name: "MyString",
      email: "test1@test.com",
      owner: "test",
      address: "lorem ipsum",
      state: "lorem",
      total_customers: 1
    )
  }

  before(:each) do
    assign(:client, client)
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(client), "post" do

      assert_select "input[name=?]", client.name

      assert_select "input[name=?]", "client[email]"

      assert_select "input[name=?]", "client[owner]"

      assert_select "input[name=?]", "client[address]"

      assert_select "input[name=?]", "client[state]"

      assert_select "input[name=?]", "client[total_customers]"
    end
  end
end
