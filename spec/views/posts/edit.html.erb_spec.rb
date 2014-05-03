require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :question => "MyString",
      :answ1 => "MyText",
      :answ2 => "MyText",
      :answ3 => "MyText",
      :answer => "MyText",
      :featured => false
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_question[name=?]", "post[question]"
      assert_select "textarea#post_answ1[name=?]", "post[answ1]"
      assert_select "textarea#post_answ2[name=?]", "post[answ2]"
      assert_select "textarea#post_answ3[name=?]", "post[answ3]"
      assert_select "textarea#post_answer[name=?]", "post[answer]"
      assert_select "input#post_featured[name=?]", "post[featured]"
    end
  end
end
