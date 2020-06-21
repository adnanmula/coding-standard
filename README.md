Use composer to require the library:

```bash
composer require --dev adnanmula/coding-standard
```

Create the `phpcs.xml.dist` configuration file and use the standard:

```xml
<?xml version="1.0" ?>
<ruleset name="Project rules">
    <rule ref="vendor/adnanmula/coding-standard/src/ruleset.xml" />
</ruleset>
```
