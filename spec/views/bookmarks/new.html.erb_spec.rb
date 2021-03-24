# frozen_string_literal: true

require "rails_helper"

RSpec.describe "bookmarks/new", type: :view do
  before do
    assign(:bookmark, Bookmark.new(
                        title: "MyString",
                        url: "MyText",
                        description: "MyText",
                        visibiliy: 1
                      ))
  end

  it "renders new bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmarks_path, "post" do
      assert_select "input[name=?]", "bookmark[title]"

      assert_select "textarea[name=?]", "bookmark[url]"

      assert_select "textarea[name=?]", "bookmark[description]"

      assert_select "input[name=?]", "bookmark[visibiliy]"
    end
  end
end
