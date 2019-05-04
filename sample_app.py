import os

from bottle import route, template, redirect, static_file, error, run, request


@route('/home')
def show_home():
    return template('home')


@route('/')
def handle_root_url():
    redirect('/home')


@route('/projectlist')
def make_request():
    return template('details')


@route('/about')
def show_about():
    return template('about')


@route('/contact', method="GET")
def show_contact():
    return template('contact', message="Please enter your name")


@route('/thankyou', method="POST")
def show_thankyou():
    first = request.forms.get('first')
    last = request.forms.get('last')

    message = "Thank you " + first + " " + last + " for your interest."

    return template("thankyou", message=message)


@route('/css/<filename>')
def send_css(filename):
    return static_file(filename, root='static/css')


@error(404)
def error404(error):
    return template('error', error_msg='404 error. Nothing to see here')


if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)
