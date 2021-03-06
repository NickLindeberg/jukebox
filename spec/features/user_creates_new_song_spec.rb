require 'rails_helper'

describe 'song creation' do
  context 'as a visitor' do
    it 'allows creation of a song' do

    artist = Artist.create(name: 'Johnny Cash')

    visit "artists/#{artist.id}/songs/new"
    song_title = 'Boy named sue'

    fill_in :song_title, with: song_title
    fill_in :song_length, with: 200

    click_on 'Create Song'

    expect(current_path).to eq(song_path(Song.last))
    expect(page).to have_content(song_title)
    expect(page).to have_content(artist.name)

    end
  end
end
