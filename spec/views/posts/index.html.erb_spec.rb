require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Post.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "article>h3", :text => "Title #{I18n.l(Time.zone.now, format: :short)}".to_s, :count => 2
    assert_select "article>p", :text => "MyText".to_s, :count => 2
  end
end
