MDWiki Getting Started
======================

## Typical Wiki Hierarchy
```
<project>-wiki/
  index.md
  navigation.md
  config.json

  pages/          - Within this directory, create all *.md files for all your
                    wiki pages, as well as subfolders

  scripts/        - Utility scripts that are for backend use

  templates/      - storage for templates that we can use later, such as a
                    standard table design

  uploads/        - An example subdirectory for file uploads, tho you could use
                    hosted, e.g. Dropbox, a CDN, etc.
    documents/
    images/
    presentations/

```




# Create New Wiki

  1. Create a repository on github.com but *do not* initialize with a README or any other starter files during creation. (e.g. Name of new repository: "mywiki")
  2. On local system, create folder with the name you are using for this repository: `mkdir mywiki`
  3. Download latest MDWiki release into this local folder. Go here: [MDWiki Downloads](https://github.com/Dynalon/mdwiki/releases)
  4. Copy the `mdwiki.html` file into your "mywiki" root directory
  5. Rename it to `index.html`
  6. Create a new file in same directory called *config.json*:
  ```
{
    "useSideMenu": true,
    "lineBreaks": "gfm",
    "additionalFooterText": "By <a href='https://github.com/you_here/'>You Here</a><br />",
    "anchorCharacter": "&para;",
    "title": "My new MDWiki"
}
  ```

  7. Create a new file called `navigation.md` and build links to your pages:

  NOTE: see step 9 regarding the 'pages/<file>md' naming
  ```
  # MyWiki

  [Home](index.md)
  [About](about.md)
  [Downloads](downloads.md)
  ```

  8. Create your first wiki page called `index.md` and make your basic home page:
  ```
  # Welcome to my wiki!
  more stuff here
  ```

  9. Now for best practices, create a subdirectory called "pages" for all of your pages, and updated your `navigation.md` file accordingly.
  ```
  mkdir pages
  # Now you could make a "pages/about.md" file, for example
  ```



## Run Your Wiki Locally

  1. Clone repository
  ```
  git clone https://github.com/cashiuus/mywiki
  cd mywiki
  ```

  2. Create python script
  ```
  #!/bin/bash
  open http://localhost:9000
  # Note, this python module uses port 8000 by default
  python -m SimpleHTTPServer 9000
  ```
  3. Run it:   `python local-server.py`





## Publish it to Github and the world!
There are two ways to do this, configure it locally and push the changes to your repo, or do it from Github and pull the changes down, and then adding your changes to sync it all. The former (locally) is simpler, but both procedures are detailed below.

### Configure Wiki locally with git

Reference Link: [Github Creating Project Pages](https://help.github.com/articles/creating-project-pages-manually/)


These are the steps to create the entire new wiki from scratch locally. Those that already created their project can just reference the git commands and only perform the ones referring to the "gh-pages" branch.


  1. First, create the repository on github.com and give it an appropriate name ("mywiki" used here). *IMPORTANT*: Ensure when creating that you opt to *not* create README and other default files during this repository creation. You just want a new blank repository.

  2. Then, initialize your local git project and push it upstream to your github repository
```
cd ~/git
mkdir mywiki && cd mywiki
git init
git symbolic -ref HEAD refs/heads/gh-pages
git add .
git commit -m "Initial commit of my new wiki"
git remote add origin git@github.com:<your_username>/<git_project_name>.git
# Push this new branch upstream to github
git push -u origin gh-pages
```

  3. After a short delay, you should be able to see your new empty wiki at http://<your_username>.github.io/<git_project_name>





### Configure Wiki from Github.com
  1. From your wiki repository, create a branch named 'gh-pages'
  2. In order to verify a build when you push to your Page's repository, you must first verify your email address.
  3. Create an index.html file and commit with the new branch
  4. After you push to the gh-pages branch, your site will be available at "http(s)://user_name.github.io/<projectname>".







- - - -
# Customization

### File: config.json
This contains basic settings that are read in when your site is generated using Bootstrap.

NOTE: Only the default bootstrap theme is bundled with MDwiki and available offline. All other themes require an Internet connection, as the styles are dynamically loaded on demand.


