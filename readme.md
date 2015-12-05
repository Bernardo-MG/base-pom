# Wandrell's Base POM

Basic POM for reusing on Maven-based Java projects.

[![Maven Central](https://img.shields.io/maven-central/v/com.wandrell.maven/base-pom.svg)][maven-repo]
[![Bintray](https://api.bintray.com/packages/bernardo-mg/maven/base-pom/images/download.svg)][bintray-repo]

[![Release docs](https://img.shields.io/badge/docs-release-blue.svg)][site-release]
[![Development docs](https://img.shields.io/badge/docs-develop-blue.svg)][site-develop]

## Documentation

Documentation is always generated for the latest release, kept in the 'master' branch:

- The [latest release documentation page][site-release].

Documentation is also generated from the latest snapshot, taken from the 'develop' branch:

- The [the latest snapshot documentation page][site-develop].

The documentation site sources come along the source code (as it is a Maven site), so it is always possible to generate them using the following Maven command:

```
$ mvn verify
```

## Usage

The application is coded in Java, using Maven to manage the project.

### Prerequisites

The project has been tested on the following Java versions:
* JDK 7
* JDK 8
* OpenJDK 7

All other dependencies are handled through Maven, and noted in the included POM file.

### Installing

The recommended way to install the project is by setting up your preferred dependencies manager. To get the configuration information for this check the [Bintray repository][bintray-repo], or the [Maven Central Repository][maven-repo].

If for some reason manual installation is necessary, just use the following Maven command:

```
$ mvn install
```

## Collaborate

Any kind of help with the project will be well received, and there are two main ways to give such help:

- Reporting errors and asking for extensions through the issues management
- or forking the repository and extending the project

### Issues management

Issues are managed at the GitHub [project issues tracker][issues], where any Github user may report bugs or ask for new features.

### Getting the code

If you wish to fork or modify the code, visit the [GitHub project page][scm], where the latest versions are always kept. Check the 'master' branch for the latest release, and the 'develop' for the current, and stable, development version.

## License

The project has been released under the [MIT License][license].

[bintray-repo]: https://bintray.com/bernardo-mg/maven/base-pom/view
[maven-repo]: http://mvnrepository.com/artifact/com.wandrell.maven/base-pom
[issues]: https://github.com/Bernardo-MG/base-pom/issues
[license]: http://www.opensource.org/licenses/mit-license.php
[scm]: https://github.com/Bernardo-MG/base-pom
[site-develop]: http://docs.wandrell.com/development/maven/base-pom
[site-release]: http://docs.wandrell.com/maven/base-pom
