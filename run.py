from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/sobre.html")
def sobre():
    return render_template("sobre.html")

@app.route("/chat.html")
def chat():
    return render_template("chat.html")

@app.route("/sobreIA.html")
def sobreIA():
    return render_template("sobreIA.html")

@app.route("/bibliografias.html")
def bibliografias():
    return render_template("bibliografias.html")

@app.route("/IApersonalizada.html")
def IApersonalizada():
    return render_template("IApersonalizada.html")

@app.route("/IA.html")
def IA():
    return render_template("IA.html")

@app.route("/orientacoes.html")
def orientacoes():
    return render_template("orientacoes.html")

@app.route("/analise.html")
def analise():
    return render_template("analise.html")

@app.route("/signin.html")
def signin():
    return render_template("signin.html")


if __name__ == "__main__":
    app.debug = True
    app.run()
