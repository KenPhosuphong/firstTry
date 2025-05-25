require "test_helper"

class MyQuestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_quest = my_quests(:one)
  end

  test "should get index" do
    get my_quests_url
    assert_response :success
  end

  test "should get new" do
    get new_my_quest_url
    assert_response :success
  end

  test "should create my_quest" do
    assert_difference("MyQuest.count") do
      post my_quests_url, params: { my_quest: { quest: @my_quest.quest } }
    end

    assert_redirected_to my_quest_url(MyQuest.last)
  end

  test "should show my_quest" do
    get my_quest_url(@my_quest)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_quest_url(@my_quest)
    assert_response :success
  end

  test "should update my_quest" do
    patch my_quest_url(@my_quest), params: { my_quest: { quest: @my_quest.quest } }
    assert_redirected_to my_quest_url(@my_quest)
  end

  test "should destroy my_quest" do
    assert_difference("MyQuest.count", -1) do
      delete my_quest_url(@my_quest)
    end

    assert_redirected_to my_quests_url
  end
end
