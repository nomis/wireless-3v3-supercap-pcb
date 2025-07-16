Wireless 3.3V Supercapacitor PCB
================================

Overview
--------

PCB to wirelessly power a 3.3V microcontroller circuit and charge a
supercapacitor so that it keeps running for at least an hour when taken off the
charging coil.

Dimensions: 88mm W × 40mm H

Usage
-----

This is a KiCad project.

Safety
------

There is a toggle switch to discharge the capacitor, which will take 10-15
at 6A (unverified). This process is limited by the current switching capacity
of the switch.

Schematic
---------

.. image:: render/wireless-3v3-supercap-sch.svg
   :alt: Schematic

PCB
---

.. image:: render/wireless-3v3-supercap-pcb.svg
   :alt: PCB

Components
----------

+---------------------+----------+--------------------------------------------------------------+
| Refs                | Quantity | Name                                                         |
+=====================+==========+==============================================================+
|                     |     1    | Vishay IWAS4832AEEB120KF1 Wireless Charging Receive Coil     |
+---------------------+----------+--------------------------------------------------------------+
| C1                  |     1    | Tecate TPLH-2R7/800PS35X71 800F 2.7V Capacitor, Through Hole |
+---------------------+----------+--------------------------------------------------------------+
| J1, J2              |     2    | 1x02 Pin Header, Through Hole (2.54mm)                       |
+---------------------+----------+--------------------------------------------------------------+
