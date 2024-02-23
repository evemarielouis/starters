require "application_system_test_case"

class StarterPacksTest < ApplicationSystemTestCase
  setup do
    @starter_pack = starter_packs(:one)
  end

  test "visiting the index" do
    visit starter_packs_url
    assert_selector "h1", text: "Starter packs"
  end

  test "should create starter pack" do
    visit starter_packs_url
    click_on "New starter pack"

    fill_in "Description", with: @starter_pack.description
    fill_in "Icon", with: @starter_pack.icon
    fill_in "Image four", with: @starter_pack.image_four
    fill_in "Image one", with: @starter_pack.image_one
    fill_in "Image three", with: @starter_pack.image_three
    fill_in "Image two", with: @starter_pack.image_two
    fill_in "Name", with: @starter_pack.name
    fill_in "Title", with: @starter_pack.title
    click_on "Create Starter pack"

    assert_text "Starter pack was successfully created"
    click_on "Back"
  end

  test "should update Starter pack" do
    visit starter_pack_url(@starter_pack)
    click_on "Edit this starter pack", match: :first

    fill_in "Description", with: @starter_pack.description
    fill_in "Icon", with: @starter_pack.icon
    fill_in "Image four", with: @starter_pack.image_four
    fill_in "Image one", with: @starter_pack.image_one
    fill_in "Image three", with: @starter_pack.image_three
    fill_in "Image two", with: @starter_pack.image_two
    fill_in "Name", with: @starter_pack.name
    fill_in "Title", with: @starter_pack.title
    click_on "Update Starter pack"

    assert_text "Starter pack was successfully updated"
    click_on "Back"
  end

  test "should destroy Starter pack" do
    visit starter_pack_url(@starter_pack)
    click_on "Destroy this starter pack", match: :first

    assert_text "Starter pack was successfully destroyed"
  end
end
