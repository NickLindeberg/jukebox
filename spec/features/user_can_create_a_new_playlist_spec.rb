require 'rails_helper'

describe 'As a user' do
  describe 'views /playlist/new' do
    xit 'should see a form to create new playlist' do
      playlist_name = "Sweet Jamz, yo"

      visit new_playlist_path

      fill_in "playlist[name]", with: playlist_name
      click_on "Create Playlist"

      expect(current_path).to eq(playlists_path)
      expect(page).to have_content(playlist_name)
    end
  end
end
