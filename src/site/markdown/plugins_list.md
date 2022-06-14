# Plugins

## Build plugins

Used when creating the project artifacts.

Some are just included in the plugin management, there is no need to include them in the build explicitly.

- [Ant Run](https://maven.apache.org/plugins/maven-antrun-plugin/), can handle Ant scripts.
- [Assembly](http://maven.apache.org/plugins/maven-assembly-plugin/), uilds a distributable file from all the project components.
- [Clean](https://maven.apache.org/plugins/maven-clean-plugin/), cleans the output folder.
- [Compiler](https://maven.apache.org/plugins/maven-compiler-plugin/), compiles the source code.
- [Dependency](https://maven.apache.org/plugins/maven-dependency-plugin/), copies and manipulates the project dependencies.
- [Deploy](https://maven.apache.org/plugins/maven-deploy-plugin/), takes care of the deployment phase.
- [Enforcer](https://maven.apache.org/enforcer/maven-enforcer-plugin/), stops the project from being built if it does not comply with a set of rules
- [Failsafe](https://maven.apache.org/surefire/maven-failsafe-plugin/), runs integration tests.
- [Install](https://maven.apache.org/plugins/maven-install-plugin/), installs the project into the local Maven repository.
- [JaCoCo](http://eclemma.org/jacoco/trunk/doc/maven.html), generates coverage data from Surefire and Failsafe.
- [Jar](https://maven.apache.org/plugins/maven-jar-plugin/), generates the jar file.
- [Javadoc](https://maven.apache.org/plugins/maven-javadoc-plugin/), handles the Javadocs.
- [Release](https://maven.apache.org/maven-release/maven-release-plugin/), generates releases and updates the project.
- [Resources](https://maven.apache.org/plugins/maven-resources-plugin/), handles the project resources.
- [Site](https://maven.apache.org/plugins/maven-site-plugin/), generates the Maven Site.
- [Source](https://maven.apache.org/plugins/maven-source-plugin/), bundles the source into the packaged project.
- [Surefire](https://maven.apache.org/surefire/maven-surefire-plugin/), runs unit tests.

## Report plugins

Some of these may be repeated from the build section. Which means they will build a report from artifacts generated during the build process.

- [Changes](https://maven.apache.org/plugins/maven-changes-plugin/), generates the changes report from the changes log.
- [Checkstyle](https://maven.apache.org/plugins/maven-checkstyle-plugin/), checks that the source files comply with style standards.
- [Dependency](https://maven.apache.org/plugins/maven-dependency-plugin/), generates the dependencies analysis report.
- [JaCoCo](http://eclemma.org/jacoco/trunk/doc/maven.html), generates coverage reports from Surefire and Failsafe.
- [JDepend](http://www.mojohaus.org/jdepend-maven-plugin/), generates the dependencies report.
- [Javadoc](https://maven.apache.org/plugins/maven-javadoc-plugin/), generates the Javadocs.
- [JXR](http://maven.apache.org/jxr/maven-jxr-plugin/), generates references to the source files, used by other reports.
- [PMD](https://maven.apache.org/plugins/maven-pmd-plugin/), checks that the code complies with a series of code quality rules.
- [Project Info](https://maven.apache.org/plugins/maven-project-info-reports-plugin/), generates general information reports.
- [Site](https://maven.apache.org/plugins/maven-site-plugin/), generates the Maven Site.
- [SpotBugs](https://spotbugs.github.io/spotbugs-maven-plugin/), checks for patterns which are prone to errors.
- [Surefire Report](https://maven.apache.org/surefire/maven-surefire-report-plugin/), generates the unit tests report.
- [Taglist](http://www.mojohaus.org/taglist-maven-plugin/), generates a report of all the temporal tags still on the code.
