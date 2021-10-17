from importlib import import_module
from importlib.metadata import version


try:
  __version__ = version('waveshare-epaper')
except:
  pass


def epaper(model):
  path = 'epaper.e-Paper.RaspberryPi_JetsonNano.python.lib.waveshare_epd'
  return import_module('{}.{}'.format(path, model))
