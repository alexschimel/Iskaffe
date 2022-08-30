![](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/splash.png?raw=true)

# *Iskaffe* 

Multibeam backscatter quality control.

[![](https://github.com/alexschimel/Iskaffe/blob/main/Iskaffe_resources/download.png?raw=true)](https://github.com/alexschimel/Iskaffe/releases/download/v0.1.3/iskaffe_v013_setup.exe)

## Description

*Iskaffe* (Norwegian Bokmål for "iced coffee") is a free and open-source app to help assess the quality of the seafloor backscatter data acquired by multibeam echosounders. *Iskaffe* uses the [CoFFee multibeam data processing toolbox](https://github.com/alexschimel/CoFFee) (hence the name). It is coded in [MATLAB](https://www.mathworks.com/products/matlab.html), but is also available as a standalone application that does not require a MATLAB licence (see the Dependencies and Installing sections).

The main purpose of *Iskaffe* is to serve as a platform to help the community of multibeam backscatter users to come up with 1) a set of algorithms that assess various aspects of backscatter quality, and 2) standards of backscatter quality based on the output of those algorithms. Thus, while we are currently developping *Iskaffe* for our own use, we are actively seeking collaborators and feedback to help developing more universal algorithms and come up with backscatter quality standards.

*Iskaffe* is still at an early stage of development so it has fewer features and more bugs than you would want. Please be patient. For a starter, its main current limitations are that it only works with Kongsberg EM Series .all files for now, and that it does not like loading too many files at a time. The main features of the latest release are:
* Detect and alarm when a dataset contains data in more than one acquisition mode
* Display backscatter, bathymetry, slope, and acquisition mode
* Find, display, and count "bad" soundings and "bad" pings, for each loaded line
* Find, display, and count the grid cells where data have not been acquired yet
* Output analysis results

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

There is no documentation yet, but a powerpoint presentation is available for download [from the releases page](https://github.com/alexschimel/Iskaffe/releases).

If you want to receive notifications of future releases (recommended), you may create a github account, and on this repository click on 'Watch', then 'Custom', and choose 'Releases'. Verify in your GitHub settings that you are set to receive 'Watching' notifications.

For more information, contact the authors.

## Authors

* Alexandre Schimel([The Geological Survey of Norway](https://www.ngu.no), alexandre.schimel@ngu.no)
* Margaret Dolan, Shyam Shand, Terje Thorsnes, Lilja Rún Bjarnadóttir (The Geological Survey of Norway)

## Version History

[See the releases page](https://github.com/alexschimel/Iskaffe/releases)

## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

## See Also

All apps based on CoFFee:
* *Grounds*: https://github.com/alexschimel/Grounds
* *Espresso* (private)
* *Iskaffe*: https://github.com/alexschimel/Iskaffe


## Acknowledgments

Iskaffe logo from photo by [Talia Anna](https://unsplash.com/photos/kZt3uHtIyiI) on [Unsplash](https://unsplash.com)

## References 

None to date.

## For developers

*Iskaffe* is not the only application built on *CoFFee* (see list above). The philosophy behind their development is that all back-end (processing) goes in *CoFFee* while all front-end (display, user interface, application) goes in those apps. As a result, it is possible that *CoFFee* gets ahead of *Iskaffe* in terms of development, so careful version controlling is necessary.

We use [Semantic Versioning](https://semver.org/) to attribute version numbers:
* The version of CoFFee is hard-coded in function `CFF_coffee_version.m`.
* The version of *Iskaffe* is a static property of the app (`Version`), alongside the CoFFee version it was built on (`CoffeeVersion`).

A careful sequence to develop *Iskaffe* is the following:

1. Checkout the latest commits on the main branches of both *CoFFee* and *Iskaffe*.
2. Check if that latest version of *Iskaffe* uses the latest version of *CoFFee* (in the code, or warning at start-up). 
3. If *Iskaffe* is running on an older version of *CoFFee*:
    * Start with updating *Iskaffe* to use that latest version of *CoFFee*.
    * Before committing those changes, increase *Iskaffe*'s version number and update which *CoFFee* version it runs on. 
    * After committing, remember to add the new tag on git.
4. Develop *Iskaffe* as you wish. Remember that all processing goes ideally in *CoFFee* and all display and user interface on *Iskaffe*.
5. When done, if *CoFFee* was modified:
    * Increase its version number.
    * Push it up on git first. Add a tag.
6. Increase version number for *Iskaffe* (and update which *CoFFee* version it was built on).
7. If you wish to compile this new version of *Iskaffe*:
    * In MATLAB, run `restoredefaultpath` to ensure you get a clean path. 
    * Run *Iskaffe* and check a last time it all works fine.
    * Double-click on the file `Iskaffe.prj` to run the application compiler with existing settings:
      * Remove the main file `Iskaffe.mlapp` and add it again for the application compiler to find all dependencies.
      * Update the version number in the setup filename, the application information, and the default installation folder.
      * Save.
      * Click on `Package`.
    * Install the new executable with the setup file.
    * Test that the setup works correctly.
    * Test that the installed software runs correctly.
8. Push *Iskaffe* up on git. Add a version tag.
9. If you compiled that new version:
    * Create a new release on github from the tag. 
    * Add the binary setup, and a zipped version of the `for_redistribution_files_only` folder.
