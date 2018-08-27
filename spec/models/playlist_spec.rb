require 'rails_helper'

describe Playlist, type: :model do
  describe 'relationships' do
    xit {should have_many(:songs).through(:playlist_songs)}
  end
end
