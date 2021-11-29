import MySQLdb

host = "localhost"
user = "aplicacao"
password = "Acesso93#"
db = "escola_curso"
port = 3306

con = MySQLdb.connect(host, user, password, db, port)

c = con.cursor()

def select(fields, tables, where=None):
    global c
    query = "SELECT " + fields + " FROM " + tables
    if where:
        query = query + " WHERE " + where
    c.execute(query)
    return c.fetchall()

print(select("nome, cpf", "alunos", "id_alunos = 1"))