require 'spec_helper'

describe "State Leaders page" do
  before do
    visit "/states/in/leaders"
  end

  it "shows a particular state" do
    page.should have_content("Indiana")
  end
  
  it "lists all leaders for a state" do
    page.should have_selector('.thumbnail-leader')
  end

  it "links each leader to individual leader page" do
    find("a.thumbnail").click
    page.should have_selector(".leader-name")
  end
end
