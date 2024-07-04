# FRDM-MCXA153 TinyUSB Web serial demo

## Setup

- Clone this repo.
- TinyUSB is a sub module to this repo. Open a terminal run

`
git submodule init

git submodule update
`

- MCUXpresso IDE project located in *src/bldc_encoder_sum*
- This sample was built with MCUXpresso v11.9.0 and MCXA153 SDK V2.14

## Demonstration

This sample is a simple application which implements USB CDC (Serial port) and a WebSserial interface. WeBserial is a browser API that enables interaction with USB devices in a web browser.  This enables custom USB hardware GUIs without special driver or software installation.

The folder /docs has a simple html/javascript example which is hosted on github pages. You can browser to https://bldc.wavenumber.net or https://wavenumber-eng.github.io/bldc/


This example is a simple tool to simulate 3-phase hall effect signals for a BLDC motor circtuit.  The webusb interface has a slider which sets the communtation / step rate of the simulated hall effect sensor.

The FRDM-MCXA153 will generate the signals on GPIO ports 1-10, 1-12 and 1-13.

