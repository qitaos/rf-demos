# -*- coding: utf-8 -*-

import sqlite3 as sqlite

def _dict_factory(cursor, row):
    d = {}
    d["Quantity"] = row[2]
    d["ProductName"] = row[1]
    d["Id"] = row[0]
    return d

class Dao(object):

    def __init__(self):
        self.con = sqlite.connect("demo.db", check_same_thread=False)
        self.con.row_factory = _dict_factory
        self.con.execute("create table if not exists order_item(id integer primary key, name text, quantity integer)")

    def addItemToOrder(self, name, quantity):
        #con = sqlite.connect("demo.db")
        with self.con:
        	self.con.execute("insert into order_item(name, quantity) values (?, ?)", (name, quantity))

    def getItemsFromOrder(self):
        #con = sqlite.connect("demo.db")
        with self.con:
        	cursor = self.con.cursor()
        	cursor.execute("select id, name, quantity from order_item order by id")
        	return cursor.fetchall()        	

    def delItemFromOrder(self, pid):
        #con = sqlite.connect("demo.db")
        with self.con:
            self.con.execute("delete from order_item where id = ?", (pid,))
 
    def removeOrder(self):
        #con = sqlite.connect("demo.db")
        with self.con:
            self.con.execute("drop table if exists order_item")
