# Site

Various [Maven Site][maven-site] reports come ready to be created when generating said site.

## Reports

Maven, thanks to several plugins, allows generating a full array of tests which otherwise would require from external services or applications. The results from their analysis are reported in the Maven site, and they cover common things such as code quality or test coverage, but also add a few additional features like the changes list.

The following reports come included in the new project and will be added to the site:

- [Tag list](http://www.mojohaus.org)
- [Checkstyle](https://maven.apache.org/plugins/maven-checkstyle-plugin/)
- [FindBugs](http://gleclaire.github.io/findbugs-maven-plugin/)
- [PMD](http://maven.apache.org/plugins/maven-pmd-plugin/)
- [Surefire](https://maven.apache.org/surefire/maven-surefire-plugin/)
- [Failsafe](https://maven.apache.org/surefire/maven-failsafe-plugin/)
- [JaCoCo](http://www.eclemma.org/jacoco/trunk/doc/maven.html)
- [JDepend](mojo.codehaus.org/jdepend-maven-plugin)

Reports are shown in the reports page, but this is not generated dynamically. If any new reporting plugin is added then the *src/site/markdown/reports.md* should be edited.

[maven-site]: http://maven.apache.org/guides/mini/guide-site.html
