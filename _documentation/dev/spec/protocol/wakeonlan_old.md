---
layout: single
title: Wake-on-lan protocol
---

# Wake-on-lan protocol

## Server to agent message

### Specification

    <!ELEMENT REPLY (OPTION)>
    <!ELEMENT OPTION (NAME, PARAM+)>
    <!ELEMENT NAME (#PCDATA)>

    <!ELEMENT PARAM EMPTY>
    <!ATTLIST PARAM MAC CDATA #REQUIRED>

### Example

    <?xml version="1.0" encoding="UTF-8"?>
    <REPLY>
       <OPTION>
          <NAME>WAKEONLAN</NAME>
          <PARAM MAC="00:1e:c2:0c:36:27"/>
          <PARAM MAC="00:1e:c2:a7:26:6f"/>
          <PARAM MAC="00:1e:52:ff:fe:67"/>
          <PARAM MAC="00:00:39:23:0c:e1"/>
          <PARAM MAC="00:00:39:23:0c:e1"/>
          <PARAM MAC="f6:68:20:52:41:53"/>
          <PARAM MAC="52:08:19:1f:b6:f6"/>
       </OPTION>
    </REPLY>

## Agent to server message

No message.
