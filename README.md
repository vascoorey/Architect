Architect
=========

A new way to handle iOS UI appearance &amp; layouts.

Proposal
========

To eliminate the gulf between Design and Implementation a way is needed for Designers to quickly mock-up a UI and see it in action without having to resort to Third-Party Apps.

What better way than to have the designers see it in action on the App itself?

Why not have the whole App's UI represented in stylesheets such as

```CSS
AViewClass  { 
  track-tint-color blue
  fill-color #CCDE73
  track-radius 40
  thumb-insets 2, 4, 2, 4
}

aView {
  size "200 200"
  arch_top "anotherView bottom 20"
}
```

Libraries
=========

Architect uses the following libraries:
* Masonry
* Classy
* Underscore.m

Features Currently Working
==========================

* Size
* Offsets

TODO
====

Architect is still quite a way away from any sort of stable release.

* Finalize constraint rules
* Add support for more types of layout constraints
* Documentation
* Examples
