Greenery

This is a CLI application meant to assist people in the United States with their garden planning.  First the user types in the two letter abbreviation for the State their garden will be in.  Then the user will be prompted to select a city within this state that is the closest to their gardens location if multiple city/hardiness zones exist.  The app will then read which USDA hardiness zone that city is in, and print out a list of plants that can grow in that climate.

Current build status:  Under development



Getting Started

  Step 1:
In your terminal, type “bundle install”

  Step 2:
In your terminal, type “ruby run.rb”

  Step 3:
After reading the prompt, please type in the two letter abbreviation for your state.

  Step 4:
If there are multiple zones for your state, you will be prompted to select the city closest to you.  Please use the arrow keys to select which city is closest to your garden and press enter.

  Step 5:
You will now see your hardiness zone and a list of plants that can grow in your region.  Google what month you can plant these plants in your hardiness zone and have fun gardening!

Websites referenced for data
    • Infoplease (for states) - https://www.infoplease.com/us/postal-information/state-abbreviations-and-state-postal-codes
    • Wikipedia (for cities and their zone relations) - https://en.wikipedia.org/wiki/Hardiness_zone#USDA_hardiness_zones
    • Almanac (for plants)- https://www.almanac.com/plants/hardiness/2

Installation

First
You will need developer software, I used Visual Studio Code.  Depending on your operating system you should follow these instructions:
Windows:  https://code.visualstudio.com/docs/setup/windows
macOS:  https://code.visualstudio.com/docs/setup/mac
Linux:  https://code.visualstudio.com/docs/setup/linux

Second
You will need a Ruby library on your machine.  Within terminal please follow the instructions found here:  https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/

Third
You will need to clone the repo for this software and pull it up in VS Code.  In your terminal please navigate to the folder you would like the files for this software to be and type the following:
git clone git@github.com:FluxOfPingIntegers/first-project.git
cd phase1_project
code .

Finally
you are ready to proceed to the Getting Started section of this README
Contribute
  This is a project I am building for school (and for fun) and I am not currently looking for contributors.  This may change in the future though!

Author
-  Ryan Schleck – Flatiron student

Acknowledgments

    • The very supportive slack community at Flatiron

Tech/Gems used
    • Ruby
    • All Ruby gems and their versions can be found in Gemfile.lock


License
- MIT License -

Copyright 2021 Anyone
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.