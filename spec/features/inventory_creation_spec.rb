require 'rails_helper'

RSpec.feature "Inventory creation", type: :feature do
  before do
    visit new_inventory_path
  end

  it "saves the inventory properly and displays it to the user" do
    fill_in "Product", with: "Water bottle"
    click_link_or_button "Create Inventory"

    expect(page).to have_content("Inventories")
    expect(page).to have_content("Water bottle")
  end
end
