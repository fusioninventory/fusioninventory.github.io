---
layout: post
title: Monthly report - February 2023
categories: news
lang: en
---

This is the monthly report for February 2023.

# Introduction

As you may have discovered in January, the code relating to the schedule has begun.

On the way to the agent in version 3.0.0.

# Development: Communication protocol

The communication protocol begins to be mature. I simplified as much as possible.

# Data format

The inventory data format has been specified and started to be documented. It's still a draft and the implementation requires some adjustments, but all the inventories will be in the same format (local inventory, network inventory SNMP/switches/printers..., ESX).

Since I rewrite almost all the data, I take the opportunity to normalize this data. Therefore, **I need help** to test some parts on many machines (physical part) and at the operating system level.

You can come to the Discord server where I ask for this help in chat, the address is [https://discord.gg/KdR6dyzNUU](https://discord.gg/KdR6dyzNUU).


Here is an overview of its structure:

```
{
  "deviceid": "portdavid-2013-12-03-10-37-11",
  "content": [
    {
      "hash": "",
      "name": "",
      "description": "",
      "type": "chassis",
      "properties": [
        {
          "type": "string",
          "unit": null,
          "key": "manufacturer",
          "value": "Dell Inc."
        },
        {
          "key": "chassis",
          "value": "Laptop",
          "unit": null,
          "type": "string"
        },
        {
          "type": "string",
          "unit": null,
          "key": "serialnumber",
          "value": "F45GDG2"
        },
        {
          "type": "string",
          "unit": null,
          "key": "model",
          "value": "Latitude E7470"
        },
        {
          "key": "uuid",
          "value": "4c4c4544-0033-3910-8047-c7c04f524632",
          "unit": null,
          "type": "string"
        }
      ],
      "children": [
        {
          "hash": "",
          "name": "FreeBSD",
          "type": "operatingsystem",
          "description": "",
          "properties": [
            {
              "unit": null,
              "value": "FreeBSD",
              "key": "completename",
              "type": "string"
            },
            {
              "unit": null,
              "value": "13.1-RELEASE",
              "key": "version",
              "type": "string"
            },
            {
              "unit": null,
              "value": "amd64",
              "key": "architecture",
              "type": "string"
            },
            {
              "unit": null,
              "value": "p3",
              "key": "servicepack",
              "type": "string"
            },
            {
              "type": "string",
              "key": "installationdate",
              "value": "2019-11-19",
              "unit": null
            },
            {
              "value": "portable.ddurieux",
              "key": "hostname",
              "unit": null,
              "type": "string"
            },
            {
              "unit": null,
              "value": "",
              "key": "domain",
              "type": "string"
            },
            {
              "unit": null,
              "value": "2023-03-06 17:47:38",
              "key": "lastboottime",
              "type": "string"
            },
            {
              "unit": null,
              "key": "timezonename",
              "value": "Europe/Paris",
              "type": "string"
            },
            {
              "type": "string",
              "unit": null,
              "key": "timezoneutcoffset",
              "value": "+0100"
            }
          ],
          "children": [],
          "connectedto": []
        }
      ],
      "connectedto": []
    }
  ],
  "protocol": "2.0",
  "version": "3.0.0"
}
```

# FusionSuite

A quick word on FusionSuite.

FusionSuite is an asset management and service desk tool. The server part for the FusionInventory agent has started to be coded for the 3.0.0 agent and its new communication protocol and data format.

**David Durieux - FusionInventory project leader**
