import importlib

__version__ = '0.1.0'

lib = 'epaper.e-Paper.RaspberryPi_JetsonNano.python.lib.waveshare_epd'

def epaper(model):
  return importlib.import_module('{}.{}'.format(lib, model))

