require "test_helper"

class AnimalAbilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get animal_abilities_new_url
    assert_response :success
  end

  test "should get create" do
    get animal_abilities_create_url
    assert_response :success
  end
end
