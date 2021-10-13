---
layout: single
title: New forge and GIT migration
---

Hi,

Thanks to David Durieux effort, the project is now hosted on a Redmine Forge:
<a title="Forge FusionInventory" href="http://Forge.FusionInventory.org" target="_blank">http://Forge.FusionInventory.org</a>

We're still working on the bug and the feature request migration.

We will then turn these options off on our LaunchPad project.

We also decide to migrate the Bzr repositories to Git for various
reasons. Bzr repository format uses to be changed in a incompatible
way by Bzr maintainers. Unlike Mercurial, Bzr repository format can't
also be export/import in Git/Hg format without a mapping file. Because
of that It's very hard to work with Mercurial or Git on a Bzr
repository.

Now our repositories are in Git format, depending on what people
needs, we can provide public Gateway to Mercurial or Bzr. Even svn
through Github! ([http://github.com/blog/626-announcing-svn-support](http://github.com/blog/626-announcing-svn-support))

Gitorious (which is based on FreeSoftware!):
[http://www.gitorious.net/fusioninventory](http://www.gitorious.net/fusioninventory)

GitHub (which is not 100% free):
[http://github.com/fusinv
](http://github.com/fusinv)
Fork us! It's easy!
