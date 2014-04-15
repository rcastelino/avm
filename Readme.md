# avm

Appium version manager, no subshells, no profile setup, no convoluted api, just _simple_.

## Installation

    $ npm install -g appium-version-manager

or

    $ make install

to `$HOME`. Prefix later calls to `avm` with `PREFIX=$HOME`

    $ PREFIX=$HOME make install

### Installing Binaries

Install a few appium versions:

    $ avm latest
    $ avm 0.16.0
    $ avm 0.17.6

Type `avm` to prompt selection of an installed appium. Use the up /
down arrow to navigate, and press enter or the right arrow to
select, or ^C to cancel:

    $ avm

      0.16.0
    ο 0.17.6
      0.18.1

Use or install the latest official release:

    $ avm latest

Switch to the previous version you were using:

    $ avm prev

### Removing Versions

Remove some versions:

    $ avm rm 0.16.0 0.18.1

Instead of using `rm` we can simply use `-`:

    $ avm - 0.18.1

### Appium Usage

When running multiple versions of appium, we can target
them directly by asking `avm` for the binary path:

    $ avm bin 0.16.0
    /usr/local/avm/versions/0.16.0/node_modules/appium/bin/appium.js

Or by using a specific version through `avm`'s `use` sub-command:

    $ avm use 0.18.1 -p 4723 -U c9ccb3bs43ef70cb0d79a113c21a6b4bbee03e28 --app com.app.bundle.id

## Usage

Output from `avm --help`:

    Usage: avm [options] [COMMAND] [args]

    Commands:

      avm                            Output versions installed
      avm latest                     Install or activate the latest appium release
      avm <version>                  Install appium <version>
      avm use <version> [args ...]   Execute appium <version> with [args ...]
      avm bin <version>              Output bin path for <version>
      avm rm <version ...>           Remove the given version(s)
      avm prev                       Revert to the previously activated version
      avm --latest                   Output the latest appium version available
      avm ls                         Output the versions of appium available

    Options:

      -V, --version   Output current version of avm
      -h, --help      Display help information

    Aliases:

      which   bin
      as      use
      list    ls
      -       rm

## Details

 `avm` by default installs appium to _/usr/local/avm/versions_, from
 which it can see what you have currently installed, and activate previously 
 installed versions of appium when `avm <version>` is invoked again.

 Activated appium binary is then installed by symlinking to _/usr/local/bin/appium_.

 To alter where `avm` operates simply export __AVM_PREFIX__ to whatever you prefer.
 It defaults to _/usr/local_

## License

(The MIT License)

Copyright (c) 2014 Abhinav Singh &lt;mailsforabhinav@gmail.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
