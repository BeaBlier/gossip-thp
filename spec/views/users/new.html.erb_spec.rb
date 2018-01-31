require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :anonymous_author => "MyString",
      :content => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[anonymous_author]"

      assert_select "input[name=?]", "user[content]"
    end
  end
end
