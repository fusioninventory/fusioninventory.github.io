---
layout: post
title: Agent development process changes
---

Hello all,

Following a meeting between the agent developers, the development process of the
agent has been changed a bit. Here are some details.

## branches management

"master" is now the stable branch, receiving only trivial bugfixes and new
validated new features. This branch has to stable enough to allow regular new
releases.

New features have to be prepared in dedicated development branches, with a name
following "\<branch\>+\<feature\>" pattern. It will be merged in master branch
as soon as the feature is validated.

For example, to develop a new task dedicated to coffee machines inventory:

1. a new development branch called master+add_coffee_maker_inventory is created
2. the new task is created, with adequate unit testing
3. the new task is validated
4. the development branch get merged in the master branch

Bug fix branch will be created when needed, (e.g, 2.3.x) to prepare fix-only
releases. For example, 2.3.x will be created the day we need to release a 2.3.1
release to fix 2.3.0.

## branches renaming

* "2.3.x" is now "master"
* "master" is now "master+restjson"
* "2.3.x+foo" are now "master+foo"

Some old branches have been renamed with a new "attic/" prefix.

## Additional tasks integration

Additional agent tasks (network discovery, network inventory, ESX inventory and
software deployement) developed and distributed separatly will be integrated
into the agent repository, and the corresponding forge projects will be closed.

## 2.3.0 release

The 2.3.0 release is mostly ready. We have to work on the Windows installer to
finish what Tomás Abad started some weeks ago.
