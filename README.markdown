director
========

This is the director module. It allows you to have a node definition become a director for new machines.

A common VM workflow is to make a template and clone it when you need another machine. This module will
allow you to specify what the next checked in clone will automatically become.

example
-------

    node base.nekroze.local {
      class { 'director':
        target => 'database.nekroze.local',
      }
    }

This node definition will cause any puppet agent by the ``certname`` of ``base.nekroze.local`` to change its ``certname`` to
``database.nekroze.local``.

What this means is that after the first puppet agent run (eg. ``puppet agent -t``) this machine will start pulling the
definition for ``database.nekroze.local``.
