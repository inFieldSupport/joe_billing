require 'rails_helper'

RSpec.describe "service_types/edit", type: :view do
  let(:service_type) {
    ServiceType.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:service_type, service_type)
  end

  it "renders the edit service_type form" do
    render

    assert_select "form[action=?][method=?]", service_type_path(service_type), "post" do

      assert_select "input[name=?]", "service_type[name]"
    end
  end
end
