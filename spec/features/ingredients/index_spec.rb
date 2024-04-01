require 'rails_helper'

RSpec.describe "Ingredient index" do
  before(:each) do
    @ingre_1 = Ingredient.create!(name: "oregano", cost: 1)
    @ingre_2 = Ingredient.create!(name: "basil", cost: 2)
    @ingre_3 = Ingredient.create!(name: "salt", cost: 1)
    @ingre_4 = Ingredient.create!(name: "ziti", cost: 5)
    @ingre_4 = Ingredient.create!(name: "tomato", cost: 3)
    @ingre_5 = Ingredient.create!(name: "olive oil", cost: 10)
    @ingre_6 = Ingredient.create!(name: "parm", cost: 4)
  end
  describe "US1" do
    it 'displays a list of all ingredients and their cost' do
      # When I visit '/ingredients'
      visit '/ingredients'
      # I see a list of all the ingredients including their name and cost
      # (e.g. "Ground Beef: 2", "Salt: 4")
      expect(page).to have_content("oregano: 1")
      expect(page).to have_content("basil: 2")
      expect(page).to have_content("salt: 1")
    end
  end
end