# bart (Bored Art)

Official artwork, system wallpapers, and media assets for BoredOS.


## Decoupled Media Assets

This repository holds BoredOS system-wide design assets:
- **`wallpapers/`**: High-resolution system wallpapers.
- **`icons/boredos/`**: Official BoredOS branding icons and system logos (such as `bOS13.png`).


## Staging Installation

When building BoredOS, the main OS build coordinator copies assets from this repository:
- **`wallpapers/`** subdirectory is copied directly to `/Library/images/Wallpapers/` in the target filesystem.
- **`icons/boredos/`** subdirectory is copied directly to `/Library/images/icons/boredos/` (retaining `bOS13.png` for `nova` to interact with as the BoredOS logo).

## Wallpaper Contributors & Artists

We are extremely grateful to the following talented wallpaper artists who contributed their amazing artwork to BoredOS:

*   **artemix1508**
*   **qwroffc**
*   **naplon74**
*   **pixelyblah**
*   **toiletalphamale**
*   **cxldest**

## Licensing

All official BoredOS artworks in this repository are released under the **GNU General Public License v3.0**. See the [LICENSE](LICENSE) file for the full license terms.
