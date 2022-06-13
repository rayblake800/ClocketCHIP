# ClocketCHIP
An I2C Clock for the PocketCHIP

This project makes the PocketCHIP into a clock using an Adafruit I2C backpack Seven Segment Display (https://www.adafruit.com/product/879). The version I used had a pin header on the back, but these seem to no longer be offered. I made a hat as well to position the display above the screen, however this is not necessary to make it work. This project also does not require any additional libraries or software to be installed on the PocketCHIP. It uses 2 bash scripts, `init_displays.sh` and `showtime.sh`, to initialize the display and to write the time. It uses a cron job to call the script every minute to update the time.

Place `showtime.sh` and `initialize_displays.sh` in your home directory, then run `crontab -e` and add the following lines:

- `@reboot bash /home/chip/init_displays.sh`
- `* * * * * bash /home/chip/showtime.sh`
