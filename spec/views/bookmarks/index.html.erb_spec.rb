# frozen_string_literal: true

require "rails_helper"

RSpec.describe "bookmarks/index", type: :view do
  before do
    assign(:bookmarks, [
             Bookmark.create!(
               title: "Crise existentielle",
               url: "http://www.emilebilodeau.ca/",
               description: "Une chanson",
               visibility: 0
             )
           ])
  end

  it "renders a list of bookmarks" do
    render
    expect(rendered).to match(/Crise existentielle/)
    expect(rendered).to match(%r{http://www.emilebilodeau.ca})
    expect(rendered).to match(/Une chanson/)
    expect(rendered).to match(/0/)
  end
end
