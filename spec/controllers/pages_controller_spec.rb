require 'spec_helper'

describe PagesController do
	render_views;

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'throw/rock'" do
    it "should be successful" do
      get 'throw/rock'
      response.should be_success
    end
  end
  
    describe "GET 'throw/paper'" do
    it "should be successful" do
      get 'throw/paper'
      response.should be_success
    end
  end
  
    describe "GET 'throw/scissors'" do
    it "should be successful" do
      get 'throw/scissors'
      response.should be_success
    end
  end

  describe "GET 'stats'" do
    it "should be successful" do
      get 'stats'
      response.should be_success
    end
  end
  
    describe "GET 'clear'" do
    it "should be successful" do
      get 'stats/clear'
      response.should be_success
    end
  end

end
