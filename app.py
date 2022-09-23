from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL



app = Flask(__name__)
app.secret_key = 'many random bytes'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'plant_processing'

mysql = MySQL(app)



@app.route('/')
def index():
    return render_template('index.html')


@app.route('/selectionPage')
def selection():
    return render_template('predict.html')


@app.route('/result', methods = ['POST'])
def site():
    if request.method == "POST":
        name = request.form['name']
        cur = mysql.connection.cursor()
        cur.execute("SELECT * FROM plant_record WHERE plant='"+name+"' ORDER BY state")
        data = cur.fetchall()
        cur.close()

        return render_template('result.html', result=data, plant=name )


if __name__ == "__main__":
    app.run(debug=True)
