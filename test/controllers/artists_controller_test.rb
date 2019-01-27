require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get artists_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_url
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post artists_url, params: { artist: { donation_link: @artist.donation_link, facebook_link: @artist.facebook_link, genre: @artist.genre, hire_link: @artist.hire_link, intagram_link_string: @artist.intagram_link_string, name: @artist.name, profile_picture: @artist.profile_picture, spotify_link: @artist.spotify_link } }
    end

    assert_redirected_to artist_url(Artist.last)
  end

  test "should show artist" do
    get artist_url(@artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_url(@artist)
    assert_response :success
  end

  test "should update artist" do
    patch artist_url(@artist), params: { artist: { donation_link: @artist.donation_link, facebook_link: @artist.facebook_link, genre: @artist.genre, hire_link: @artist.hire_link, intagram_link_string: @artist.intagram_link_string, name: @artist.name, profile_picture: @artist.profile_picture, spotify_link: @artist.spotify_link } }
    assert_redirected_to artist_url(@artist)
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete artist_url(@artist)
    end

    assert_redirected_to artists_url
  end
end
