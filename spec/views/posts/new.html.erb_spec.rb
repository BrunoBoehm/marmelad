require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :question => "MyString",
      :answ1 => "MyText",
      :answ2 => "MyText",
      :answ3 => "MyText",
      :answer => "MyText",
      :featured => false
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_question[name=?]", "post[question]"
      assert_select "textarea#post_answ1[name=?]", "post[answ1]"
      assert_select "textarea#post_answ2[name=?]", "post[answ2]"
      assert_select "textarea#post_answ3[name=?]", "post[answ3]"
      assert_select "textarea#post_answer[name=?]", "post[answer]"
      assert_select "input#post_featured[name=?]", "post[featured]"
    end
  end
end
