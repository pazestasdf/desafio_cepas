require "application_system_test_case"

class OenologistScoresTest < ApplicationSystemTestCase
  setup do
    @oenologist_score = oenologist_scores(:one)
  end

  test "visiting the index" do
    visit oenologist_scores_url
    assert_selector "h1", text: "Oenologist Scores"
  end

  test "creating a Oenologist score" do
    visit oenologist_scores_url
    click_on "New Oenologist Score"

    fill_in "Oenologist", with: @oenologist_score.oenologist_id
    fill_in "Score", with: @oenologist_score.score
    fill_in "Wine", with: @oenologist_score.wine_id
    click_on "Create Oenologist score"

    assert_text "Oenologist score was successfully created"
    click_on "Back"
  end

  test "updating a Oenologist score" do
    visit oenologist_scores_url
    click_on "Edit", match: :first

    fill_in "Oenologist", with: @oenologist_score.oenologist_id
    fill_in "Score", with: @oenologist_score.score
    fill_in "Wine", with: @oenologist_score.wine_id
    click_on "Update Oenologist score"

    assert_text "Oenologist score was successfully updated"
    click_on "Back"
  end

  test "destroying a Oenologist score" do
    visit oenologist_scores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oenologist score was successfully destroyed"
  end
end
