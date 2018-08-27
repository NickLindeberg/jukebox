require 'rails_helper'

describe 'song index' do
  it 'user can see all songs' do
    artist = Artist.create(name: "Jimbob")
    song_1 = Song.create!(title: 'Superfreak', length: 300, play_count: 5000000, artist_id: artist.id)
    song_2 = Song.create!(title: 'Ice Ice Baby', length: 200, play_count: 10000, artist_id: artist.id)

    visit '/songs'

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end
