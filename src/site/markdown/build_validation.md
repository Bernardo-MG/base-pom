# Build validation

The POM will enforce a set of validation rules. A bunch of them can be harsh, as they will stop any project from building if their criteria are not met. But this also ensures that the project only generates stable artifacts, adding an additional layer of robustness.

## Enforcer

Most validation rules come from the [Maven Enforcer Plugin][enforcer-plugin].

### Dependencies convergence rule

Dependency convergence applies when there are several transitive dependencies to a single artifact, but with multiple versions of it. This rule makes sure only one of those versions is used. While Maven does this by default, this is error prone. As it will take first version it finds. There is no way to predict which one it will be.

This is fixed with the *requireUpperBoundDeps*. This means that the enforcer will stop building with convergence errors, and these errors can be fixed by declaring the latest version of the library in the POM.

###  Required Java version rule

The *maven.compiler.source* property sets the minimum Java version for the project. This rule stops the project from building when using an older Java version.

###  Required Maven version rule

The *maven.version* property sets the minimum Maven version for the project. This rule stops the project from building when using an older Maven version.

### Plugin versions rule

This rule requires that all the plugins set in the POM have a version defined.

### Required properties rule

The following properties are required as part of the POM properties:

#### Manifest

|Property|Usage|
|---|---|
|manifest.name|Name for the manifest|

## Overriding enforcer rules

These rules are not meant to be disabled. But it is possible to override them, as each is executed with their own unique id.

|Rule|Id|
|---|---|
|Dependencies convergence|enforce-convergence|
|Required Java version|enforce-javaVersion|
|Plugin versions|enforce-pluginVersion|
|Manifest|enforce-manifest|

## Additional validations

Some of the [reports][reports] will show possible problems to fix and correct. 

While a few of these problems can be important, and probably should be fixed before any release, the plugins are not set to stop the build when they are found. But if needed the plugins can be set up to ensure all these verifications pass, and stop the build if they don't.

[enforcer-plugin]: https://maven.apache.org/enforcer/maven-enforcer-plugin/

[reports]: ./site_reports.html
