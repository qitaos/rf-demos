#encoding=utf-8

import string
import random
from robot.api import logger
import logging
import sys

class ExampleLibrary:
    
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = 0.1
    ROBOT_LIBRARY_DOC_FORMAT = 'reST'
    
    def __init__(self, arg = 1):
        """Library文档 *斜体* 这个文档用的是reST结构 reStructuredText__.
            
           __ http://qitaos.github.io
        """
        print 'Library arg %s' % arg
        pass
    
    def gen_nums(self, counts):
        """生成随机数字字符串. \n
            例子:
            | ${a}= | gen nums | 4 |
            这样会返回一个随机4位数字字符串. 比如 '0624','1456'.
            """
        s = self._gen_nums(counts)
        
        print '*INFO* Get random number string: %s' % s
        return s
    
    def _gen_nums(self, counts):
        
        li = string.digits
        s = ''
        for n in range(0, int(counts)):
            s += li[random.randint(0, len(li) - 1)]
        return s

    def arg_demo(self, arg1, arg2= 2, *args):
        print 'arg1 %s arg2 %s' % (arg1,arg2)
        for arg in args:
            sys.__stdout__.write('Got arg %s\n' % arg)

    def freearg_demo(self, **freearg):
        for name, value in freearg.items():
            print name, value

class OtherLibrary:

    def __init__(self):
        self._counter = 0
        pass

    def count(self):
        """用于计数器. Init countNum is 0.
        When you call this method it will add 1 by itself.
        Example:
        | ${a}= | count |
        """
        self._counter += 1
        logger.debug('self._counter += 1')
        return self._counter

    def clear_counter(self):
        """clear counter has only a short documentation
        Example:
        | ${a}= | clear counter |
        """
        self._counter = 0
        logging.info('self._counter = 0')