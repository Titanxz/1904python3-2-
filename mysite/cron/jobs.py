import time
import datetime
import logging
log = logging.getLogger('django')
def demo():
    message = 'corntab..., now time is:' + str(datetime.datetime.now())
    log.info('corntab...')
    log.warning('corntab...  warning')
    log.warning(message)