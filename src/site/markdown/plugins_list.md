# Plugins

The base POM sets up a full set of plugins. These cover most of the common use cases, such as test execution or Javadoc generation, and they all include the latest stable and bug-free version at the time of release.

## Build plugins

These are used when creating the project artifacts.

Some are included in the plugin management as they usually are part of Maven project, even when they are not directly added as dependencies. But otherwise they will work like any other.

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

Some of these may be repeated from the build section. In that case it usually means they will generate a report from wathever they generated during the build process.

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
- [Surefire Report](https://maven.apache.org/surefire/maven-surefire-report-plugin/), generates the unit tests report.
- [Taglist](http://www.mojohaus.org/taglist-maven-plugin/), generates a report of all the temporal tags still on the code.
