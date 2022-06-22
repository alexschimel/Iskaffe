![alt text](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/splash.png?raw=true)

# *Iskaffe* 

Multibeam backscatter quality control.

[![](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/download.png?raw=true)](https://github.com/alexschimel/Iskaffe/releases/download/v0.1.2/iskaffe_v012_setup.exe)

## Description

*Iskaffe* (Norwegian Bokmål for "iced coffee") is a free and open-source app to help assess the quality of the seafloor backscatter data acquired by multibeam echosounders. Iskaffe uses the [CoFFee multibeam data processing toolbox](https://github.com/alexschimel/CoFFee) (hence the name). It is coded in MATLAB, but is available as a deployed application that does not require a MATLAB licence (see the Dependencies and Installing sections).

The main purpose of *Iskaffe* is to serve as a platform to help the community of multibeam backscatter users to come up with 1) a set of algorithms that assess various aspects of backscatter quality, and 2) standards of backscatter quality based on the output of those algorithms. Thus, while we are currently developping *Iskaffe* for our own use, we are actively seeking collaborators and feedback to help developing more universal algorithms and come up with backscatter quality standards.

*Iskaffe* is still at an early stage of development so it has fewer features and more bugs than you would want. Please be patient. For a starter, its main current limitations are that it only works with Kongsberg EM Series .all files for now, and that it does not like loading too many files at a time. The main features of the latest release are:
* Detect and alarm when a dataset contains data in more than one acquisition mode
* Display backscatter, bathymetry, slope, and acquisition mode
* Find, display, and count "bad" soundings and "bad" pings, for each loaded line
* Find, display, and count the grid cells where data have not been acquired yet
* Output analysis results

## Getting Started

### Dependencies

* For the source code: [MATLAB R2020b](https://au.mathworks.com/products/get-matlab.html) and a few required toolboxes (to list).
* For the compiled executable: [MATLAB Runtime v9.9](https://au.mathworks.com/products/compiler/matlab-runtime.html).
  * Note: if you install the app using the binary installer, the setup wizard will automatically detect whether you have the correct version of MATLAB Runtime installed and, if not, allow you to download and install it then.

### Installing

* For the source code: Clone the repository.
* For the compiled executable: Preferably, [download the binary installer from the releases page](https://github.com/alexschimel/Iskaffe/releases), execute the installer, and follow the instructions of the setup wizard. The setup wizard requires an internet connection. The setup wizard will check if you have the appropriate version of MATLAB Runtime installed and, if not, let you download and install it.
  * Alternatively, if you already have the appropriate version of MATLAB Runtime installed, you can simply [download the binary executable and accompanying files from the releases page](https://github.com/alexschimel/Iskaffe/releases).

### Executing program

* For the source code: Start MATLAB, navigate to the root directory of the source code, and type `Iskaffe` in the Command Window.
* For the compiled executable: Execute the installed program.

## Help

There is no documentation yet, but a powerpoint presentation is available for download [from the releases page](https://github.com/alexschimel/Iskaffe/releases).

## Authors

* Alexandre Schimel, Margaret Dolan, Shyam Shand, Terje Thorsnes, Lilja Rún Bjarnadóttir ([The Geological Survey of Norway](https://www.ngu.no))
* Contact: alexandre.schimel@ngu.no

## Version History

[See the releases page](https://github.com/alexschimel/Iskaffe/releases)

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

## Acknowledgments

Iskaffe logo from photo by [Talia Anna](https://unsplash.com/photos/kZt3uHtIyiI) on [Unsplash](https://unsplash.com)
