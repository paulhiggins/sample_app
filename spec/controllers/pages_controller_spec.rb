require 'spec_helper'

  render_views

describe PagesController do
  render_views
   end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
 
 
    
    it "should have the right title" do 
      get 'home'
      response.should have_selector("title", :content => "Ruby on rails tutorial sample app | home")
    end
    
    it  "should have a non-blank body" do 
      get 'home'
      response.body.should_not = ~ /<body>\s*<\/body>/
    
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
     it "should have the right title" do 
        get 'contact'
        response.should have_selector("title", :content => "Ruby on rails tutorial sample app | contact")
      end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do 
        get 'about'
        response.should have_selector("title", :content => "Ruby on rails tutorial sample app | about")
      end
  end

end
