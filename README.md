
# AppleScript for Randomizing an Apple Music Playlist

This script allows you to randomize the order of tracks in an Apple Music playlist by duplicating the playlist with a shuffled order, deleting the original playlist, and renaming the new playlist to the original name.

---

## Prerequisites

Before you start, make sure you have:
- A **macOS device** running **Music.app** (formerly iTunes).
- An **Apple Music** account with your playlists synced.
- **Script Editor** installed (it comes pre-installed with macOS).

---

## 1. Download and Run the Script

### Step 1: Download the Script
1. Click on the **Code** button at the top of this repository.
2. Select **Download ZIP** or clone the repository using Git:
   ```bash
   git clone <repository-url>
   ```
3. Unzip the file if downloaded as a ZIP.

### Step 2: Open the Script
1. Navigate to the folder containing `randomizer.scpt`.
2. Double-click the file to open it in **Script Editor**.

### Step 3: Run the Script
1. Click the **Run** button (`▶️`) in Script Editor.
2. Enter the exact name of the playlist you want to randomize when prompted.
3. The script will create a new shuffled playlist, delete the original, and rename the new playlist with the original name.

---

## 2. Example Walkthrough

### Example:
1. Playlist name entered: `Favorite Tracks`.
2. Output in Music app:
   - The original playlist `Favorite Tracks` is deleted.
   - A shuffled playlist `Favorite Tracks` is created with the same name.

---

## 3. Important Notes

- **Permanent deletion:** The original playlist is permanently deleted after the shuffled playlist is created.
- Make sure to **enter the correct playlist name** to avoid unintended deletions.
- The script only works with playlists in your local Apple Music library and cannot shuffle system-generated playlists (e.g., "Recently Played", "Liked Songs").

---

## 4. Troubleshooting

- **Error: "Playlist not found":**
  - Ensure the playlist exists and the name is spelled correctly.
  - Playlist names are case-sensitive.

- **Script does not run:** Ensure that you have given permissions to Script Editor to control Music.app by:
  1. Opening `System Preferences > Privacy & Security > Automation`.
  2. Ensuring `Script Editor` is allowed to control `Music`.

---

## 5. Contributing

Feel free to suggest improvements or contribute by submitting changes to this project!
