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

There is a toggle switch to discharge the supercapacitor, which will take 14-16
minutes at 390mΩ (unverified). This process is limited by the current switching
capacity of the switch.

Schematics
----------

.. image:: render/wireless-3v3-supercap-Root-sch.svg
   :alt: Root schematic

Power In
~~~~~~~~

.. image:: render/wireless-3v3-supercap-Power%20In-sch.svg
   :alt: Power in schematic

Charge
~~~~~~

.. image:: render/wireless-3v3-supercap-Charge-sch.svg
   :alt: Charge schematic

Power Out
~~~~~~~~~

Output power is supplied at 3.3V up to 3A, from a supercapacitor voltage range
of 0.5-2.7V.

.. image:: render/wireless-3v3-supercap-Power%20Out-sch.svg
   :alt: Power out schematic

PCB
---

.. image:: render/wireless-3v3-supercap-pcb.svg
   :alt: PCB

Components
----------

+---------------------+----------+--------------------------------------------------------------+
| Refs                | Quantity | Name                                                         |
+=====================+==========+==============================================================+
| C1                  |     1    | Tecate TPLH-2R7/800PS35X71 800F 2.7V Capacitor, Through Hole |
+---------------------+----------+--------------------------------------------------------------+
| C2                  |     1    | 10µF 10% 10V X7R Capacitor, SMD 1206 (Metric 3216)           |
+---------------------+----------+--------------------------------------------------------------+
| C3, C4              |     2    | 22µF 10% 10V X7R Capacitor, SMD 1206 (Metric 3216)           |
+---------------------+----------+--------------------------------------------------------------+
| J1                  |     1    | 1x06 Pin Header, Through Hole (2.54mm)                       |
+---------------------+----------+--------------------------------------------------------------+
| J2                  |     1    | 1x02 Pin Header, Through Hole (2.54mm)                       |
+---------------------+----------+--------------------------------------------------------------+
| R1                  |     1    | TE Connectivity THS25R39J 390mΩ 5% 25W Resistor              |
+---------------------+----------+--------------------------------------------------------------+
| R2                  |     1    | 1kΩ 1% 125mW Resistor, SMD 0805 (Metric 2012)                |
+---------------------+----------+--------------------------------------------------------------+
| R3                  |     1    | 402kΩ 1% 125mW Resistor, SMD 0805 (Metric 2012)              |
+---------------------+----------+--------------------------------------------------------------+
| R4                  |     1    | 88.7kΩ 1% 125mW Resistor, SMD 0805 (Metric 2012)             |
+---------------------+----------+--------------------------------------------------------------+
| R5, R6              |     2    | 10kΩ 125mW Resistor, SMD 0805 (Metric 2012)                  |
+---------------------+----------+--------------------------------------------------------------+
| SW1                 |     1    | C&K E103SYZGE SPDT Toggle Switch 7.5A 125V                   |
+---------------------+----------+--------------------------------------------------------------+
| U1                  |     1    | Texas Instruments BQ24640RVAR Super Capacitor Charger        |
+---------------------+----------+--------------------------------------------------------------+
| U2                  |     1    | Texas Instruments TPS61022 8A Boost Converter, 0.5-5.5V      |
+---------------------+----------+--------------------------------------------------------------+
|                     |     1    | Vishay IWAS4832AEEB120KF1 Wireless Charging Receive Coil     |
+---------------------+----------+--------------------------------------------------------------+
