# Base POM

Parent [Maven POM][maven-pom-intro] for common Maven projects. Supports good practices such as unit plus integration testing, or dependency convergence. And this is done without adding any additional dependency to the project, only Maven plugins. This way it is useful for any kind of project, no matter what actual technologies it is based on.

[![Maven Central](https://img.shields.io/maven-central/v/com.bernardomg.maven/base-pom.svg)][maven-repo]

[![Release docs](https://img.shields.io/badge/docs-release-blue.svg)][site-release]
[![Development docs](https://img.shields.io/badge/docs-develop-blue.svg)][site-develop]

## Features

- Build validation.
- Maven Site reports added for the project.
- Common build and report plugins.
- Deployment plugin prepared to deploy into the distribution management repo.
- Manifest prepared with default configuration.
- Sets the JDK version to be used by the project.
- Sets the project default encoding to UTF-8.

## Example

The [Library Maven Archetype][library-archetype] makes use of this POM. And extends it. This is an easy way to check how the POM can be used and modified.

## Usage

Use as a parent POM on any Maven project:

```
<parent>
    <groupId>com.bernardomg.maven</groupId>
    <artifactId>base-pom</artifactId>
    <version>(Check POM or badges)</version>
</parent>
```

### Installing

If needed, the project can be added to the local Maven repository with the following command:

```
mvn install
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

[maven-pom-intro]: https://maven.apache.org/guides/introduction/introduction-to-the-pom.html#Project_Inheritance
[library-archetype]: https://github.com/Bernardo-MG/library-maven-archetype

[maven-repo]: http://mvnrepository.com/artifact/com.bernardomg.maven/base-pom
[issues]: https://github.com/Bernardo-MG/base-pom/issues
[license]: http://www.opensource.org/licenses/mit-license.php
[scm]: https://github.com/Bernardo-MG/base-pom
