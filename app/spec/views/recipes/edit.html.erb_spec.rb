require 'spec_helper'

describe "recipes/edit.html.erb" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :author => "MyString",
      :ingredients => "MyText",
      :directions => "MyText"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "input#recipe_author", :name => "recipe[author]"
      assert_select "textarea#recipe_ingredients", :name => "recipe[ingredients]"
      assert_select "textarea#recipe_directions", :name => "recipe[directions]"
    end
  end
end
