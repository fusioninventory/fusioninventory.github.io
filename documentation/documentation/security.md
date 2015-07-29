---
layout: page
title: Security
---

# Security

## Threat model

They are several potential security issues in fusioninventory.

First, the server automatically trust any received message, using the
identifier found in the message (unfortunatly called DEVICEID) to identify the
sending agent. If you want to protect your inventory from rogue reports, you
have to restrict access to the plugin location on your GLPI server, typically
using HTTP authentication. And preferentially over HTTPS, to prevent password
sniffing.

Second, some messages between the server and the agent may contain sensible
informations. For instance, NetInventory tasks involves sending SNMP
credentials from the server to the agent. In this case, HTTPS usage ensures
proper communication encryption.

Third, some tasks are explicitely designed to make the agent execute arbitrary
commands on its host. For instance, the Deploy task is used to install
software on agent side. In this case, HTTPS usage ensures proper server
authentication.

If none of these issues is a concern for your particular case, for instance
because your network is trusted, you don't need the additional overhead and
complexity of HTTPS.

## HTTPS support

HTTPS support on server side is enforced by the HTTP server, typically Apache
with mod_ssl.

HTTPS support on agent side relies on LWP (also known as libwww-perl), the
standard Perl library for HTTP communication. This library is able to use
either Crypt::SSLeay or IO::Socket::SSL perl modules transparently for HTTPS
support. However, only the second one is able to perform server certificate
validation. As a consequence, the agent will refuse to use HTTPS, and exit
immediatly if IO::Socket::SSL is not available, unless certificate checking has
been explicitely disabled, through *no-ssl-check* [configuration
parameter](/documentation/documentation/agent/configuration.html) (or alternatively, *--no-ssl-check* [command
line option](/documentation/documentation/agent/man.html)).

## Self-signed certificate setup

If you don't have a regular PKI to deliver trusted SSL certificates, here is
how to quickly create a self-signed certificate, and use it to (moderatly)
secure your setup.

The following command generate a key and a self-signed certificate, valid for
two years:

    $> openssl req -new -newkey rsa:2048 -days 730 -nodes -x509 -keyout server.key -out server.crt
    Generating a 1024 bit RSA private key
    ......++++++
    ...............++++++
    writing new private key to 'server.key'
    -----
    You are about to be asked to enter information that will be incorporated
    into your certificate request.
    What you are about to enter is what is called a Distinguished Name or a DN.
    There are quite a few fields but you can leave some blank
    For some fields there will be a default value,
    If you enter '.', the field will be left blank.
    -----
    Country Name (2 letter code) [GB]:FR
    State or Province Name (full name) [Berkshire]:Ile de France
    Locality Name (eg, city) [Newbury]:Paris
    Organization Name (eg, company) [My Company Ltd]:
    Organizational Unit Name (eg, section) []:
    Common Name (eg, your name or your server's hostname) []:glpi.mycompany.com
    Email Address []:

[[!template  id=warning text="You have to ensure the exact host name in your
server URL matches the certificate Common Name attribute. For instance, if your
server URL is http(s)://glpi.mycompany.com/, the common name should be
'glpi.mycompany.com'."]]

The key, in server.key file, is the private part allowing the server to prove
its identity. It should not be distributed, and be correctly protected. The
certificate, in server.crt file, is the public part allowing other piece of
software to check the server identity, and can be freely distributed.

Both files have to be installed on the server host, and the web server should
be configured to use them. For instance, on Apache with mod_ssl:

    SSLEngineOn
    SSLCertificateFile /etc/pki/tls/certs/server.crt
    SSLCertificateKeyFile /etc/pki/tls/private/server.key

The certificate file has to be installed on each agent host, and the agent
should be configured to use it as certification authority, with *ca-cert-file*
[configuration parameter](/documentation/documentation/agent/configuration.html) (or alternatively,
*--ca-cert-file* [command line option](/documentation/documentation/agent/man.html)).
