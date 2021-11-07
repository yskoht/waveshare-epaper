
# Waveshare e-paper package

Waveshare e-paper package for Python on Raspberry Pi.
Original source is https://github.com/waveshare/e-Paper.

## Install

```sh
pip install waveshare-epaper
```

## Usage

You can get available e-paper modules list by `epaper.modules()`.

```python
$ python
Python 3.7.3 (default, Jan 22 2021, 20:04:44)
[GCC 8.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import epaper
>>> epaper.modules()
['epd1in02', 'epd1in54', 'epd1in54_V2', 'epd1in54b', 'epd1in54b_V2', 'epd1in54c', 'epd2in13', 'epd2in13_V2', 'epd2in13b_V3', 'epd2in13bc', 'epd2in13d', 'epd2in66', 'epd2in66b', 'epd2in7', 'epd2in7b', 'epd2in7b_V2', 'epd2in9', 'epd2in9_V2', 'epd2in9b_V3', 'epd2in9bc', 'epd2in9d', 'epd3in7', 'epd4in01f', 'epd4in2', 'epd4in2b_V2', 'epd4in2bc', 'epd5in65f', 'epd5in83', 'epd5in83_V2', 'epd5in83b_V2', 'epd5in83bc', 'epd7in5', 'epd7in5_HD', 'epd7in5_V2', 'epd7in5b_HD', 'epd7in5b_V2', 'epd7in5bc']
```

- See below for a list of e-paper model names.
  - https://github.com/waveshare/e-Paper/tree/master/RaspberryPi_JetsonNano/python/lib/waveshare_epd
- For more information on how to use the e-paper library module, please refer to the `e-Paper` part of the wiki below.
  - [Waveshare Wiki](https://www.waveshare.com/wiki/Main_Page#OLEDs_.2F_LCDs)

<br />

`epaper.epaper` method takes the model name and returns the e-paper library module.

```python
import epaper

# For example, when using 7.5inch e-Paper HAT
epd = epaper.epaper('epd7in5').EPD()

# init and Clear
epd.init()
epd.Clear()
```

## License

This software is released under the MIT License, see LICENSE.
