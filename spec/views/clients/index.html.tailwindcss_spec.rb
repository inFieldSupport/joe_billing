require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        name: "Name",
        email: "test1@test.com",
        owner: "test",
        address: "lorem ipsum",
        state: "lorem",
        total_customers: 2
      ),
      Client.create!(
        name: "Name",
        email: "test1@test.com",
        owner: "test",
        address: "lorem ipsum",
        state: "lorem",
        total_customers: 2
      )
    ])
  end

  it "renders a list of clients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("test1@test.com".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("test".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("lorem ipsum".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("lorem".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end
