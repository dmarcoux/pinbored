# frozen_string_literal: true

require "rails_helper"

RSpec.describe "bookmarks/index", type: :view do
  before do
    assign(:bookmarks, [
             Bookmark.create!(
               title: "Title",
               url: "MyText",
               description: "MyText",
               visibiliy: 2
             ),
             Bookmark.create!(
               title: "Title",
               url: "MyText",
               description: "MyText",
               visibiliy: 2
             )
           ])
  end

  it "renders a list of bookmarks" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
