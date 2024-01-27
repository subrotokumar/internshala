<img src="./assets/icons/logo.png" width="100">

# Internshala

[![GitHub stars](https://img.shields.io/github/stars/subrotokumar/internshala)](https://github.com/subrotokumar/internshala/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/subrotokumar/internshala)](https://github.com/subrotokumar/internshala/network)
[![GitHub issues](https://img.shields.io/github/issues/subrotokumar/internshala)](https://github.com/subrotokumar/internshala/issues)
[![GitHub license](https://img.shields.io/github/license/subrotokumar/internshala)](https://github.com/subrotokumar/internshala/blob/main/LICENSE)

> Trusted by 21 million College students & Graduates.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Architecture](#architecture)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Technology Used**:

  ![](https://skillicons.dev/icons?i=dart,flutter&theme=light)

  Packages used: **Dio**, **Retrofit**, **Riverpod**

- **Clean Architecture**:
  Project adheres to the principles of Clean Architecture, promoting a clear separation of concerns between the business logic, presentation layer, and data sources.

## Screenshots

<img src="screenshot/splash.jpg" width="250">&nbsp;&nbsp;&nbsp;
<img src="screenshot/internship.jpg" width="250">&nbsp;&nbsp;&nbsp;
<img src="screenshot/drawer.jpg" width="250"><br><br>
<img src="screenshot/home.jpg" width="250">&nbsp;&nbsp;&nbsp;
<img src="screenshot/filter.jpg" width="250">

## Architecture

- 📦 **lib**
  - 📂 **config**
  - 📂 **core**
  - 📂 **feature**
    - 📂 **feature_1**
    - 📂 **feature_2**
      - 📂 **data**
        - 📂 **models**
        - 📂 **repositories**
        - 📂 **source**
          - 📂 **remote**
          - 📂 **local**
      - 📂 **domain**
        - 📂 **entities**
        - 📂 **repositories**
        - 📂 **usecase**
      - 📂 **presentation**
        - 📂 **providers**
        - 📂 **screens**
        - 📂 **widgets**
  - 📄**app.dart**
  - 📄**main.dart**

## Getting Started

### Prerequisites

- List any prerequisites here. For example:
  - [Flutter](https://flutter.dev/docs/get-started/install)
  - [Dart](https://dart.dev/get-dart)

### Installation

```sh
git clone https://github.com/subrotokumar/internshala.git

cd internshala

dart run build_runner build --delete-conflicting-outputs

flutter run
```
