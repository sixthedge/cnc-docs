
[![Build Status](https://travis-ci.org/sixthedge/cnc-docs.svg?branch=master)](https://travis-ci.org/sixthedge/cnc-docs)

# CIRTL Network Commons Documentation

## Markdown Cheatsheet
### Text
#### Paragraphs
One or more lines seperated by line breaks.

~~~html
This is an example paragraph of text.
This line is included in the encompassing paragraph.

This is a new paragraph because of line break.
~~~

This is an example paragraph of text.
This line is included in the encompassing paragraph.

This is a new paragraph because of line break.

#### Emphasis
highlighting words or spans with basic emphasis

- **bold:** two asteriks `**bold**` or underscores `__bold__`
- *italic:* one asterik `*italic*` 

---

### Headers
Headers have no actual constraints but if possible should increase consecutive to their parents.

~~~html
 # h1
 ## h2
 ### h3
 #### h4
 ##### h5
 ###### h6
~~~

---

### Lists
#### Numbered List
~~~html
1. first
2. second
3. third
~~~
1. first
2. second
3. third

#### Bullets
~~~html
- first
* second
+ third
~~~

- first
* second
+ third

#### Nested
~~~html
- first
  - second
    - third
- fourth
~~~
- first
  - second
    - third
- fourth

---

### Links
#### Explicit Links
~~~html
[external link](http://www.google.com)
[header link](#markdown-cheatsheet)
[intra link](/v1.3.12/help/test)
[intra header link](/v1.3.12/help/test#code)
~~~

[external link](http://www.google.com)

[header link](#markdown-cheatsheet)

[intra link](/v1.3.12/help/test)

[intra header link](/v1.3.12/help/test#code)

#### Autolinks
~~~html
<https://www.google.com>
<http://github.com>
~~~
<https://www.google.com>

<http://github.com>

---

### Code
#### Inline
~~~html
inline `code` or `commands`
~~~

inline `code` or `commands`
#### Blocks
To invoke a code block using 3 tildes `~` or backticks ` `` followed by a code language for highlighting

### Horizontal Rules
~~~html
three --- or === or ***
~~~