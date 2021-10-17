import importlib

__version__ = ''

def epaper(model):
  path = 'epaper.e-Paper.RaspberryPi_JetsonNano.python.lib.waveshare_epd'
  return importlib.import_module('{}.{}'.format(path, model))
