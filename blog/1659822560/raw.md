<!--
name: recreating this site
peek: talking about this site and why it exists
tags: meta blog
date: 1659822560
-->

This blog used to be made with Jekyll on Github Pages (which can still be found at the [old-blog](https://github.com/llyyr/llyyr.github.io/tree/old-blog) branch of the git repo), so why rewrite it so it's pre-generated with a bash script? Well one of reasons was that I wanted the site to be purely html and be simpler to modify. Originally, I only intended to redo the theme and keep the rest of the site same as it was, but lately I have been into writing bash so this ended up becoming a bash script called `nue`.

`nue` is a dumb script that simply converts markdown files to html and inserts them in a template, while doing the bare minimum of updating the index with each post found in the `blog/` directory. You can start writing a new post with `nue new` or `nue -n`, it will automatically make a directory and fill out the metadata, using the UNIX time as the date. `nue edit` or `nue -e` starts a fzf menu listing every single post, and *.html files can be regenerated with `nue build` or `nue -b` when finished.

Jekyll was beyond overkill for me, I don't write much and I don't expect to have any readers. The reason for writing is purely self serving, as a way to keep records of sorts and as a healthier way of killing time. I do, however, still care about presentation. I don't want to use fancy frameworks or libraries to bloat up my website, so it had to be purely html+css (the search function uses a bit of javascript though). 

As for what I would write about, I am still undecided but one thing I am certain about is that I want to write about things that could either be helpful to someone, such as guides or just journaling through a process, or maybe writing about certain coding practices. In the past, I've even wanted to write about certain Advent of Code puzzles but didn't have a proper platform to do so, maybe this year I will write about puzzles I find interesting or have something to say about. The other thing I want to write about are beliefs or opinions that I am uncertain of myself in the present. Being able to read in detail how I felt about a certain thing at a point in time in the past and comparing it to how I feel about it in the future is something I wish I could do, so I will maintain a pseudo-public record of sorts. The previous blog was used as a diary, or a SOS message; in contrast, this one is more akin to a journal.

I don't intend to dig up the old posts back up though, as such there's not a lot to show off how the site actually looks when there's content on the screen. So I leave you with a sample markdown file I found on the internet to showcase the site.

***

An h1 header
============

Paragraphs are separated by a blank line.

2nd paragraph. *Italic*, **bold**, and `monospace`. Itemized lists
look like:

  * this one
  * that one
  * the other one

Note that --- not considering the asterisk --- the actual text
content starts at 4-columns in.

> Block quotes are
> written like so.
>
> They can span multiple paragraphs,
> if you like.

Use 3 dashes for an em-dash. Use 2 dashes for ranges (ex., "it's all
in chapters 12--14"). Three dots ... will be converted to an ellipsis.
Unicode is supported. ☺



An h2 header
------------

Here's a numbered list:

 1. first item
 2. second item
 3. third item

Note again how the actual text starts at 4 columns in (4 characters
from the left side). Here's a code sample:

    # Let me re-iterate ...
    for i in 1 .. 10 { do-something(i) }

As you probably guessed, indented 4 spaces. By the way, instead of
indenting the block, you can use delimited blocks, if you like:

~~~
define foobar() {
    print "Welcome to flavor country!";
}
~~~

(which makes copying & pasting easier). You can optionally mark the
delimited block for Pandoc to syntax highlight it:

~~~python
import time
# Quick, count to ten!
for i in range(10):
    # (but not *too* quick)
    time.sleep(0.5)
    print i
~~~



### An h3 header ###

Now a nested list:

 1. First, get these ingredients:

      * carrots
      * celery
      * lentils

 2. Boil some water.

 3. Dump everything in the pot and follow
    this algorithm:

        find wooden spoon
        uncover pot
        stir
        cover pot
        balance wooden spoon precariously on pot handle
        wait 10 minutes
        goto first step (or shut off burner when done)

    Do not bump wooden spoon or it will fall.

Notice again how text always lines up on 4-space indents (including
that last line which continues item 3 above).

Here's a link to [a website](http://foo.bar), to a [local
doc](local-doc.html), and to a [section heading in the current
doc](#an-h2-header). Here's a footnote [^1].

[^1]: Footnote text goes here.

Tables can look like this:

size  material      color
----  ------------  ------------
9     leather       brown
10    hemp canvas   natural
11    glass         transparent

Table: Shoes, their sizes, and what they're made of

(The above is the caption for the table.) Pandoc also supports
multi-line tables:

--------  -----------------------
keyword   text
--------  -----------------------
red       Sunsets, apples, and
          other red or reddish
          things.

green     Leaves, grass, frogs
          and other things it's
          not easy being.
--------  -----------------------

A horizontal rule follows.

***

Here's a definition list:

apples
  : Good for making applesauce.
oranges
  : Citrus!
tomatoes
  : There's no "e" in tomatoe.

Again, text is indented 4 spaces. (Put a blank line between each
term/definition pair to spread things out more.)

Here's a "line block":

| Line one
|   Line too
| Line tree

and images can be specified like so:

![example image](example-image.jpg "An exemplary image")

Inline math equations go in like so: $\omega = d\phi / dt$. Display
math should get its own line and be put in in double-dollarsigns:

$$I = \int \rho R^{2} dV$$

And note that you can backslash-escape any punctuation characters
which you wish to be displayed literally, ex.: \`foo\`, \*bar\*, etc.
