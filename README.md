![GitHub Repo stars](https://img.shields.io/github/stars/nopenix/crafty-control)
[![Build and Push to Docker Hub](https://github.com/NopeNix/crafty-control/actions/workflows/Build%20and%20Push%20to%20Docker%20Hub.yml/badge.svg)](https://github.com/NopeNix/crafty-control/actions/workflows/Build%20and%20Push%20to%20Docker%20Hub.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/nopenix/crafty-control)


# crafty-control
Control your Crafty Vaporizer by Storz &amp; Bickel from a Web Page! 
Online web application is available at:
[https://sb.nopenix.de](https://sb.nopenix.de)
 
## Summary
This app uses the Web Bluetooth specification to control your Crafty vaporizer.
Supported platforms include the following (using modern versions of Chrome):
* Windows
* Mac
* Linux
* Android

## Docker Container
A Docker Container is available on the [Docker Hub](https://hub.docker.com/r/nopenix/crafty-control)
### Example docker-compose
```yml
version: "3"
services:
    app:
        image: nopenix/crafty-control
        restart: unless-stopped
        ports:
            - 8100:8100
```

## Screenshots
Below are screenshots of the Crafty Control app in both Light and Dark themes, showcasing various pages and states.

### Dark Theme
| **Start Page** | **Connecting** | **Connected** | **Settings** | **Informations** |
|--------------|----------------|---------------|--------------|-----------------|
| ![Dark Start](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/dark-start.png) | ![Dark Connecting](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/dark-connecting.png) | ![Dark Connected](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/dark-connected.png) | ![Dark Settings](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/dark-settings.png) | ![Dark Info](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/dark-info.png) |

### Light Theme
| **Start Page** | **Connecting** | **Connected** | **Settings** | **Informations** |
|--------------|----------------|---------------|--------------|-----------------|
| ![Light Start](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/light-start.png) | ![Light Connecting](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/light-connecting.png) | ![Light Connected](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/light-connected.png) | ![Light Settings](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/light-settings.png) | ![Light Info](https://raw.githubusercontent.com/NopeNix/crafty-control/main/screenshots/light-info.png) |

## Features
- **Dark Theme Support**: The app now includes a dark theme, with the ability to toggle between Light, Dark, and System Default modes. The theme respects system preferences by default and allows user overrides via the Settings page. Text visibility has been optimized for dark mode with forced white text colors.

## Getting Started
In order to run the application locally, simply issue the following:
```shell 
npm install
ionic serve
export NODE_OPTIONS=--openssl-legacy-provider
```
In order to build the application for deployment:
```
ionic build --public-url=./
```
## Built With
* Typescript
* Ionic React
* ReactJS
* Web Bluetooth Specification
* Uses React Hooks Context and Reducer for Flux like State Management
## Authors
- J-Cat (Original Author)
- NopeNix (Dockerized App + Created Dark Theme)
## License
This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](http://creativecommons.org/licenses/by-nc/4.0/)
 
## Acknowledgments
* Thanks to ligi who wrote the Android/Java [Vaporizer Control Application](https://github.com/ligi/VaporizerControl), which allowed me to more easily identify many of the Crafty service and characteristic UUIDs without having to figure it out (it didn't have all of them but it definitely helped!)