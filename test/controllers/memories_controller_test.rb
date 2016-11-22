require 'test_helper'

class MemoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @memory = memories(:one)
  end

  test "should get index" do
    get memories_url
    assert_response :success
  end

  test "should get new" do
    get new_memory_url
    assert_response :success
  end

  test "should create memory" do
    assert_difference('Memory.count') do
      post memories_url, params: { memory: { body: @memory.body, title: @memory.title, user_id: @memory.user_id } }
    end

    assert_redirected_to memory_url(Memory.last)
  end

  test "should show memory" do
    get memory_url(@memory)
    assert_response :success
  end

  test "should get edit" do
    get edit_memory_url(@memory)
    assert_response :success
  end

  test "should update memory" do
    patch memory_url(@memory), params: { memory: { body: @memory.body, title: @memory.title, user_id: @memory.user_id } }
    assert_redirected_to memory_url(@memory)
  end

  test "should destroy memory" do
    assert_difference('Memory.count', -1) do
      delete memory_url(@memory)
    end

    assert_redirected_to memories_url
  end
end
