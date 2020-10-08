Wiki Help Topics & Tips
=======================

# Benchmarking
**MDWiki Start Here**

* [Github mdwiki-seed](https://github.com/exalted/mdwiki-seed): A seed project you can use as a starting point. See this [Tutorial](http://dynalon.github.io/mdwiki/#!tutorials/github.md).
* [My Own Getting Started](getting-started.md): My own instructions for starting your own wiki from scratch.


* [Dynalon](https://github.com/Dynalon/mdwiki/blob/gh-pages)
* [Quick Start](https://dynalon.github.io/mdwiki/#!quickstart.md)
* [Dynalon - Rainy Site](https://github.io/Rainy)


**Other Security Wiki's I've Seen**

* [PwnWiki](https://pwnwiki.io/) - [Source](https://github.com/pwnwiki/pwnwiki.github.io)
* [MsfWiki](https://github.com/pwnwiki/msfwiki)
* [KaliWiki](https://kali.pwnwiki.io/#!index.md)



**Advanced Sites**

* [devalias](https://github.com/0xdevalias/devalias.net)


**Markdown Syntax Resources**

* [GitHub Basic Writing and Formatting](https://help.github.com/articles/basic-writing-and-formatting-syntax/)
* [Github Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
* [Markdown Cheat Sheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)



- - - -
# Best Practices & Tips

* md files require 2-width tabbing or you will see visual errors in output rendering.
* Code Formatting:
  - To preserve code formatting within a list, make sure to indent non-fenced code blocks by 8 spaces.
  - If a page hangs on loading, it might be failing syntax highlighting lookup, check spelling on code blocks.
* Uploads: Avoid hosting file uploads on Github. If you must add references/links to files in the `uploads` directory, here's how to do it:
```
  ![Image Title](uploads/images/foo.png)
```

* Gimmicks will usually load code or stylesheets from the internet, therefore they won't work in offline mode
* All pages should start with a 1st heading, which is turned into the page title

```
  Heading
  =======
  Section 1
  ---------
  [...] (h2, h3, etc.)
  Section 2
  ---------
  [...] (h2, h3, etc.)
```




- - - -
# Syntax Help
```
# H1
## H2
### H3
#### H4
##### H5
###### H6
```

Alt-H2
----------

## Lists
You can make lists by using `-` or `*`, or use numbers.
* list item 1
* list item 2

**Nested Lists** - Align the sub-bullets under the first letter of the parent tier.
```
1. First item
   - Second item
     - Third item
```

#### Task Lists [About Task Lists](https://help.github.com/articles/about-task-lists/)
*NOTE*: Maybe Github flavor Markdown only?
Preface list items with `[ ]`. To mark task complete, use `[x]`.
```
- [ ] Task 1
- [ ] Task 2
- [x] Task 3
- [ ] \(Critical) Task beginning with parentheses the opening parens has to be escaped with \\
```



## Links
#### External Links
This is a hyperlink to [Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).
```
[Markdown Cheat Sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
```

#### Local Wiki Links
```
[Another Page](another-page.md)
[A Nested Page](pages/other/nested-page.md)
```

## Emojis

You can add emoji's using their colon-syntax. See here: https://webfx.com/tools/emoji-cheat-sheet/

:bowtie: :wink:



## Note Boxes

**NOTE**: This is a blue note box done by putting two asterisks \* around the word NOTE



## Tables
Table Example
--------------
| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

## Text Styling
Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Strikethrough uses two tildes. ~~Scratch this.~~



## Code and Highlighting

Inline `code` has `back-ticks around` it.

Blocks of code are either fenced by lines with three back-ticks ```, or are indented with four spaces. I recommend only using the fenced code blocks -- they're easier and only they support syntax highlighting.

*Fenced Code Blocks*
NOTE: To preserve formatting within a list, make sure to indent non-fenced code blocks by 8 spaces.

```
For code, the code highlighting goes on the first line with the backticks,
but all actual code should go on a new line below the opening backticks.

Ending backticks should go on a new line as well. This is called Fenced Code Blocks.
```


### Syntax Highlighting
Github uses [Linguist](https://github.com/github/linguist) to perform language detection and highlighting. Check the YAML files located there for all of the languages.

```
# Immediately after the markdown backticks, put "python" to have it do python highlighting

s = "Python syntax highlighting"
print s
```

Some of the supported languages:

  * bash
  * cpp
  * css
  * html
  * http
  * java
  * javascript
  * json
  * markdown
  * perl
  * php
  * python
  * ruby
  * r
  * sql
  * xml



## Inline HTML

You can also use raw HTML in your Markdown, and it'll mostly work pretty well.

```
<dl>
  <dt>Definition list</dt>
  <dd>Is something people use sometimes.</dd>

  <dt>Markdown in HTML</dt>
  <dd>Does *not* work **very** well. Use HTML <em>tags</em>.</dd>
</dl>
```


## Images
Images are like hyperlinks, but with an exclamation mark in front of them: ![](http://placekitten.com/g/250/250)

Here's our logo (hover to see the title text) - Inline-style:
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")

### References / Citations with Image Style:
Reference-style:
![alt text][logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 2"


### Floating Image to the Left
With image at the *beginng* of a paragraph of text, it will float left
```
![](http://placekitten.com/g/400/400)
The above image floats left of the paragraph text.
```

### Floating Image to the Right
With image at the *end* of a paragraph of text, it will float left
```
The below image floats right of the paragraph text.
![](http://placekitten.com/g/400/400)
```

### Image With No Floating
A blank line before or after the image disables any floating.
```
![](http://placekitten.com/g/400/400)

This text won't touch the image.
```


## Gimmicks - [See Here](help-gimmicks.md)



- - - -
# Other Help
### Setting up Github Pages to host this project as a site

Reference Link: [Github Creating Project Pages](https://help.github.com/articles/creating-project-pages-manually/)


  1. From an existing repository, create a branch named 'gh-pages'
  2. In order to verify a build when you push to your Page's repository, you must first verify your email address.
  3. Create an index.html file and commit with the new branch
  4. After you push to the gh-pages branch, your site will be available at "http(s)://<user>.github.io/<projectname>".




