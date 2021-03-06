Code.require_file "../test_helper", __FILE__

defmodule AnagramTest do
  use ExUnit::Case

  test "returns itself as an anagram" do
    list = ["ball"]
    assert_equal ["ball"], Anagram.anagram_of("ball", list)
  end

  test "returns an empty list when we don't have an anagram" do
    list = ["ball"]
    assert_equal [], Anagram.anagram_of("socialmedia", list)
  end

  test "returns only the matching word" do
    list = ["ball", "cat", "house"]
    assert_equal ["house"], Anagram.anagram_of("house", list)
  end

  test "returns an empty list if the list is empty" do
    assert_equal [], Anagram.anagram_of("house", [])
  end

  test "returns the matching anagram" do
    list = ["ball"]
    assert_equal ["ball"], Anagram.anagram_of("blal", list)
  end

  test "returns the matching anagrams" do
    list = ["blal", "ball"]
    assert_equal ["blal", "ball"], Anagram.anagram_of("blal", list)
  end

  test "returns only the matching anagrams" do
    list = ["ball", "icecream", "blal"]
    assert_equal ["ball", "blal"], Anagram.anagram_of("llab", list)
  end
end