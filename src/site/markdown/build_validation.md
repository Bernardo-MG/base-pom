# Build validation

The POM includes some validation rules which will be applied to the inheritor project, stopping the building procedure if any of them fails. This validation is meant to serve for ensuring the project is correctly configured, and will work in addition to the validation which Maven already does.

## Enforcer

Several rules from the [Maven Enforcer Plugin][enforcer-plugin] will be used to verify that the POM is correctly configured.

### Dependencies convergence

Dependency convergence just means that when several versions of a same dependency appear only one of them should be used.

Maven already does this by default, taking only the first version found, which is error prone. The alternative is excluding all the unwanted versions, but this is not only error prone too, it is also tedious.

While the basic convergence rule enforces excluding all the conflicts, the more lenient *requireUpperBoundDeps* rule only requires ensuring that the version actually used by Maven is the latest.

With this fixing dependency convergence conflicts just requires adding the latest version of the library to the POM.

###  Required Java version

Only current Java versions are accepted when building the project. Meaning that if the project is compiled by using one version older than Java 1.7 it will fail.

### Plugin versions

This rule requires that all the plugins set in the POM should have a version defined for them.

### Required properties

The following properties are required to be set as part of the POM properties:

#### Manifest

|Property|Usage|
|---|---|
|manifest.name|Name for the manifest|

## Overriding enforcer rules

Each validation rule is bound to a different execution, each with its own id, so they can be overriden easily:

|Rule|Id|
|---|---|
|Dependencies convergence|enforce-convergence|
|Required Java version|enforce-javaVersion|
|Plugin versions|enforce-pluginVersion|
|Manifest|enforce-manifest|

To override them, just add a plugin configuration similar to this:

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-enforcer-plugin</artifactId>
    <executions>
        <execution>
            <id>enforce-javaVersion</id>
            <goals>
                <goal>enforce</goal>
            </goals>
            <configuration>
                <rules>
                    <requireJavaVersion>
                        <version>${java.version}</version>
                    </requireJavaVersion>
                </rules>
            </configuration>
        </execution>
    </executions>
</plugin>
```

Where 'java.version' is a new property, used to override the default configuration.

## Additional verifications

Some of the [reports][reports] included for the Maven site will indicate possible problems to fix and correct. 

While a few of these problems can be important, and probably should be fixed before any release, the plugins are not set to stop the build when they are found. Still, if needed the plugins can be set up to ensure all these verifications pass, and stop the build if they don't.

[enforcer-plugin]: https://maven.apache.org/enforcer/maven-enforcer-plugin/

[reports]: ./site_reports.html
