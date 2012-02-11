require 'spec_helper'

describe "Static pages" do
  
  subject{ page }
  
  describe "Home page" do
    before(:each) do
      visit root_path
    end
    it "should have the h1 'Sample App'" do
      should have_selector('h1', text: 'Sample App')
    end

    it "should have the right title " do
      should have_selector('title', text: full_title("Home"))
    end
  end

  describe "Help page" do
    before(:each) do
      visit help_path
    end
    it "should have the h1 'Help'" do
      should have_selector('h1', text: 'Help')
    end

    it "should have the right title" do
      should have_selector('title', text: full_title("Help"))
    end
  end

  describe "About page" do
    before(:each) do
      visit about_path
    end
    it "should have the h1 'About Us'" do
      should have_selector('h1', text: 'About Us')
    end

    it "should have the right title" do
      should have_selector('title', text: full_title("About"))
    end
  end

  describe "Contact page" do
    before(:each) do
      visit contact_path
    end
    
    it "should have the h1 'Contact'" do
      should have_selector('h1',text: "Contact")
    end
    it "should have the right title" do
      should have_selector('title',text: full_title("Contact"))
    end
  end

end
