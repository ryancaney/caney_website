require 'spec_helper'

describe "Recipes" do
  describe "GET /recipes" do
    it "should make a new recipe" do
      lambda do
      visit recipes_path
      fill_in "Name", :with => "Example Recipe"
      fill_in "Author", :with => "Example Author"
      fill_in "Ingredients", :with => "stuff"
      fill_in "directions", :with => "actions"
      click_button
      response.should render_template('recipes/show')
      end
    end
  end
end
