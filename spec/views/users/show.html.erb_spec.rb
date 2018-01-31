require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :anonymous_author => "Anonymous Author",
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Anonymous Author/)
    expect(rendered).to match(/Content/)
  end
end
