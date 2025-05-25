require "application_system_test_case"

class MyQuestsTest < ApplicationSystemTestCase
  setup do
    @my_quest = my_quests(:one)
  end

  test "visiting the index" do
    visit my_quests_url
    assert_selector "h1", text: "My quests"
  end

  test "should create my quest" do
    visit my_quests_url
    click_on "New my quest"

    fill_in "Quest", with: @my_quest.quest
    click_on "Create My quest"

    assert_text "My quest was successfully created"
    click_on "Back"
  end

  test "should update My quest" do
    visit my_quest_url(@my_quest)
    click_on "Edit this my quest", match: :first

    fill_in "Quest", with: @my_quest.quest
    click_on "Update My quest"

    assert_text "My quest was successfully updated"
    click_on "Back"
  end

  test "should destroy My quest" do
    visit my_quest_url(@my_quest)
    accept_confirm { click_on "Destroy this my quest", match: :first }

    assert_text "My quest was successfully destroyed"
  end
end
