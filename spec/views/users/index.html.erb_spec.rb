require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :anonymous_author => "Anonymous Author",
        :content => "Content"
      ),
      User.create!(
        :anonymous_author => "Anonymous Author",
        :content => "Content"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Anonymous Author".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
