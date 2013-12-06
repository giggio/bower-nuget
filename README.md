bower-nuget
===========

A package manager for the web - in nuget for Visual Studio.

This project allows you to add [bower](http://bower.io) to Visual Studio using Nuget. This way you will always have you JavaScript dependencies up to date and won't have to add library files to source control. You already use nuget to be able to not add dlls to source control, now you don't need to add library .js's.

## Install

    nuget install bower.js

or

    Install-Package bower.js

## Running

Just install the package using nuget as shown above and you can already use it in package manager console. Change to the web project directory (cd myproject) and you can already run bower commands just as you would expect.

To add a package:

    bower install <packageName> --save

To remove a package:

    bower uninstall <packageName> --save

Remember to use the --save, as it will update your bower.json file. This will ensure your packages are restored on the build server or on new working directories (team computers, etc).

For more references go to the [bower](http://bower.io/) website.

Packages by default will be saved to 'Scripts/lib' folder. You can change the defaults to whatever you like on the .bowerrc file on the root folder of the project. If you have already installed packages, just change the directory and run bower install (or build) and the packages will be installed to the new directory. You may then optionally remove the old directory.

This package will run bower install on every build, and this WILL make your build slower. If you don't want it to do that set the "DONT\_INSTALL\_BOWER" environment variable to any value. You have to do it before you start Visual Studio, not on the package manager console, otherwise it will not work.

Bower-nuget will work well with build servers. During build the packages will be installed on the server, as they are on the client. Remember that if you want the JavaScript library files to be copied over along with the project files you have to add them to the Visual Studio project (but not to source control, add the lib folder to gitignore).

## Support

* On Github Issues: [https://github.com/giggio/bower-nuget/issues](https://github.com/giggio/bower-nuget/issues)

## Maintainers

* [Giovanni Bassi](http://blog.lambda3.com.br/L3/giovannibassi/), [Lambda3](http://www.lambda3.com.br), [@giovannibassi](http://twitter.com/giovannibassi)

This software is free software.
