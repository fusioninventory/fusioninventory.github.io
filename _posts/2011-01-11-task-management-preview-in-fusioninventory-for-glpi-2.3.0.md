---
layout: post
title: Task management preview in FusionInventory for GLPI 2.3.0
categories: news
lang: en
---

An update from FusionInventory for GLPI development branch ...

The future release will be named 2.3.0, and come with major improvements. This release target GLPI 0.78 as the supported platform. The  task management module has been greatly improved.

<iframe title="YouTube video player" class="youtube-player" type="text/html" width="640" height="390" src="http://www.youtube.com/embed/Gzg98lMeAtU" frameborder="0"></iframe>
See also translations of this screencast [in portuguses](http://youtu.be/ab0tSeOjDEw' >in french</a>,  [.in spanish](http://youtu.be/m9cx3Zn4KBs) and  <a href='http://youtu.be/vfvlOn2u3K8).

Quick overview of the improvements :
* <strong>Communication mode </strong>: both pull and push communication are supported.

* <strong>Pull</strong>: The agent takes the initiative to contact the server. The server answer with the list of all tasks assigned to the agent. This is very useful in an environment where the presence of the agents is not predictable. The server is waiting for agents requests and can't force the precise schedule of a task.
* <strong>Push</strong> : The server takes the initiative to contact the agent. The agent, running as a service, is waiting for the order from the server. When waking up, the agent contacts the server. The server answer with the list of all tasks assigned to the agent.



<strong> </strong></li>* <strong>Schedule</strong> : The task's execution can be scheduled. For tasks using push communication, the starting time is the effective startup time of the action. For tasks using pull communication, the starting time defines the time where the server will begin to distribute the task to the agents.
* <strong>Agent selection</strong>: You can choose which agents have to perform a   task, or let FusionInventory for GLPI dynamically manage a dynamic pool   of agents.
* <strong>Tasks and Actions</strong> : A task can contain an unlimited number of actions. For example a first action will wake up a computer (Wake On LAN) and a second one will perform an inventory.




* <strong>Target definition </strong>: Action's target, for example an IP range, a list of devices, a dynamic group of devices, etc...




* <strong>Display current running actions</strong>: All task in a running state are displayed.
* <strong>History</strong> : Task execution logs are available as history. Each task  actions may have different states : prepared, started, running, ok,  error, unknown.
* <strong>Dynamic pool of agents</strong>: When using the Push mode, the server looks for all agents running and allowed to run a specific module (inventory, netdiscovery, snmpinventory, wakeonlan). The server then balance the load of the process within the agents. For example if you use an IP range with 10 agents, each agent will have to do 1/10 of the whole job.



<a href="/news_docs/test.png"><img class="aligncenter wp-image-847" title="Tasks in FusionInventory 2.3.0 (developement version) " src="/news_docs/test-300x193.png" alt="" width="300" height="193" /></a>
