---
layout: post
title: Hello Jekyll
categories: test
tags: jekyll test

date: 2014-04-28  3:26:28
---

#jekyll

+ install on mac	

```
gem install jekyll
# you need root permission
```

+ check the version of jekyll

```
jekyll -v
```

+ create your blog

```
cd ~/workspace
jekyll new blog
```

+ start blog server

```
jekyll serve
```

+ post

```
rake post title="Hello World"
```

+ push to git

```
cd blog
git init
# create a branch without parent
git checkout --orphan gh-pages
git add.
git commit -a -m "first blood" 
git remote add origin https://github.com/daodao10/blog.git
git push origin gh-pages
```

+ it is time to goto [your blog](http://daodao10.github.io/blog)


NOTE:

on github the files under the branch gh-pages only will be create the pages

## Advance
+ configuration [reference](http://jekyllrb.com/docs/configuration/)
+ template [reference](http://jekyllrb.com/docs/templates/)
