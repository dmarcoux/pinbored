# frozen_string_literal: true

require "rails_helper"

RSpec.describe "bookmarks/edit", type: :view do
  let!(:bookmark) do
    assign(:bookmark, Bookmark.create!(
                        title: "MyString",
                        url: "MyText",
                        description: "MyText",
                        visibility: 1
                      ))
  end

  it "renders the edit bookmark form" do
    render

    assert_select "form[action=?][method=?]", bookmark_path(bookmark), "post" do
      assert_select "input[name=?]", "bookmark[title]"

      assert_select "textarea[name=?]", "bookmark[url]"

      assert_select "textarea[name=?]", "bookmark[description]"

      assert_select "input[name=?]", "bookmark[visibility]"
    end
  end
end
