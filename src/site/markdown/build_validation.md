# Build validation

Validation rules will be applied to the inheritor project. These can be harsh, and will stop the building procedure if any of them fails, ensuring the project is correctly configured.

They will extend over what Maven already offers, just adding an additional layer of robustness to the build.

## Enforcer

Most of the validation is taken care by the [Maven Enforcer Plugin][enforcer-plugin].

It includes several rules, all defined in its configuration node, which are not meant to be disabled or overriden. Still, if for some reason this was needed each of them, as described below, has its own id.

### Dependencies convergence rule

Dependency convergence just means that when several versions of a same dependency appear only one of them should be used.

Maven already does this by default, taking only the first version found, which is error prone. The alternative is excluding all the unwanted versions, but this is not only error prone too, it is also tedious.

While the basic convergence rule enforces excluding all the conflicts, the more lenient *requireUpperBoundDeps* rule only requires ensuring that the version actually used by Maven is the latest.

With this fixing dependency convergence conflicts just requires adding the latest version of the library to the POM.

###  Required Java version rule

Only current Java versions are accepted when building the project. Meaning that if the project is compiled by using one version older than Java 1.7 it will fail.

### Plugin versions rule

This rule requires that all the plugins set in the POM should have a version defined for them.

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
