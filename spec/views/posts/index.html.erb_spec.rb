require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :question => "Question",
        :answ1 => "MyText",
        :answ2 => "MyText",
        :answ3 => "MyText",
        :answer => "MyText",
        :featured => false
      ),
      stub_model(Post,
        :question => "Question",
        :answ1 => "MyText",
        :answ2 => "MyText",
        :answ3 => "MyText",
        :answer => "MyText",
        :featured => false
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
