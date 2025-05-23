![](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/banner.png)

# *Iskaffe* 

Multibeam backscatter quality control.

[![](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/download.png)](https://github.com/alexschimel/Iskaffe/releases/download/v0.3.3/iskaffe_v033_setup.exe)

[![Language](https://img.shields.io/badge/MATLAB-R2020b-orange)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/alexschimel/Iskaffe)](https://github.com/alexschimel/Iskaffe/releases)
[![Last Commit](https://img.shields.io/github/last-commit/alexschimel/Iskaffe)](https://github.com/alexschimel/Iskaffe/commits/main)
[![Docs](https://img.shields.io/badge/Docs-Wiki-blue)](https://github.com/alexschimel/Iskaffe/wiki)

[![Sponsor](https://img.shields.io/badge/Sponsor-GitHub-ea4aaa.svg)](https://github.com/sponsors/alexschimel)
[![Donate](https://img.shields.io/badge/Donate-PayPal-blue.svg)](https://paypal.me/alexschimel)


### Description

*Iskaffe* (Norwegian Bokmål for "iced coffee") is a free and open-source app to help assess the quality of the seafloor backscatter data acquired by multibeam echosounders. The main purpose of this tool is to serve as a development platform to come up with a set of algorithms that assess various aspects of backscatter quality, and define standards of backscatter quality based on the output of those algorithms. While we are currently developping *Iskaffe* for our own use, we are welcoming co-developers and feedback to help coming up with more widely-applicable algorithms and backscatter quality standards.

*Iskaffe* uses the [CoFFee multibeam data processing toolbox](https://github.com/alexschimel/CoFFee) (hence the name). It is coded in [MATLAB](https://www.mathworks.com/products/matlab.html), but is also available as a standalone application that does not require a MATLAB licence (see the [Dependencies](#dependencies) and [Installing](#installing) sections).

*Iskaffe* is still at an early stage of development so it has fewer features and more bugs than you would want. Please be patient. For a starter, its main current limitations are that it does not like loading too many files at a time. Still, the latest release already has some relevant features:
* Support Kongsberg .all and .kmall formats
* Detect and alarm when a dataset contains data in more than one acquisition mode
* Display backscatter, bathymetry, slope, and acquisition mode
* Find, display, and count "bad" soundings and "bad" pings, for each loaded line
* Find, display, and count the grid cells where data have not been acquired yet
* Output analysis results

![](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/screenshot.png)

## Getting Started

### Dependencies

* For the source code:
  * [MATLAB](https://www.mathworks.com/products/matlab.html). The code was developed with version R2020b, but it may work on earlier/later versions.
  * Some [MATLAB toolboxes](https://www.mathworks.com/products.html):
    * Mapping Toolbox
    * Image Processing Toolbox
    * Statistics and Machine Learning Toolbox
  * [The *CoFFee* toolbox](https://github.com/alexschimel/CoFFee)
* For the compiled executable: [MATLAB Runtime v9.9](https://www.mathworks.com/products/compiler/matlab-runtime.html).
  * Note: if you install the app using the binary installer, the setup wizard will automatically detect whether you have the correct version of MATLAB Runtime installed and, if not, allow you to download and install it then.

### Installing

* For the source code: 
  * Clone or download this repository, as well as the repository of [*CoFFee*](https://github.com/alexschimel/CoFFee), onto your machine.
* For the compiled executable: 
  * Preferably, [download the binary installer from the releases page](https://github.com/alexschimel/Iskaffe/releases), execute the installer, and follow the instructions of the setup wizard. The setup wizard will check if you have the appropriate version of MATLAB Runtime installed and, if not, let you download and install it. Note that the setup wizard requires an internet connection.
  * Alternatively, you can simply [download the binary executable and accompanying files from the releases page](https://github.com/alexschimel/Iskaffe/releases) and double-click the .exe file to run the application without installing it. Note that you still need to have the appropriate version of MATLAB Runtime installed.

### Executing program

* For the source code: Start MATLAB, navigate to the root directory of the *Iskaffe* code, and type `Iskaffe` in the Command Window.
  * Note: The first time you run *Iskaffe* from the source code, you will be prompted to provide the location of a folder containing the *CoFFee* toolbox. *Iskaffe* will check if the version of that toolbox is the one with which the app was built. If the version of *CoFFee* is not the one expected, you will receive a warning letting you know you might experience issues, and recommending you download (or check out) the appropriate version.
* For the compiled executable: Execute the installed program.
  * Note: The first time you run *Iskaffe* after installation, it might take a while for the app to appear. Be patient. It will be faster the next times.

Note: At start-up, *Iskaffe* creates a `Iskaffe` user folder (normally, C:\Users\USERNAME\Documents\Iskaffe). This folder contains a configuration file for the app, and is the default folder for any exports from the app. This folder or any of its contents can be deleted safely (although if you delete the configuration file, this will reset the app configuration).

## Help

Head over to the [wiki](https://github.com/alexschimel/Iskaffe/wiki) for documentation (in progress).

If you have any issues, first check the project's [Issues](https://github.com/alexschimel/Iskaffe/issues) to search for a fix. Otherwise, let the authors know by [creating a new issue](https://github.com/alexschimel/Iskaffe/issues/new). Ideally, share the Iskaffe log to provide insight in the issue. 

For more help, contact the [authors](#authors-and-contributors).

### Past versions and updates

See the [releases](https://github.com/alexschimel/Iskaffe/releases) page for past released versions. 

If you want to receive notifications of future releases (recommended), you may create a github account, and on this repository click on 'Watch', then 'Custom', and choose 'Releases'. Verify in your GitHub settings that you are set to receive 'Watching' notifications.

## About

### Authors and contributors

* Alexandre Schimel (alex.schimel@proton.me)
* Margaret Dolan, Shyam Chand, Terje Thorsnes, Lilja Rún Bjarnadóttir (The Geological Survey of Norway)

### Copyright

2021-2025
* Alexandre Schimel

### License

The *Iskaffe* software and source code is distributed under the MIT License. See `LICENSE` file for details.

### Citation/Credit

An article is in preparation for reference. 

### Acknowledgments

Iskaffe logo from photo by [Talia Anna](https://unsplash.com/photos/kZt3uHtIyiI) on [Unsplash](https://unsplash.com)

### Support This Project 💖

If you use *Iskaffe* in your research, teaching, or professional work, please consider supporting its development. Your support helps cover development time, MATLAB license costs, and ensures continued availability of free, open-source tools for multibeam sonar data analysis.

For **monthly support**, consider [sponsoring on GitHub](https://github.com/sponsors/alexschimel). For **one-time donations**, you can use [PayPal](https://paypal.me/alexschimel).

## See Also

### All apps based on CoFFee:
* [*Espresso*](https://github.com/alexschimel/Espresso): Multibeam water-column data visualization and processing (private)
* [*Iskaffe*](https://github.com/alexschimel/Iskaffe): Multibeam backscatter quality control
* [*Grounds*](https://github.com/alexschimel/Grounds): Elevation Change Analysis

### References 

None to date.

## For developers

[See the 'For developers' section on the *CoFFee* page](https://github.com/alexschimel/CoFFee)
