import sys
from importlib import import_module

if sys.version_info.major > 2:
  from importlib.metadata import version


try:
  __version__ = version('waveshare-epaper')
except:
  __version__ = ''
  pass


def epaper(model):
  path = 'epaper.e-Paper.RaspberryPi_JetsonNano.python.lib.waveshare_epd'
  return import_module('{}.{}'.format(path, model))
