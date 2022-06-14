# Parent POMs

Parent [Maven POM][maven-pom-intro] for common Maven projects. Supports good practices such as unit plus integration testing, or dependency convergence. And this is done without adding any additional dependency to the project, only Maven plugins. This way it is useful for any kind of project, no matter what actual technologies it is based on.

## Features

- [Build validation][build-validation].
- [Maven Site reports][site-reports] added for the project.
- Common build and report [plugins][plugins-list].
- Deployment plugin prepared to deploy into the distribution management repo.
- Manifest prepared with default configuration.
- Sets the JDK version to be used by the project.
- Sets the project default encoding to UTF-8.

## Dependencies

No Maven dependency is included in the POM, only Maven plugins.

## Example

The [Library Maven Archetype][library-archetype] makes use of this POM. And extends it. This is an easy way to check how the POM can be used and modified.

[maven-pom-intro]: https://maven.apache.org/guides/introduction/introduction-to-the-pom.html#Project_Inheritance

[library-archetype]: https://github.com/Bernardo-MG/library-maven-archetype

[build-validation]: ./build_validation.html
[site-reports]: ./site_reports.html
[plugins-list]: ./plugins_list.html
