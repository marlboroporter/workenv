# * Based on # [logging with yaml](https://gist.github.com/kingspp/9451566a5555fb022215ca2b7b802f19)

""" Usage Tutorial
    import logging, loggingsetup 
    logging.debug("Jie") # using root logger
    logger = logging.getLogger("simpleLogger") 
    logger.info("Hi there") # using predefined simpleLogger
    logger = logging.getLogger(__name__)
    logger.info("Hi here") # using not predefined logger, guess taking root config
"""

import os
import yaml
import logging.config
import logging
import coloredlogs

def setup_logging_kingsapp():
    setup_logging(
        default_path='/Users/jieli/.e/lang/python/etc/logging_kingsapp.yaml', 
        default_level=logging.INFO, 
        env_key='LOG_CFG')

def setup_logging_kingsapp_with_filter():
    setup_logging(
        default_path='/Users/jieli/.e/lang/python/etc/logging_kingsapp_with_filter.yaml', 
        default_level=logging.INFO, 
        env_key='LOG_CFG')

def setup_logging_basics():
    setup_logging(
        default_path='/Users/jieli/.e/lang/python/etc/logging.yaml', 
        default_level=logging.INFO, 
        env_key='LOG_CFG')


def setup_logging(default_path='logging_python_logging.yaml', default_level=logging.INFO, env_key='LOG_CFG'):
    """
    | **@author:** Prathyush SP
    | Logging Setup
    """
    path = default_path
    value = os.getenv(env_key, None)
    if value:
        path = value
    #print("path=",path)
    if os.path.exists(path):
        with open(path, 'rt') as f:
            try:
                config = yaml.safe_load(f.read())
                logging.config.dictConfig(config)
                coloredlogs.install()
            except Exception as e:
                print(e)
                print('Error in Logging Configuration. Using default configs')
                logging.basicConfig(level=default_level)
                coloredlogs.install(level=default_level)
    else:
        logging.basicConfig(level=default_level)
        coloredlogs.install(level=default_level)
        print('Failed to load configuration file. Using default configs')

# -------------- filters
class infoFilter(logging.Filter):
    def filter(self, rec):
        return rec.levelno == logging.INFO


## ---------------- simple 
#def setupLogging():
#    with open('loggingConfig.yaml', 'rt') as file:
#        config = yaml.safe_load(file.read())
#        logging.config.dictConfig(config)

############## default setting ####################
# enabled when module imported
setup_logging_basics()
