# Apple Music Preview for Windows 10
The Windows 11 exclusive Apple Music Preview app running on Windows 10!

![image](https://user-images.githubusercontent.com/70412932/235557203-fab09981-7a29-4eca-a365-c98d693e1336.png)

# What does this do?
This is an installer for the new Apple Music Client. It's supposed to be exclusive to Windows 11.

But here's the funny thing, almost ALL Windows 11 apps run on Windows 10 just fine. This is because the system is nearly the same, just Windows 11 is buggier. Funny, ain't it? 

# Installation

1. Go to the **releases** page, and there will be a .zip containing all of the files needed to install this. Download that file.
2. Go to Settings > Update and Security > For Developers, and enable "Install apps from any source, including loose files."

![image](https://user-images.githubusercontent.com/70412932/235552873-139b9832-d1ef-4e0a-b090-48b2670d0281.png)
Just like in this image.

3. Now open and extract the zip file.
4. Run the **Installer.bat** file, just double-click it!

If you encounter any issues, refer to the steps below. :)

# Troubleshooting
Sometimes there may be UWP apps running or services that are running that the script cannot stop. A simple way to fix this is to go into Task Manager and go to the "Startup" tab. And disable everything, then reboot.

![image](https://user-images.githubusercontent.com/70412932/235554700-0de40509-0670-4a95-9e83-433de4da9c3a.png)

You can re-enable these after you're done installing.

# How to upgrade
To upgrade Apple Music, you'll need to download a ".msixbundle" file from a source like [https://store.rg-adguard.net/](https://store.rg-adguard.net/)

1. Search for the app's URL in the search bar ([https://www.microsoft.com/store/apps/9PFHDD62MXS1](https://www.microsoft.com/store/apps/9PFHDD62MXS1)).
2. Select "Retail" instead of "RP" in the search bar.

    ![image](https://user-images.githubusercontent.com/70412932/235558728-63d97d11-1988-41d7-a0ec-b8e10c1259bc.png)

3. Select the one with the ".msixbundle" file name extension.

    ![image](https://user-images.githubusercontent.com/70412932/235559192-29a23191-0dc0-49ec-8c78-52c63ec319ce.png)

4. Extract the file with an utility like [7zip](https://www.7-zip.org/download.html).

    ![image](https://user-images.githubusercontent.com/70412932/235559495-6cf077c3-f782-43af-a96a-7f5b7632f8aa.png)

5. Enter the folder and extract the ".msix" file.

    ![image](https://user-images.githubusercontent.com/70412932/235559659-c7f49171-6677-47a9-855d-896dbdde0cda.png)

6. Rename the extracted folder to "AM" and move it to the cloned repository's folder.
    - Delete the previous "AM" folder first.
    
7. Run the **Installer.bat** and that's it!

# How to uninstall
Uninstall Apple Music  like any other Microsoft Store app, by going to **Settings > Apps > Apple Music Preview > Uninstall** and that's it, uninstalled!

# Known issues 
None that I know of :D. At least none that aren't in the app itself. They can be replicated on Windows 11 as well.

# Notes
- This has not been tested on any Windows 10 version before 21H2. But it *should* work just fine. As the system files from 2004 and beyond are the same.

