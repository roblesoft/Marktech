require 'test_helper'

class RecistenciasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recistencias_index_url
    assert_response :success
  end

end
