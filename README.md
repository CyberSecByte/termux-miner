
# ℹ️ About Termux-Miner

This repository helps you compile and install the xmrig miner on any Android device using Termux. It simplifies the process of transforming old, useless devices into low-end mining machines.

### 🚀 Installation

Clone this repository.
Run the following command to install the basic requirements, compile, and install the miner:

    bash install.sh

### ⚙️ Configuration

Obtain the POOL:PORT information from [Nanopool.](https://nanopool.org/)

Edit the run.sh file and add your information:


    POOL=🏊‍♂️
    PORT=🔢
    MYADDRESS=📬
    COINNAME=💰

- Replace POOL= with your obtained pool address.
- Replace PORT= with your obtained port number.
- Replace MYADDRESS= with your cryptocurrency receiving address.
- Replace COINNAME= with the name of your chosen coin (e.g., if you are mining Monero, put "monero").

Complete the configuration and start mining by running the following command:

    bash run.sh
