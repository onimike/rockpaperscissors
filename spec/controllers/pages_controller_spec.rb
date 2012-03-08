require 'spec_helper'

describe PagesController do
	render_views;

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'throw'" do
    it "should be successful" do
      get 'throw'
      response.should be_success
    end
  end

  describe "GET 'stats'" do
    it "should be successful" do
      get 'stats'
      response.should be_success
    end
  end

end
