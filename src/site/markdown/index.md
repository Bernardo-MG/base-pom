# Parent POMs

While parent [POMs][maven-pom-intro] are mainly used for multi-module projects some, like the one in this project, are meant for standalone ones. This way it is possible taking advantage of Maven's dependency system to share a common configuration among several Java projects.

## Features

- Sets the JDK version (Java 1.7 by default) to be used by the project.
- Sets the encoding (UTF-8 by default) for all the project.
- [Build validation][build-validation].
- [Maven Site reports][site-reports] added for the project.
- Common build and report [plugins][plugins-list].
- Deployment plugin prepared to deploy into the distribution management repo.
- Manifest prepared with default configuration.

## JDK support

Only JDK 1.7 onward is supported. This is due to the plugins included in the POM.

## Archetype

Sort of an extension to this project, the [Library Maven Archetype][library-archetype] makes use, and extends over, this POM. Which means it not only is useful for creating new projects, but also shows how to use this one.

[maven-pom-intro]: https://maven.apache.org/guides/introduction/introduction-to-the-pom.html#Project_Inheritance

[library-archetype]: https://github.com/Bernardo-MG/library-maven-archetype

[build-validation]: ./build_validation.html
[site-reports]: ./site_reports.html
[plugins-list]: ./plugins_list.html
