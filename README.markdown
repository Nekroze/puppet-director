director
========

This is the director module. It allows you to have a node definition become a director for new machines.

A common VM workflow is to make a template and clone it when you need another machine. This module will
allow you to specify what the next checked in clone will automatically become.

example
-------

    node base.nekroze.local {
      class { 'director':
        hostname => 'database.nekroze.local',
        ip       => '192.168.1.21',
      }
    }

This node definition will cause any puppet agent by the ``certname`` of ``base.nekroze.local`` to change its hostname to
``database.nekroze.local`` and the ip address to ``192.168.1.21`` while also updating the machines puppet agent ``certname``

What this means is that after the first puppet agent run (eg. ``puppet agent -t``) this machine will start pulling the
definition for ``database.nekroze.local``.
