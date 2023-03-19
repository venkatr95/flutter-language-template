# flutter_language_template

Fluuter language localization template

## Getting Started

This project is an example of flutter localization for languages
By default, Flutter only provides US English localizations
To add support for other languages,
1) an application must specify additional MaterialApp (or CupertinoApp) properties
2) include a package called flutter_localizations

(As of January 2023, this package supports 79 languages)

In any app for language translation,

- Use the language folder inside lib folder, lib/language
- Use the assets/lang folder, which has *.json files with translations

