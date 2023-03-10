require 'rails_helper'

RSpec.describe "service_types/index", type: :view do
  before(:each) do
    assign(:service_types, [
      ServiceType.create!(
        name: "Name"
      ),
      ServiceType.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of service_types" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 0
  end
end
