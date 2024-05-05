---
layout: post
title: Monthly report - April 2024 - Agent 3.0 in RUST
categories: news
lang: en
---

This is the monthly report for April 2024.

# Introduction

This is some news regarding the development of FusionInventory agent 3.0.


# Why no news since couple months?

I took a break from development to take some time to think about Agent 3.0.

After the first testing session (in November 2023) by users of the new agent, some things are good, but others are not, especially in 2024.

# List of good points

This is the list of good points: 

* agent run without many problems (some fixes are be made during the test)
* agent seems stable
* data got are ok
* new file structure of the agent is ok
* new data structure (JSON) is ok
* agent in one exe is better


# List of bad points

* agent is one exe (archive) and to run, uncompress all files in temp folder; this operation takes time and need clean after.
* compilation is not simple as I want, because need compiles the agent on each operating system
* unable to sign the agent exe in this case to prevent a problem with Windows 11
* the cleaning of existing code is very complex to do
* the exe is big and contains too many files
* the new disk program can be used to do modifications on disk partition and not very good for the security
* same thing with PERL on the device for security reasons (on the server and better for client windows computer), I need prevent have perl interpreter on computers
* the agent need too many PERL module to install on system or added in archive


# Solution: develop the agent in RUST

After much thought, the best solution is to code it in GO or RUST to have a only one exe.

I have compared the 2 languages, and I decided to use **RUST**, it seems the best choice for the FusionInventory agent.

Good points for this new agent: 

* small exe
* fast execution
* small memory footprint
* cross compiling for operating systems
* better error management, detect many when compile it


# Code has started?

Yes, the development of the agent has started.

I started from scratch, but in fact no, I use many parts for the new agent coded last months:

* get same files structure
* get part of data conversion

I started with the local inventory module; I have coded about 15% of it in couple days. It's fast to code and pleasant to do.

I'm very excited by the agent. It is fast to run (yes, I tested it) and quickly to code!

I think the local inventory will be at a high percentage in June/July, stay connected ^_^


**David Durieux - FusionInventory project leader**
