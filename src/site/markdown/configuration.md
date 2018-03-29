# Default Configuration

## Properties

The following properties are set, these are used to define values manually and can be overwritten to change the configuration:

|Variable|Value|Usage|
|---|---|---|
|files.encoding|UTF-8|Defines the file encoding|
|java.version|1.7|Defines the JDK version|

The following properties are set, these are used by Maven plugins:

|Variable|Value|Usage|
|---|---|---|
|project.build.sourceEncoding|Same as files.encoding|Used by plugins to define the file encoding of input files|
|project.reporting.outputEncoding|Same as files.encoding|Used by plugins to define the file encoding of output files|
|maven.compiler.source|Same as java.version|Used by the compiler plugin to define the source code version|
|maven.compiler.target|Same as java.version|Used by the compiler plugin to define the generated artifacts compatibility version|
|maven.compiler.showDeprecation|true|Shows deprecation warnings on compile|
|maven.compiler.showWarnings|true|Shows compilation warnings on compile|

## Extensions

[Wagon SSH][wagon_ssh] is added as an extension, allowing deploying through SSH.

## Additional configuration

### JAR manifest

The generated JAR will contain a manifest.

It requires the manifest.name property, which should be set like this:

```
<properties>
   <!-- Manifest data -->
   <manifest.name>com/bernardomg/maven/pom/base</manifest.name>
</properties>
```

It should contain the artifact coordinates as a folder.

The enforcer plugin will demand the property, so it is not possible to build a project without it.

## Attached sources and Javadoc

The generated JAR will contain the sources and Javadoc attached.

[wagon_ssh]: http://maven.apache.org/wagon/wagon-providers/wagon-ssh/
