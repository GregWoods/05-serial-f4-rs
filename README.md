# stm32f4-05-serial

A simple project which runs on the **stm32f411 black pill** board (should also work on the stm32f401 variant)

It demonstrates the use of the USART functionality of **stm32f4xx_hal**

It is intended to be used as a template for use with ```cargo generate``

It contains my own well-tested opinions about tools and practices. 

# Hardware Requirements

* All hardware from aliexpress or your favorite Chinese parts stockist
* A "**black pill**" board. Get the **stm32f411** board - It has more more memory and faster clock speed than the stm32f401. **Do not** get the black version of the "blue pill" stm32f103 board, as the code is substantially different. ($4)
* A USB to Serial board. Mine is based on a **CP2102** chip and uses a microUSB cable instead of plugging straight into the USB port ($1)
* USB-C cable for the black pill
* microUSB cablefor the CP2102 (if you bought the microUSB variant)
* You will probably need to solder the pins to the 2 boards
* Connect the USB-to-serial board to the black pill

| USB-to-serial | Black Pill |
| --- | --- |
| Gnd | Gnd |
| TXO | PA10 (USART1 RX) |
| RXI | PA9 (USART1 TX) |

## Install cargo-generate

if you don't already have it
```cargo install cargo-generate```

## Generate your project
```
cargo generate --git https://github.com/gregwoods/stm32f4-05-serial --name your-project-name
```

## Set up source control for your project

This step uses **[gh](https://github.com/cli/cli)**, the GitHub cli client.
```
cd your-project-name
git init
gh repo create --public your-project-name
git push
```

## Open Current Folder in [VS Code](https://code.visualstudio.com/)

```code .```

### Build

* Using VS Code's terminal (Ctrl + ')

```cargo build```
or
```cargo build --release```

### Connect to the usb-to-serial adapter

* Connect the USB-to-serial board to your PC and find its COM port in Deveice Manager (Windows)
* Use a [serial terminal app](https://learn.adafruit.com/windows-tools-for-the-electrical-engineer/serial-terminal) (e.g Putty) to connect to the serial port at 19200 baud

### Run it

* In the VS Code Debug tab (Ctrl+Shift+D)...
* Select ```Debug (OpenOCD)``` or ```Release (OpenOCD)```
* F5 to Run
* This rust application simply echos back whatever you type into the serial terminal

## Problems

If you've followed these steps exactly, on the recommended hardware and it doesn't work, raise an issue.

