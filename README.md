# Auto-WallpaperSwitcher
A lightweight Bash script that automatically updates your desktop wallpaper from a folder of images.  
You can configure the change interval and choose between **sequential** or **random** wallpaper switching.

---

## ⚙️ Features
- Customizable time interval
- Random or sequential wallpaper selection
- Minimal and dependency-free (only uses `gsettings`)
  
---

## 🚀 Usage

### 1. **Clone the repository:**
   ```bash
   git clone https://github.com/commonrover64/Auto-WallpaperSwitcher.git
   cd Auto-WallpaperSwitcher
   ```
### 2. **Configure the script:**
  
  Open auto_wallpaperSwitcher.sh in your favorite text editor and set:
  
  ```bash
  WALLPAPER_DIR="/path/to/your/images"   # Folder containing wallpapers
  INTERVAL=300                           # Time between changes in seconds
  RANDOM_MODE=true                       # true for random mode, false for sequential
  ```

### 3. **Make the script executable:**
  ```bash
  chmod +x auto_wallpaperSwitcher.sh
  ```

### 4. **Run the script:**
  ```bash
  ./auto_wallpaperSwitcher.sh
