from pymongo import Connection

HOST="localhost"
PORT=49157
c = Connection(host=HOST, port=PORT)
print "connected successfully"

