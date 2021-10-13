---
layout: single
title: Network inventory protocol
---

# Network inventory protocol

## Server to agent message

### Specification

    <!ELEMENT REPLY (PROCESSNUMBER, OPTION)>
    <!ELEMENT PROCESSNUMBER (#PCDATA)>
    <!ELEMENT OPTION (NAME, PARAM, DEVICE+, AUTHENTICATION+)>
      <!ELEMENT NAME (#PCDATA)>

      <!ELEMENT PARAM EMPTY>
        <!ATTLIST PARAM THREADS_QUERY CDATA "1">
        <!ATTLIST PARAM PID CDATA #REQUIRED>

      <!ELEMENT DEVICE EMPTY>
        <!ATTLIST DEVICE TYPE (COMPUTER|NETWORKING|PRINTER|STORAGE|POWER|PHONE|VIDEO|KVM) #REQUIRED>
        <!ATTLIST DEVICE ID CDATA #REQUIRED>
        <!ATTLIST DEVICE IP CDATA #REQUIRED>
        <!ATTLIST DEVICE IP AUTHSNMP_ID #REQUIRED>

      <!ELEMENT AUTHENTICATION EMPTY>
        <!ATTLIST AUTHENTICATION ID CDATA #REQUIRED>
        <!ATTLIST AUTHENTICATION VERSION CDATA #REQUIRED>
        <!ATTLIST AUTHENTICATION COMMUNITY CDATA #IMPLIED>
        <!ATTLIST AUTHENTICATION USERNAME CDATA #IMPLIED>
        <!ATTLIST AUTHENTICATION AUTHPROTOCOL CDATA #IMPLIED>
        <!ATTLIST AUTHENTICATION AUTHPASSPHRASE CDATA #IMPLIED>
        <!ATTLIST AUTHENTICATION PRIVHPROTOCOL CDATA #IMPLIED>
        <!ATTLIST AUTHENTICATION PRIVPASSPHRASE CDATA #IMPLIED>

### Example

    <?xml version="1.0" encoding="UTF-8"?>
    <REPLY>
      <PROCESSNUMBER>1280265498/024</PROCESSNUMBER>
      <OPTION>
        <NAME>SNMPQUERY</NAME>
        <PARAM THREADS_QUERY="4" PID="1280265498/024"/>
        <DEVICE TYPE="PRINTER" ID="72" IP="192.168.0.151" AUTHSNMP_ID="1"/>
        <AUTHENTICATION ID="1" COMMUNITY="public" VERSION="1" USERNAME="" AUTHPROTOCOL="" AUTHPASSPHRASE="" PRIVPROTOCOL="" PRIVPASSPHRASE=""/>
      </OPTION>
    </REPLY>

## Agent to server message

### Specification

    <!ELEMENT REQUEST (CONTENT+, DEVICEID, QUERY)>

      <!ELEMENT CONTENT (DEVICE*, MODULEVERSION, PROCESSNUMBER)>

        <!-- a device -->
        <!ELEMENT DEVICE (INFO, PORTS)>

          <!-- generic information -->
          <!ELEMENT INFO (COMMENTS, CPU, FIRMWARE, ID, IPS, LOCATION, MAC, MEMORY, MODEL, NAME, RAM, SERIAL, TYPE, UPTIME)>
            <!-- sysdescr (string) -->
            <!ELEMENT COMMENTS (#PCDATA)>
            <!-- CPU load in % (integer) -->
            <!ELEMENT CPU (#PCDATA)>
            <!-- firmware (string) -->
            <!ELEMENT FIRMWARE (#PCDATA)>
            <!-- device ID in GLPI (integer) -->
            <!ELEMENT ID (#PCDATA)>
            <!-- IP addresses list -->
            <!ELEMENT IPS (IP+)>
            <!-- an IP address, either IPv4 or IPv6 (string) -->
            <!ELEMENT IP (#PCDATA)>
            <!-- location (string) -->
            <!ELEMENT LOCATION (#PCDATA)>
            <!-- mac address (string) -->
            <!ELEMENT MAC (#PCDATA)>
            <!-- storage in Mio (integer) -->
            <!ELEMENT MEMORY (#PCDATA)>
            <!-- device model (string) -->
            <!ELEMENT MODEL (#PCDATA)>
            <!-- device name (string) -->
            <!ELEMENT NAME (#PCDATA)>
            <!-- volatile memory in Mio (integer) -->
            <!ELEMENT RAM (#PCDATA)>
            <!-- serial number (string) -->
            <!ELEMENT SERIAL (#PCDATA)>
            <!-- type
              (COMPUTER|NETWORKING|PRINTER|STORAGE|POWER|PHONE|VIDEO|KVM) -->
            <!ELEMENT TYPE (#PCDATA)>
            <!-- uptime ("X days, HH:MM::SS" format) -->
            <!ELEMENT UPTIME (#PCDATA)>

          <!-- ports list -->
          <!ELEMENT PORTS (PORT*)>

            <!-- a port -->
            <!ELEMENT PORT (CONNECTIONS?, AGGREGATE?, IFDESCR, IFINERRORS,
            IFINOCTETS, IFINTERNALSTATUS, IFLASTCHANGE, IFMTU, IFNAME,
	    IFNUMBER, IFOUTERRORS, IFOUTOCTETS, IFSPEED, IFPORTDUPLEX,
	    IFSTATUS, IFTYPE, MAC, TRUNK, VLANS?)>

            <!-- connections list -->
            <!ELEMENT CONNECTIONS (CDP?, CONNECTION*)>
              <!-- LLDP/CDP connection? (0|1) -->
              <!ELEMENT CDP (#PCDATA)>

              <!-- a remote device connection, either as a list of known mac
              addresses, either as a CDP/LLDP/EDP information block -->
              <!ELEMENT CONNECTION (MAC+ | (IFNUMBER, SYSMAC, IFDESCR, IP,
              SYSDESCR, SYSNAME))>
                <!-- remote device mac address (string) -->
                <!ELEMENT MAC (#PCDATA)>
                <!-- remote device ifindex, from CDP/LLDP (integer) -->
                <!ELEMENT IFNUMBER (#PCDATA)>
                <!-- remote device mac address, from CDP/LLDP (string) -->
                <!ELEMENT SYSMAC (#PCDATA)>
                <!-- remote device port description, from CDP/LLDP (string) -->
                <!ELEMENT IFDESCR (#PCDATA)>
                <!-- remote device IP address, from CDP/LLDP (string) -->
                <!ELEMENT IP (#PCDATA)>
                <!-- remote device system description, from CDP/LLDP (string) -->
                <!ELEMENT SYSDESCR (#PCDATA)>
                <!-- remote device name, from CDP/LLDP (string) -->
                <!ELEMENT SYSNAME (#PCDATA)>

            <!-- aggregated ports list -->
            <!ELEMENT AGGREGATE (PORT+)>
              <!-- aggregated port ifindex (integer) -->
              <!ELEMENT PORT (#PCDATA)>

            <!-- description (string) -->
            <!ELEMENT IFDESCR (#PCDATA)>
            <!-- input errors number (integer) -->
            <!ELEMENT IFINERRORS (#PCDATA)>
            <!-- input bytes number (integer) -->
            <!ELEMENT IFINOCTETS (#PCDATA)>
            <!-- internal status (1|2|3) -->
            <!ELEMENT IFINTERNALSTATUS (#PCDATA)>
            <!-- time since last status change ("X days, HH:MM::SS" format) -->
            <!ELEMENT IFLASTCHANGE (#PCDATA)>
            <!-- MTU (integer) -->
            <!ELEMENT IFMTU (#PCDATA)>
            <!-- name (string) -->
            <!ELEMENT IFNAME (#PCDATA)>
            <!-- ifindex (integer) -->
            <!ELEMENT IFNUMBER (#PCDATA)>
            <!-- output errors number (integer) -->
            <!ELEMENT IFOUTERRORS (#PCDATA)>
            <!-- output bytes number (integer) -->
            <!ELEMENT IFOUTOCTETS (#PCDATA)>
            <!-- speed in bytes (integer) -->
            <!ELEMENT IFSPEED (#PCDATA)>
            <!-- duplex status (1|2|3)) -->
            <!ELEMENT IFPORTDUPLEX (#PCDATA)>
            <!-- port status (1|2) -->
            <!ELEMENT IFSTATUS (#PCDATA)>
            <!-- port type (integer) -->
            <!ELEMENT IFTYPE (#PCDATA)>
            <!-- mac address (string) -->
            <!ELEMENT MAC (#PCDATA)>
            <!-- trunk port flag (0|1) -->
            <!ELEMENT TRUNK (#PCDATA)>

            <!-- VLANs list -->
            <!ELEMENT VLANS (VLAN+)>
              <!-- a VLAN -->
              <!ELEMENT VLAN (NAME, NUMBER)>
                <!-- VLAN name (string) -->
                <!ELEMENT NAME (#PCDATA)>
                <!-- VLAN ID (integer) -->
                <!ELEMENT NUMBER (#PCDATA)>

        <!-- netinventory module version(string) -->
        <!ELEMENT MODULEVERSION (#PCDATA)>
        <!-- server process ID (integer) -->
        <!ELEMENT PROCESSNUMBER (#PCDATA)>

      <!-- agent ID (string) -->
      <!ELEMENT DEVICEID (#PCDATA)>
      <!-- message type, ie  "SNMPQUERY" -->
      <!ELEMENT QUERY (#PCDATA)>

### Example
    <?xml version="1.0" encoding="UTF-8" ?>
    <REQUEST>
      <CONTENT>
        <DEVICE>
          <INFO>
            <COMMENTS>ProCurve J8697A Switch 5406zl, revision K.15.04.0015m, ROM K.15.28 (/ws/swbuildm/ec_rel_charleston_qaoff/code/build/btm(ec_rel_</COMMENTS>
            <CONTACT>systeme@example.com</CONTACT>
            <ID>1</ID>
            <IPS>
              <IP>127.0.0.1</IP>
              <IP>192.168.227.246</IP>
            </IPS>
            <LOCATION>datacenter</LOCATION>
            <MAC>00:18:71:c1:e0:00</MAC>
            <MANUFACTURER>Hewlett-Packard</MANUFACTURER>
            <MODEL>ProCurve 5406zl (J8697A)</MODEL>
            <NAME>thisisdog CR2</NAME>
            <SERIAL>SG707SU03Y</SERIAL>
            <TYPE>NETWORKING</TYPE>
            <UPTIME>(293555959) 33 days, 23:25:59.59</UPTIME>
          </INFO>
          <PORTS>
            <PORT>
              <CONNECTIONS>
                <CDP>1</CDP>
                <CONNECTION>
                  <IFDESCR>141</IFDESCR>
                  <IP>172.31.196.140</IP>
                  <MODEL>ProCurve J8697A Switch 5406zl, revision K.15.04.0015m, ROM K.15.28 (/ws/swbuildm/ec_rel_charleston_qaoff/code/build/btm(ec_rel_charleston_qaoff))</MODEL>
                  <SYSDESCR>ProCurve J8697A Switch 5406zl, revision K.15.04.0015m, ROM K.15.28 (/ws/swbuildm/ec_rel_charleston_qaoff/code/build/btm(ec_rel_charleston_qaoff))</SYSDESCR>
                  <SYSNAME>0x0019BB010B00</SYSNAME>
                </CONNECTION>
              </CONNECTIONS>
              <IFDESCR>A1</IFDESCR>
              <IFINERRORS>0</IFINERRORS>
              <IFINOCTETS>2281257823</IFINOCTETS>
              <IFINTERNALSTATUS>1</IFINTERNALSTATUS>
              <IFLASTCHANGE>(137791) 0:22:57.91</IFLASTCHANGE>
              <IFMTU>1500</IFMTU>
              <IFNAME>A1</IFNAME>
              <IFNUMBER>1</IFNUMBER>
              <IFOUTERRORS>0</IFOUTERRORS>
              <IFOUTOCTETS>1349379502</IFOUTOCTETS>
              <IFPORTDUPLEX>3</IFPORTDUPLEX>
              <IFSPEED>1000000000</IFSPEED>
              <IFSTATUS>1</IFSTATUS>
              <IFTYPE>6</IFTYPE>
              <MAC>00:18:71:c1:f0:ff</MAC>
            </PORT>
            ...
            <PORT>
              <CONNECTIONS>
                <CONNECTION>
                  <MAC>00:19:bb:0d:81:00</MAC>
                  <MAC>00:19:bb:0d:91:71</MAC>
                  <MAC>00:19:bb:0d:91:73</MAC>
                  <MAC>00:19:bb:0d:91:8a</MAC>
                  <MAC>00:05:1e:bf:07:e0</MAC>
                  <MAC>00:50:56:00:00:06</MAC>
                  <MAC>00:50:56:70:c4:44</MAC>
                  <MAC>00:50:56:7b:aa:a5</MAC>
                  <MAC>00:50:56:46:51:9d</MAC>
                  <MAC>00:50:56:49:71:8c</MAC>
                  <MAC>02:a0:98:12:b5:20</MAC>
                  <MAC>00:00:00:00:fe:00</MAC>
                  <MAC>00:00:00:00:fe:01</MAC>
                  <MAC>00:90:fb:2e:03:34</MAC>
                </CONNECTION>
              </CONNECTIONS>
              <IFDESCR>Trk2</IFDESCR>
              <IFINERRORS>0</IFINERRORS>
              <IFINOCTETS>3379199007</IFINOCTETS>
              <IFINTERNALSTATUS>1</IFINTERNALSTATUS>
              <IFLASTCHANGE>(140222) 0:23:22.22</IFLASTCHANGE>
              <IFMTU>1500</IFMTU>
              <IFNAME>Trk2</IFNAME>
              <IFNUMBER>291</IFNUMBER>
              <IFOUTERRORS>0</IFOUTERRORS>
              <IFOUTOCTETS>410125299</IFOUTOCTETS>
              <IFSPEED>3000000000</IFSPEED>
              <IFSTATUS>1</IFSTATUS>
              <IFTYPE>161</IFTYPE>
              <MAC>00:18:71:c1:e0:00</MAC>
            </PORT>
            ...
          </PORTS>
        </DEVICE>
        <MODULEVERSION>2.3.9901</MODULEVERSION>
        <PROCESSNUMBER>1</PROCESSNUMBER>
      </CONTENT>
      <DEVICEID>beria-2012-08-02-20-50-16</DEVICEID>
      <QUERY>SNMPQUERY</QUERY>
    </REQUEST>
