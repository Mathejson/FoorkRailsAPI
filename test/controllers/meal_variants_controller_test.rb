require 'test_helper'

class MealVariantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meal_variants_index_url
    assert_response :success
  end

  test "should get new" do
    get meal_variants_new_url
    assert_response :success
  end

  test "should get create" do
    get meal_variants_create_url
    assert_response :success
  end

  test "should get show" do
    get meal_variants_show_url
    assert_response :success
  end

  test "should get edit" do
    get meal_variants_edit_url
    assert_response :success
  end

  test "should get update" do
    get meal_variants_update_url
    assert_response :success
  end

  test "should get destroy" do
    get meal_variants_destroy_url
    assert_response :success
  end

end
