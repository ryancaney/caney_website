require 'spec_helper'

describe Comment do
  before(:each) do
    @attr = {
        :content => "test comment",
    }
  end

  it "should create a new comment given the attributes" do
    Comment.create!(@attr)
  end
end