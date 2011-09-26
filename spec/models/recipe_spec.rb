require 'spec_helper'

describe Recipe do
  before(:each) do
    @attr = {
        :name => "recipe 1",
        :author => "cook",
        :ingredients => "items",
        :directions => "steps"
    }
  end

  it "should create a new recipe given the attributes" do
    Recipe.create!(@attr)
  end
end