metalsmith-teacup [![NPM version](https://badge.fury.io/js/metalsmith-teacup.png)](http://badge.fury.io/js/metalsmith-teacup) [![Build Status](https://travis-ci.org/hurrymaplelad/metalsmith-teacup.png)](https://travis-ci.org/hurrymaplelad/metalsmith-teacup)
==============

A [metalsmith](https://github.com/segmentio/metalsmith) plugin to render [teacup](https://github.com/goodeggs/teacup
) templates.

Usage
---

Install it.
```
$ npm install metalsmith-teacup
```

Plug it in to metalsmith.
```coffee
teacup = require 'metalsmith-teacup'

metalsmith.use(teacup())
```

Optionally pass a custom template directory.  `templates` is the default.
```coffee
metalsmith.use(teacup(directory: 'layouts'))
```
