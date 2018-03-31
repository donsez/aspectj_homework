AspectJ Homework
================

A simple homework on AspectJ weaving

Homework subject (in french) : https://air.imag.fr/index.php/AspectJ

Build
-----
```bash
git clone https://github.com/donsez/aspectj_homework
cd aspectj_homework/aj

mvn versions:display-dependency-updates
mvn versions:display-plugin-updates

mvn clean install
```

Execution
---------
```bash
mvn exec:java
```
