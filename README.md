# Convert WAV to MP3 via Right-Click Context Menu

This project enables a convenient right-click context menu option in Windows 11 to convert .wav audio files to high-quality .mp3 format using FFmpeg and PowerShell.

# Project Structure

C:\
└── ffmpeg\
    └── scripts\
        ├── ConvertToMp3.ps1
        └── AddConvertToMp3.reg

# Prerequisites

    FFmpeg: Ensure FFmpeg is installed at C:\ffmpeg\bin\ffmpeg.exe. If not, download it from the official website and place it accordingly.

    PowerShell Execution Policy: The script uses -ExecutionPolicy Bypass to allow execution without modifying system-wide policies.

# Installation Steps

    Download the Repository:

        Clone this repository or download the ZIP file and extract it.

    Place Files:

        Move ConvertToMp3.ps1 and AddConvertToMp3.reg to C:\ffmpeg\scripts\.

    Add Context Menu Entry:

        Double-click AddConvertToMp3.reg to merge it into your registry.

        Confirm any prompts that appear

# Usage

    Convert a WAV File:

        Right-click on any .wav file.

        Select Show more options (if using the simplified context menu).

        Click on Convert to MP3.

    Result:

        An .mp3 file with the same name will be created in the same directory.


# Notes

    Script Path: Ensure that ConvertToMp3.ps1 is located at C:\ffmpeg\scripts\. If placed elsewhere, update the path in AddConvertToMp3.reg accordingly.

    FFmpeg Path: The script assumes FFmpeg is at C:\ffmpeg\bin\ffmpeg.exe. Modify the script if your FFmpeg installation is elsewhere.

    Execution Policy: The use of -ExecutionPolicy Bypass in the registry command allows the script to run without changing the system's execution policy settings.

# Uninstallation

    Remove Context Menu Entry:

        Open the Registry Editor (regedit).

        Navigate to:

    HKEY_CURRENT_USER\Software\Classes\SystemFileAssociations\.wav\shell\

    Delete the ConvertToMP3 key.
    WIRED+2coding-boot-camp.github.io+2Wikipedia+2
    GitHub+4Reddit+4GitHub+4

Delete Scripts:

    Remove ConvertToMp3.ps1 and AddConvertToMp3.reg from C:\ffmpeg\scripts\.


# License

This project is licensed under the MIT License. See the LICENSE file for details.