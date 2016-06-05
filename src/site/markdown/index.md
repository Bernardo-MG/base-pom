# Parent POMs

Maven offers an inheritance mechanism for POM files in the shape of parent POMs. Declaring them in the project POM allows sharing common configuration among several projects, and they work in all aspects just like any Maven dependency.

This is commonly used on module-based projects, but may be used on standalone ones, greatly reducing the need to prepare new projects, which will just need to extend or override what the parent POM already has.

More information about this can be found in the [introduction to the Maven POM][maven-pom-intro].

## Features

- Sets the encoding (UTF-8 by default) for all the project.
- Sets the JDK version (Java 1.7 by default) to be used by the project.
- [Build validation][build-validation].
- [Maven Site reports][site-reports] added for the project.
- Common build and report [plugins][plugins-list].
- Deployment plugin prepared to deploy into the distribution management repo.
- Manifest prepared with default configuration.

## JDK support

Only JDK 1.7 onward is supported. This is due to the plugins included in the POM.

## Archetype

Sort of an extension to this project, the [Library Maven Archetype][library-archetype] makes use, and extends over, this POM.

It gives several examples and hints about how to add over what the Base POM offers.

[maven-pom-intro]: https://maven.apache.org/guides/introduction/introduction-to-the-pom.html#Project_Inheritance

[library-archetype]: https://github.com/Bernardo-MG/library-maven-archetype

[build-validation]: ./build_validation.html
[site-reports]: ./site_reports.html
[plugins-list]: ./plugins_list.html
