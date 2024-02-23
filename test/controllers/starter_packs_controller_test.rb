require "test_helper"

class StarterPacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @starter_pack = starter_packs(:one)
  end

  test "should get index" do
    get starter_packs_url
    assert_response :success
  end

  test "should get new" do
    get new_starter_pack_url
    assert_response :success
  end

  test "should create starter_pack" do
    assert_difference("StarterPack.count") do
      post starter_packs_url, params: { starter_pack: { description: @starter_pack.description, icon: @starter_pack.icon, image_four: @starter_pack.image_four, image_one: @starter_pack.image_one, image_three: @starter_pack.image_three, image_two: @starter_pack.image_two, name: @starter_pack.name, title: @starter_pack.title } }
    end

    assert_redirected_to starter_pack_url(StarterPack.last)
  end

  test "should show starter_pack" do
    get starter_pack_url(@starter_pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_starter_pack_url(@starter_pack)
    assert_response :success
  end

  test "should update starter_pack" do
    patch starter_pack_url(@starter_pack), params: { starter_pack: { description: @starter_pack.description, icon: @starter_pack.icon, image_four: @starter_pack.image_four, image_one: @starter_pack.image_one, image_three: @starter_pack.image_three, image_two: @starter_pack.image_two, name: @starter_pack.name, title: @starter_pack.title } }
    assert_redirected_to starter_pack_url(@starter_pack)
  end

  test "should destroy starter_pack" do
    assert_difference("StarterPack.count", -1) do
      delete starter_pack_url(@starter_pack)
    end

    assert_redirected_to starter_packs_url
  end
end
