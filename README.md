🧠 SA_DDL_Conteudo_Online
📋 Descrição do Projeto

Este repositório contém o script SQL responsável pela definição da estrutura de um sistema de gerenciamento de conteúdo educacional online, utilizando comandos DDL (Data Definition Language) no MySQL.

O objetivo é criar a base de dados inicial de uma plataforma de ensino, com tabelas que representam Usuários, Professores, Cursos e Aulas — conforme o dicionário de dados fornecido.

🗂️ Estrutura do Script

O arquivo estrutura_sistema_online.sql contém os seguintes comandos:

🔹 Criação de Tabelas

Usuários → Armazena informações dos usuários cadastrados.

Professores → Contém dados dos professores e suas especialidades.

Cursos → Registra os cursos disponíveis na plataforma.

Aulas → Guarda as informações sobre as aulas dos cursos.

🔹 Alterações

Adição da coluna email_corporativo na tabela Professores.

Modificação do tipo de dado da coluna carga_horaria na tabela Cursos (de INT para DECIMAL(5,2)).

🔹 Remoção e Recriação

Exclusão (DROP TABLE) e recriação da tabela Aulas, para demonstrar o uso de comandos de manutenção de estrutura.

⚙️ Tecnologias Utilizadas

Banco de Dados: MySQL

Linguagem SQL: DDL (Data Definition Language)

🚀 Como Executar

Baixe o arquivo estrutura_sistema_online.sql.

Abra o MySQL Workbench ou terminal do MySQL.

Execute o comando:

source caminho/para/estrutura_sistema_online.sql;


As tabelas serão criadas automaticamente no seu banco de dados.

👤 Autor

Daniele  Araujo
💻 Sistema para Internet | Desenvolvedora 
📍 Amapá, Brasil
