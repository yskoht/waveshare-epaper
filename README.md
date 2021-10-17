
# Waveshare e-paper package

Waveshare e-paper package for Python on Raspberry Pi.
Original source is https://github.com/waveshare/e-Paper.

## Install

```sh
pip install waveshare-epaper
```

## Usage

```python
import epaper

# For example, when using 7.5inch e-Paper HAT
epd = epaper.epaper('epd7in5').EPD()

# init and Clear
epd.init()
epd.Clear()
```

- `epaper.epaper` method takes the model name and returns the e-paper library module.
- See below for a list of e-paper model names.
  - https://github.com/waveshare/e-Paper/tree/master/RaspberryPi_JetsonNano/python/lib/waveshare_epd
- For more information on how to use the e-paper library module, please refer to the `e-Paper` part of the wiki below.
  - [Waveshare Wiki](https://www.waveshare.com/wiki/Main_Page#OLEDs_.2F_LCDs)

## License

This software is released under the MIT License, see LICENSE.
