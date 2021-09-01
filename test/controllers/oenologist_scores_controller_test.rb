require 'test_helper'

class OenologistScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oenologist_score = oenologist_scores(:one)
  end

  test "should get index" do
    get oenologist_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_oenologist_score_url
    assert_response :success
  end

  test "should create oenologist_score" do
    assert_difference('OenologistScore.count') do
      post oenologist_scores_url, params: { oenologist_score: { oenologist_id: @oenologist_score.oenologist_id, score: @oenologist_score.score, wine_id: @oenologist_score.wine_id } }
    end

    assert_redirected_to oenologist_score_url(OenologistScore.last)
  end

  test "should show oenologist_score" do
    get oenologist_score_url(@oenologist_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_oenologist_score_url(@oenologist_score)
    assert_response :success
  end

  test "should update oenologist_score" do
    patch oenologist_score_url(@oenologist_score), params: { oenologist_score: { oenologist_id: @oenologist_score.oenologist_id, score: @oenologist_score.score, wine_id: @oenologist_score.wine_id } }
    assert_redirected_to oenologist_score_url(@oenologist_score)
  end

  test "should destroy oenologist_score" do
    assert_difference('OenologistScore.count', -1) do
      delete oenologist_score_url(@oenologist_score)
    end

    assert_redirected_to oenologist_scores_url
  end
end
