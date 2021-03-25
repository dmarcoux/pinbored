# frozen_string_literal: true

require "rails_helper"

RSpec.describe "bookmarks/show", type: :view do
  before do
    @bookmark = assign(:bookmark, Bookmark.create!(
                                    title: "Title",
                                    url: "MyText",
                                    description: "MyText",
                                    visibility: 2
                                  ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
