### Greenery

This is a CLI application meant to assist people in the United States with their garden planning.  First the user types in the two letter abbreviation for the State their garden will be in.  Then the user will be prompted to select a city within this state that is the closest to their gardens location if multiple city/hardiness zones exist.  The app will then read which USDA hardiness zone that city is in, and print out a list of plants that can grow in that climate.

# Current build status:  Under development



## Getting Started

* Step 1:
You will need to install all of the ruby gems required to run this program.  In your terminal enter
```bash
bundle install
```

* Step 2:
You are now ready to start the program, in your terminal enter
```bash
bin/run
```

* Step 3:
After reading the prompt, please type in the two letter abbreviation for your state.

* Step 4:
If there are multiple zones for your state, you will be prompted to select the city closest to you.  Please use the arrow keys to select which city is closest to your garden and press enter.

* Step 5:
You will now see your hardiness zone and a list of plants that can grow in your region.  Google what month you can plant these plants in your hardiness zone and have fun gardening!

Websites referenced for data
    • [Infoplease](https://www.infoplease.com/us/postal-information/state-abbreviations-and-state-postal-codes) (for states)
    • [Wikipedia](https://en.wikipedia.org/wiki/Hardiness_zone#USDA_hardiness_zones) (for cities and their zone relations)
    • [Almanac](https://www.almanac.com/plants/hardiness/2) (for plants)

## Installation

* First
You will need developer software, I used Visual Studio Code.  Depending on your operating system you should follow these instructions:
[Windows](https://code.visualstudio.com/docs/setup/windows)
[macOS](https://code.visualstudio.com/docs/setup/mac)
[Linux](https://code.visualstudio.com/docs/setup/linux)

* Second
You will need a Ruby library on your machine.  Within terminal please follow the instructions found [here](https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/)

* Third
You will need to clone the repo for this software and pull it up in VS Code.  In your terminal please navigate to the folder you would like the files for this software to be and type the following:
```bash
git clone git@github.com:FluxOfPingIntegers/first-project.git
```
you will then need to switch to the directory you just cloned by entering
```bash
cd phase1_project
```
At this point it's time to fire up VS code!  In your terminal enter
```bash
code .
```

* Finally
you are ready to proceed to the Getting Started section of this README

## Contribute
  This is a project I am building for school (and for fun) and I am not currently looking for contributors.  This may change in the future though!

## Author
-  Ryan Schleck – Flatiron student

## Acknowledgments

    • The very supportive slack community at Flatiron

## Tech/Gems used
    • Ruby
    • All Ruby gems and their versions can be found in Gemfile.lock


## License
[MIT](https://choosealicense.com/licenses/mit/)