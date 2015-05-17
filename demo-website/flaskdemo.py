# -*- coding: utf-8 -*-

from simplexml import dumps
from flask import Flask, jsonify, render_template, request, make_response
from functools import wraps
from flask_restful import Api, Resource

from demodao import Dao
import time
import atexit
from flask.ext.httpauth import HTTPBasicAuth
auth = HTTPBasicAuth()

def cleanup():
    return
#db.removeOrder()

def output_xml(data, code, headers=None):
    """Makes a Flask response with a XML encoded body"""
    resp = make_response(dumps({'response' :data}), code)
    resp.headers.extend(headers or {})
    return resp


atexit.register(cleanup)

app = Flask(__name__)
db = Dao()

api = Api(app, default_mediatype='application/xml')
api.representations['application/xml'] = output_xml


class Hello(Resource):
    
    """
        # you need requests
        >>> from requests import get
        >>> get('http://localhost:5000/me').content # default_mediatype
        '<?xml version="1.0" ?><response><hello>me</hello></response>'
        >>> get('http://localhost:5000/me', headers={"accept":"application/json"}).content
        '{"hello": "me"}'
        >>> get('http://localhost:5000/me', headers={"accept":"application/xml"}).content
        '<?xml version="1.0" ?><response><hello>me</hello></response>'
    """

    def get(self, entry):
        return {'hello': entry}


api.add_resource(Hello, '/hello/<string:entry>')



def check_auth(username, password):
    """This function is called to check if a username /
        password combination is valid.
        """
    return username == 'ok' and password == 'python'

@auth.get_password
def get_password(username):
    if username == 'ok':
        return 'python'
    return None



def authenticate():
    """Sends a 401 response that enables basic auth"""
    return Response(
                    'Could not verify your access level for that URL.\n'
                    'You have to login with proper credentials', 401,
                    {'WWW-Authenticate': 'Basic realm="Login Required"'})



def login_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        auths = request.authorization
        if not auths or not check_auth(auths.username, auths.password):
            return authenticate()
        return f(*args, **kwargs)
    return decorated


"""@app.before_request
def before_request():
    if request.path != '/':
        if not request.headers['content-type'].find('application/json'):
            return 'Unsupported Media Type', 415"""

@app.route('/401/')
@auth.login_required
def unauthorized():
    return make_response(jsonify({'pass': 'Authorized access'}), 200)
#return 'Unauthorized access', 401

@app.errorhandler(404)
def not_found(error=None):
    message = {
        'status': 404,
            'message': 'Not Found: ' + request.url,
    }
    resp = jsonify(message)
    resp.status_code = 404
    
    return resp

 
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/updown/')
def updown():
    return render_template('updown.html')

@app.route('/payfor/')
def payfor():
    return render_template('payfor.html')

@app.route('/deliver/')
def deliver():
    return render_template('deliver.html')

@app.route('/iframe/')
def iframe():
    return render_template('iframe.html')
 
@app.route('/echo/', methods=['GET'])
def echo():
    pname = request.args.get('ProductName')
    pquan = request.args.get('Quantity')
    db.addItemToOrder(pname, pquan)
    time.sleep(2)
    ret_data = db.getItemsFromOrder()
    #print ret_data
    return jsonify(ProductName=pname, Quantity=pquan, AllProducts=ret_data)

@app.route('/remove/', methods=['GET'])
def remove():
    pid = request.args.get('Pid')
    db.delItemFromOrder(pid)
    ret_data = db.getItemsFromOrder()
    #print ret_data
    return jsonify(AllProducts=ret_data)

@app.route('/getlist/', methods=['GET'])
def getlist():
    ret_data = db.getItemsFromOrder()
    #print ret_data
    return jsonify(AllProducts=ret_data)

@app.route('/api/<userid>', methods=['GET','POST'])
def webapi(userid):
    message = None
    
    if request.methods == 'POST':
        if request.headers['Content-Type'] == 'text/plain':
            return "Text Message: " + request.data
    
        elif request.headers['Content-Type'] == 'application/json':
            return "JSON Message: " + json.dumps(request.json)

        elif request.headers['Content-Type'] == 'application/octet-stream':
            f = open('./binary', 'wb')
            f.write(request.data)
            f.close()
            return "Binary message written!"

        else:
            return "415 Unsupported Media Type ;)"


    elif request.methods == 'GET':
        users = {'1':'john', '2':'steve', '3':'bill'}
        if str(userid) in users:
            return jsonify({userid:users[userid]})
        else:
            return not_found()
   
    #print ret_data
    return None


@app.route('/users/<userid>', methods = ['GET'])
def api_users(userid):
    users = {'1':'john', '2':'steve', '3':'bill'}
    
    if userid in users:
        return jsonify({userid:users[userid]})
    else:
        return not_found()


if __name__ == '__main__':
    app.run(port=8000, debug=True, threaded=True)
