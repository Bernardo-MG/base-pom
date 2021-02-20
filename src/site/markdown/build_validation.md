# Build validation

By using the base POM as the parent POM some validation rules will be added to the inheritor project.

Some of these rules can be harsh, and all will stop the building procedure if their criteria are not met. This way they ensure that the project is correctly configured before compiling.

Of course all the usual Maven validations apply, these are just an additional layer of robustness for the build.

## Enforcer

Most of the validation is taken care by the [Maven Enforcer Plugin][enforcer-plugin].

It includes several rules, all defined in its configuration node, which are not meant to be disabled or overriden. Still, if for some reason this was needed each of them, as described below, has its own id.

### Dependencies convergence rule

Dependency convergence just means that when several versions of a same dependency appear only one of them should be used.

Maven already does this by default, taking only the first version found, which is error prone. The alternative is excluding all the unwanted versions, but this is not only error prone too, it is also tedious.

While the basic convergence rule forces the project to manually exclude all the conflicts, the more lenient *requireUpperBoundDeps* rule only requires ensuring that Maven ends using the latest version for all the transitive dependencies.

Which means that fixing dependency convergence conflicts just requires adding the latest version of the library to the POM.

###  Required Java version rule

The Java version set in the *maven.compiler.source* property will be required when compiling. If using one older the one defined for compilation the compilation process will fail.

###  Required Maven version rule

Only current Maven versions are accepted when building the project, if the project is compiled by using one version older the one defined for compilation the compilation process will fail.

It will check for Maven 3.0.1 by default, but if the *maven.version* property is changed then that version will be used in the rule.

### Plugin versions rule

This rule requires that all the plugins set in the POM have a version defined for them.

### Required properties rule

The following properties are required to be set as part of the POM properties:

#### Manifest

|Property|Usage|
|---|---|
|manifest.name|Name for the manifest|

## Overriding enforcer rules

Each validation rule is bound to a different execution, each with its own id. It is not recommended editing them in any way, still the possibility is there if needed.

|Rule|Id|
|---|---|
|Dependencies convergence|enforce-convergence|
|Required Java version|enforce-javaVersion|
|Plugin versions|enforce-pluginVersion|
|Manifest|enforce-manifest|

## Additional verifications

Some of the [reports][reports] included for the Maven site will indicate possible problems to fix and correct. 

While a few of these problems can be important, and probably should be fixed before any release, the plugins are not set to stop the build when they are found. But if needed the plugins can be set up to ensure all these verifications pass, and stop the build if they don't.

[enforcer-plugin]: https://maven.apache.org/enforcer/maven-enforcer-plugin/

[reports]: ./site_reports.html
