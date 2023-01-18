require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        service_type_id: 1,
        client_id: 1,
        rate: 2.5,
        active_users: 3,
        registered_users: 4
      ),
      Service.create!(
        service_type_id: 1,
        client_id: 1,
        rate: 2.5,
        active_users: 3,
        registered_users: 4
      )
    ])
  end

  it "renders a list of services" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(1.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(1.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
  end
end
