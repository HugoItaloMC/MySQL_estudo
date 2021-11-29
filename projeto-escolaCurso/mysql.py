# importando lib's

import MySQLdb


# Fazendo conexão com o banco de dados
# Iniciando CRUD :


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

# Retorno do select


print(select("nome, cpf", "alunos", "id_alunos = 1"))


# Inserindo dados nas tabelas do banco de dados


def insert(values, table, fields=None):
    global c, con

    query = "INSERT INTO " + table
    if fields:
        query = query + " (" + fields + ") "
    query = query + " VALUES " + ",".join(["(" + v + ")" for v in values])

    c.execute(query)
    con.commit()


values = [
    "DEFAULT, 'Erico Rocha', '1993-08-11', 'Av Regiao dos Lagos, 887', 'Cristal', 'ES', '12345678934'",
    "DEFAULT, 'Maria Joana', '1965-11-04', 'Rua Sao Cristovao Verde, 655', 'Guarulhos', 'SP', '5123456699'"
]
# Entrada de novos dados

insert(values, "alunos")

# Saída da tabela apóes as entradas de novos dados

print(select("*", "alunos"))


def update(sets, table, where=None):
    global c, con
    query = "UPDATE " + table
    query = query + " SET " + ",".join([fields + " = '" + value + "'" for fields, value in sets.items()])
    if where:
        query = query + " WHERE " + where
    c.execute(query)
    con.commit()


update({"nome":"Jose Faria", "cidade":"Goias"}, "alunos", "id_alunos = 8")
print(select("*", "alunos", "id_alunos = 8"))
print(select("*", "alunos"))
