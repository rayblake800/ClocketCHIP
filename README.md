
<p align="center">
   <img src="/clocketchip.jpg" width="300">
</p>
                                          
# ClocketCHIP
An I2C Clock for the PocketCHIP

This project makes the PocketCHIP into a clock using an Adafruit I2C backpack Seven Segment Display (https://www.adafruit.com/product/879). The version I used had a pin header on the back, but these seem to no longer be offered. I made a hat as well to position the display above the screen, however this is not necessary to make it work. This project also does not require any additional libraries or software to be installed on the PocketCHIP. It uses 2 bash scripts, `init_displays.sh` and `showtime.sh`, to initialize the display and to write the time. It uses a cron job to call the script every minute to update the time.

Place `showtime.sh` and `initialize_displays.sh` in your home directory, then run `crontab -e` and add the following lines:

- `@reboot bash /home/chip/init_displays.sh`
- `* * * * * bash /home/chip/showtime.sh`

## Notes
- I leave my PocketCHIP plugged into power, as I left it by unplugged and burned out one of the CHIP units I had. The battery seems to be undamaged but the power management of the CHIP failed and now the unit is dead. Recreate at your own risk.
- I'm not sure the @reboot directive in crontab is supported on CHIP
