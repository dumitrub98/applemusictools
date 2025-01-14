import os
import sys
import spotipy
from spotipy.oauth2 import SpotifyOAuth

# Read Spotify credentials from environment variables
spotify_client_id = os.getenv("SPOTIFY_CLIENT_ID")
spotify_client_secret = os.getenv("SPOTIFY_CLIENT_SECRET")
spotify_redirect_uri = os.getenv("SPOTIFY_REDIRECT_URI", "http://localhost:8888/callback/")  # Default redirect URI

if not spotify_client_id or not spotify_client_secret:
    print("Error: Please set the environment variables SPOTIFY_CLIENT_ID and SPOTIFY_CLIENT_SECRET.")
    sys.exit(1)

# Spotify API scope for reading private playlists
scope = "playlist-read-private"

def get_all_spotify_tracks(sp, playlist_id):
    # Fetch tracks in batches of 100
    tracks = []
    offset = 0
    limit = 100  # Maximum number of tracks per request

    while True:
        response = sp.playlist_items(playlist_id, offset=offset, limit=limit)
        batch_tracks = response['items']
        tracks.extend(batch_tracks)
        if len(batch_tracks) < limit:
            break  # No more tracks to fetch
        offset += limit

    return tracks

def export_spotify_playlist(spotify_playlist_url, output_file):
    # Initialize Spotify API client
    sp = spotipy.Spotify(auth_manager=SpotifyOAuth(client_id=spotify_client_id,
                                                    client_secret=spotify_client_secret,
                                                    redirect_uri=spotify_redirect_uri,
                                                    scope=scope))

    # Extract the Spotify playlist ID from the URL
    playlist_id = spotify_playlist_url.split("/")[-1].split("?")[0]

    # Fetch all tracks from the Spotify playlist
    spotify_tracks = get_all_spotify_tracks(sp, playlist_id)

    # Export to file
    with open(output_file, "w") as f:
        for track in spotify_tracks:
            track_name = track['track']['name']
            artist_name = track['track']['artists'][0]['name']
            f.write(f"{track_name} - {artist_name}\n")

    print(f"Exported {len(spotify_tracks)} tracks to {output_file}")

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python export_spotify.py <spotify_playlist_url> <output_file>")
        sys.exit(1)

    spotify_playlist_url = sys.argv[1]  # First argument: Spotify playlist URL
    output_file = sys.argv[2]  # Second argument: Output file name

    export_spotify_playlist(spotify_playlist_url, output_file)