# Default Configuration

The following properties are set, these are used to define values manually and can be overwritten to change the configuration:

|Variable|Value|Usage|
|---|---|---|
|files.encoding|UTF-8|Defines the file encoding|
|java.version|1.7|Defines the JDK version|

The following properties are set, these are used by Maven plugins:

|Variable|Value|Usage|
|---|---|---|
|project.build.sourceEncoding|Same as files.encoding|Used by plugins to define the file encoding of input files|
|project.build.sourceEncoding|Same as files.encoding|Used by plugins to define the file encoding of output files|
|maven.compiler.source|Same as java.version|Used by the compiler plugin to define the source code version|
|maven.compiler.target|Same as java.version|Used by the compiler plugin to define the generated artifacts compatibility version|
|maven.compiler.showDeprecation|true|Shows deprecation warnings on compile|
|maven.compiler.showWarnings|true|Shows compilation warnings on compile|
