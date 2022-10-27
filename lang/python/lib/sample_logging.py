import logging, loggingsetup 
#logging.debug("Jie") # using root logger
#logger = logging.getLogger("simpleLogger") 
#logger.info("Hi there") # using predefined simpleLogger
logger = logging.getLogger(__name__)
logger.info("Hi here") # using not predefined logger, guess taking root config