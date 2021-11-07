import importlib
import os
import glob

__version__ = ''

PKG_DIR = os.path.dirname(__file__)
PATH = ['e-Paper', 'RaspberryPi_JetsonNano', 'python', 'lib', 'waveshare_epd']

def epaper(model):
  path = '.'.join(['epaper'] + PATH)
  return importlib.import_module('{}.{}'.format(path, model))

def modules():
  path = os.path.join(PKG_DIR, *PATH, 'epd*.py')
  exclude = ['epdconfig']
  _libs = [os.path.splitext(os.path.basename(_))[0] for _ in glob.glob(path)]
  libs = list(filter(lambda x: x not in exclude, _libs))
  return sorted(libs)
