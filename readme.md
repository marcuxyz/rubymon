# install

Primeiro faça um clonse

```bash
git@github.com:marcuxyz/rubymon.git
```

Ou usando o gh

```bash
gh repo clone marcuxyz/rubymon
```

instale as depêndencias:

```ruby
bundle install
```

# Migrations

crie um banco de dados chamado data.db no diretório raiz e então crie a tabela digimons:

```sql
create table if exists digimons(
    name varchar(50) not null;
    level varchar(30) not null;
    img varchar(255) not null;
);
```

Após criar a tabela rode o script

```ruby
ruby script.rb
```

# Rodando

Para rodar a aplicação execute:

```ruby
ruby app.rb
```