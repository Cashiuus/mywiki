Hexo Blog Framework
===================
## Overview

  * [Hexo Site](https://hexo.io)
  * [Git Project](https://github.com/hexojs/hexo)
  * [Plugins List](https://hexo.io/plugins/)
  * [Themes List](https://hexo.io/themes/)



A fast, simple & powerful blow framework. You write posts in [Markdown](https://daringfireball.net/projects/markdown/) (or other languages) and Hexo generates static files with a beautiful theme in seconds.


### Requirements:

  * Node.js
  * Git


## Install Hexo

### Setup Requirements \([Docs](https://hex.io/docs/))

```
# via cURL:
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# via Wget:
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# Then restart your terminal and run:
nvm install stable
```


### Simple install of Hexo (once you have the above requirements):
```
npm install hexo-cli -g
```



### Quick Start

```
npm install hexo-cli -g
hexo init blog
cd blog
npm install
hexo server
```


## Setup: [](https://hexo.io/docs/setup.html)




### Initial Project Hierarchy

This is what your project folder will look like once you've run the `hexo init <folder>` command:

```
<project_root>
    _config.yml
    package.json
    scaffolds
    source
        _drafts
        _posts
    themes

```

#### _config.yml

This is the site configuration file. Open it an start configuring!



#### package.json

Application data file. The EJS, Stylus and Markdown renderers are installed by default. If you want, you can uninstall them later.

#### Scaffolds

[Scaffold](https://hexo.io/docs/writing.html#Scaffolds) folder. When you create a new post, Hexo bases the new file on the scaffold.

When creating posts, Hexo will build files based on the corresponding file in scaffolds folder. For example:
```
$ hexo new photo "My Gallery"
```

When you run this command, Hexo will try to find photo.md in the scaffolds folder and build the post based on it. The following placeholders are available in scaffolds:



| Placeholder   |       Description     |
| layout        | Layout                |
| title         | Title                 |
| date          | File created date     |


#### Source folder
Source folder. This is where you put your site’s content. Hexo ignores hidden files and files or folders whose names are prefixed with `_` (underscore) - except the `_posts` folder. Renderable files (e.g. Markdown, HTML) will be processed and put into the `public` folder, while other files will simply be copied.





# Plugins
[Hexo Plugins List](https://hexo.io/plugins/)


  * hexagon: Package manager for Hexo
  * hexo-admin: Edit content in style with this integrating blogging environment
  * hexo-blog-encrypt: Another blog encrypt plugin for Hexo
  * hexo-cli-extras: Unofficial CLI plugin for convenient editing, renaming, deleting, isolating, and integrating posts and pages from the command line.




# Themes

[Theme](https://hexo.io/docs/themes.html) folder. Hexo generates a static website by combining the site contents with the theme.




# Configuration \([Docs](https://hexo.io/docs/configuration.html))
See the site docs for all of the configurable settings.

