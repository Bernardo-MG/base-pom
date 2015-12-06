# Parent POMs

Maven offers an inheritance mechanism for POM files, so a common configuration may be shared among several projects, which consists on just adding a parent POM as a special sort of dependency.

This is commonly used on module-based projects, but can be done on any kind of project, and making use of the usual Maven dependency handling systems to avoid having to install anything manually.

More information about this can be found in the [introduction to the Maven POM][maven-pom-intro], which is a recommended read before using a parent POM.

## Features

This base POM is meant to ease setting up a new generic Java project, and offers a series of features with that aim:

- Sets UTF-8 encoding for all the project.
- Sets Java 1.7 as the compatible version for the compiler.
- [Build validation][build-validation].
- [Maven Site reports][site-reports] added for the project.
- Common plugins configured.
- Deployment plugin prepared to deploy into .
- Manifest added with default configuration.

[maven-pom-intro]: https://maven.apache.org/guides/introduction/introduction-to-the-pom.html#Project_Inheritance

[build-validation]: build_validation.html
[site-reports]: site_reports.html
