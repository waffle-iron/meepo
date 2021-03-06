require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :role => "MyString",
      :salary => 1.5,
      :team => nil
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_role[name=?]", "user[role]"

      assert_select "input#user_salary[name=?]", "user[salary]"

      assert_select "input#user_team_id[name=?]", "user[team_id]"
    end
  end
end
