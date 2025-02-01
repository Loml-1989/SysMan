# Arch Linux System Maintenance Script

## 👋 Hey there!

This script is for lazy Arch users (like me) who don’t want to remember all those system maintenance commands. Just run it, choose what you wanna do, and it’ll handle the rest. Super easy, no brainpower required.

## 🚀 Features

Here’s what this script can do for you:

1. **Update your system**: Keep your system fresh by updating everything and cleaning up unused packages.
2. **Check disk usage**: Find the top 20 biggest files and folders taking up space.
3. **Update AUR packages**: Quickly update your AUR packages using `yay`.
4. **Clean logs**: Remove system log files older than 7 days (bye bye old logs).
5. **Test network speed**: Run a speed test to check how fast (or slow) your internet is.
6. **Save system info**: Gathers your system details (like kernel, CPU, RAM, etc.) and saves it to a text file for easy sharing or troubleshooting.

## 🛠️ How to Install

1. **Clone the repo**:

   ```bash
   git clone https://github.com/Loml-1989/SysMan.git

2. **Navigate to the script directory**:
    ```bash
    cd SysMan

3. **Make the script executable**:
    ```bash
    chmod +x sysman.sh

4. **Run**:
    ```bash
    ./sysman.sh 

## 🤖 How It Works:

Once you run the script, you’ll see a simple menu. Just choose an option, and the script will handle the rest.

--------------------------------------------------------------

## 🤷 Tips:

- Run this script regularly to keep your system in tip-top shape.
- You’ll need 'sudo' for some tasks, so make sure you have the necessary permissions.
- Feel free to modify or add more tasks if you need them. It’s just a simple Bash script!

---------------------------------------------------------------

## 💬 Contributing:

Want to improve the script? Make your changes, and send a pull request. I’ll probably merge it (unless I’m too lazy).

---------------------------------------------------------------

## 📜 License:

MIT License. Do whatever you want with it.

---------------------------------------------------------------

# 🙏 Thanks:

Thanks to [speedtest-cli](https://github.com/sivel/speedtest-cli) for providing a quick way to test internet speed.

---------------------------------------------------------------

Happy Arch-ing! 😎
