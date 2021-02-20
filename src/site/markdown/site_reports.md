# Site

Various [Maven Site][maven-site] reports come ready to be created when generating said site.

## Reports

Maven, thanks to its plugins, allows generating a full array of verifications which otherwise would require from external services or applications. The results from their analysis are reported in the Maven site, and they cover common things such as code quality or test coverage.

The following reports come included in the new project and will be added to the site:

- [Tag list](https://www.mojohaus.org)
- [Checkstyle](https://maven.apache.org/plugins/maven-checkstyle-plugin/)
- [Failsafe](https://maven.apache.org/surefire/maven-failsafe-plugin/)
- [JaCoCo](https://www.eclemma.org/jacoco/trunk/doc/maven.html)
- [JDepend](mojo.codehaus.org/jdepend-maven-plugin)
- [PMD](https://maven.apache.org/plugins/maven-pmd-plugin/)
- [SpotBugs](https://spotbugs.github.io/spotbugs-maven-plugin/)
- [Surefire](https://maven.apache.org/surefire/maven-surefire-plugin/)

[maven-site]: http://maven.apache.org/guides/mini/guide-site.html
