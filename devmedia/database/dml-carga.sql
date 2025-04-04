INSERT INTO categoria (nome) VALUES
("Desenvolvimento Web"),
("Banco de Dados"),
("Inteligência Artificial"),
("Programação Mobile"),
("Segurança da Informação"),
("DevOps"),
("Cloud Computing"),
("Internet das Coisas (IoT)"),
("Desenvolvimento de Jogos"),
("Big Data & Analytics"),
("Machine Learning"),
("Blockchain"),
("Arquitetura de Software"),
("Engenharia de Software"),
("UI/UX Design"),
("Frameworks Frontend"),
("Frameworks Backend"),
("APIs e Integrações"),
("Microservices"),
("Programação Funcional"),
("Programação Orientada a Objetos"),
("Automação de Testes"),
("Performance e Escalabilidade"),
("Edge Computing"),
("Realidade Aumentada e Virtual"),
("Chatbots e Assistentes Virtuais"),
("Low-Code e No-Code"),
("Desenvolvimento de APIs REST e GraphQL"),
("Segurança em Aplicações Web"),
("Gestão de Projetos de Software");

INSERT INTO artigo (titulo, conteudo, categoria_id) VALUES
("Introdução ao HTML5", "O HTML5 trouxe diversas melhorias para a estruturação de páginas web...", (SELECT id FROM categoria WHERE nome = "Desenvolvimento Web")),
("CSS Flexbox e Grid", "Aprenda a criar layouts modernos com Flexbox e Grid...", (SELECT id FROM categoria WHERE nome = "Desenvolvimento Web")),
("JavaScript: Fundamentos Essenciais", "Entenda os conceitos básicos da linguagem que domina a web...", (SELECT id FROM categoria WHERE nome = "Desenvolvimento Web")),
("Banco de Dados Relacional vs NoSQL", "Comparação entre bancos SQL e NoSQL e quando usar cada um...", (SELECT id FROM categoria WHERE nome = "Banco de Dados")),
("REST vs GraphQL: Qual escolher?", "Entenda as diferenças entre essas tecnologias de APIs...", (SELECT id FROM categoria WHERE nome = "APIs e Integrações")),
("Introdução ao Node.js", "O que é Node.js e por que ele é tão popular no desenvolvimento backend...", (SELECT id FROM categoria WHERE nome = "APIs e Integrações")),
("Autenticação com JWT no PHP", "Como implementar autenticação segura com JSON Web Tokens...", (SELECT id FROM categoria WHERE nome = "Segurança em Aplicações Web")),
("Laravel: Primeiros Passos", "Configurando e criando um projeto no Laravel do zero...", (SELECT id FROM categoria WHERE nome = "Frameworks Backend")),
("Vue.js: Criando um SPA", "Guia passo a passo para desenvolver uma Single Page Application...", (SELECT id FROM categoria WHERE nome = "Frameworks Frontend")),
("React vs Angular: Qual escolher?", "Comparação entre os dois frameworks mais populares do frontend...", (SELECT id FROM categoria WHERE nome = "Frameworks Frontend")),
("Segurança em Aplicações Web", "Dicas para proteger sua aplicação contra ataques comuns...", (SELECT id FROM categoria WHERE nome = "Segurança em Aplicações Web")),
("Docker para Desenvolvedores", "Aprenda a criar e gerenciar containers com Docker...", (SELECT id FROM categoria WHERE nome = "DevOps")),
("Microservices com Spring Boot", "Como estruturar um sistema baseado em microsserviços...", (SELECT id FROM categoria WHERE nome = "Microservices")),
("Testes Automatizados com Jest", "Melhores práticas para testar código JavaScript com Jest...", (SELECT id FROM categoria WHERE nome = "Automação de Testes")),
("Machine Learning com Python", "Introdução ao aprendizado de máquina utilizando Python...", (SELECT id FROM categoria WHERE nome = "UI/UX Design")),
("Criando um Chatbot com IA", "Passo a passo para desenvolver um chatbot inteligente...", (SELECT id FROM categoria WHERE nome = "Chatbots e Assistentes Virtuais")),
("O que é Blockchain?", "Entenda a tecnologia por trás do Bitcoin e outras criptomoedas...", (SELECT id FROM categoria WHERE nome = "Blockchain")),
("Big Data: O que você precisa saber", "Principais conceitos e ferramentas para análise de Big Data...", (SELECT id FROM categoria WHERE nome = "Big Data & Analytics")),
("Desenvolvendo APIs com FastAPI", "Como criar APIs rápidas e eficientes com FastAPI...", (SELECT id FROM categoria WHERE nome = "APIs e Integrações")),
("NoSQL com MongoDB", "Introdução ao banco de dados NoSQL MongoDB...", (SELECT id FROM categoria WHERE nome = "Banco de Dados")),
("GraphQL na Prática", "Como utilizar GraphQL para criar APIs eficientes...", (SELECT id FROM categoria WHERE nome = "APIs e Integrações")),
("Kubernetes para Iniciantes", "Gerenciando containers em escala com Kubernetes...", (SELECT id FROM categoria WHERE nome = "DevOps")),
("Scrum e Metodologias Ágeis", "Entenda como funciona o Scrum e as práticas ágeis...", (SELECT id FROM categoria WHERE nome = "Gestão de Projetos de Software")),
("Desenvolvimento Mobile com Flutter", "Criando aplicativos multiplataforma com Flutter...", (SELECT id FROM categoria WHERE nome = "Programação Mobile")),
("IoT: Internet das Coisas", "Explorando o mundo da Internet das Coisas...", (SELECT id FROM categoria WHERE nome = "Internet das Coisas (IoT)")),
("Cybersecurity: Como se proteger online", "Boas práticas para aumentar a segurança na internet...", (SELECT id FROM categoria WHERE nome = "Segurança da Informação")),
("Criando um E-commerce do zero", "Passos essenciais para desenvolver uma loja virtual...", (SELECT id FROM categoria WHERE nome = "Desenvolvimento Web"));

INSERT INTO usuario (nome, email, telefone, data_nascimento, cpf) VALUES
('João Silva', 'joao.silva@email.com', '(11) 99999-0001', '1990-01-15', '123.456.789-01'),
('Maria Oliveira', 'maria.oliveira@email.com', '(11) 99999-0002', '1985-02-20', '234.567.890-22'),
('Carlos Souza', 'carlos.souza@email.com', '(11) 99999-0003', '1992-03-25', '345.678.901-33'),
('Ana Lima', 'ana.lima@email.com', '(11) 99999-0004', '1995-04-10', '456.789.012-44'),
('Pedro Santos', 'pedro.santos@email.com', '(11) 99999-0005', '1988-05-30', '567.890.123-55'),
('Juliana Costa', 'juliana.costa@email.com', '(11) 99999-0006', '1991-06-12', '678.901.234-66'),
('Lucas Almeida', 'lucas.almeida@email.com', '(11) 99999-0007', '1994-07-05', '789.012.345-77'),
('Fernanda Rocha', 'fernanda.rocha@email.com', '(11) 99999-0008', '1990-08-21', '890.123.456-88'),
('Ricardo Mendes', 'ricardo.mendes@email.com', '(11) 99999-0009', '1987-09-09', '901.234.567-99'),
('Camila Nogueira', 'camila.nogueira@email.com', '(11) 99999-0010', '1993-10-14', '012.345.678-00'),
('Eduardo Ramos', 'eduardo.ramos@email.com', '(11) 99999-0011', '1989-11-17', '321.654.987-10'),
('Bianca Ferreira', 'bianca.ferreira@email.com', '(11) 99999-0012', '1996-12-22', '432.765.098-21'),
('Gustavo Teixeira', 'gustavo.teixeira@email.com', '(11) 99999-0013', '1986-01-08', '543.876.109-32'),
('Larissa Carvalho', 'larissa.carvalho@email.com', '(11) 99999-0014', '1997-02-26', '654.987.210-43'),
('Marcos Antunes', 'marcos.antunes@email.com', '(11) 99999-0015', '1984-03-18', '765.098.321-54');


INSERT INTO produto (nome, descricao, categoria_id, preco) VALUES
            'id' => '1',
            'nome' => 'iPhone 15',
            'descricao' => 'Smartphone com tela OLED de 6,1 polegadas e chip A17.',
            'categoria' => 'Eletrônicos',
            'preco' => 5999.00

            'id' => '2',
            'nome' => 'Geladeira Samsung 520L',
            'descricao' => 'Geladeira de 520 litros com tecnologia de refrigeração no-frost.',
            'categoria' => 'Eletrodomésticos',
            'preco' => 3499.00

            'id' => '3',
            'nome' => 'Tênis Nike Air Max',
            'descricao' => 'Tênis de corrida com amortecimento Air Max e design moderno.',
            'categoria' => 'Roupas e Acessórios',
            'preco' => 499.90

            'id' => '4',
            'nome' => 'Base Líquida L’Oréal',
            'descricao' => 'Base líquida de alta cobertura com efeito matte e longa duração.',
            'categoria' => 'Beleza e Cuidados Pessoais',
            'preco' => 89.90

            'id' => '5',
            'nome' => 'Multivitamínico One a Day',
            'descricao' => 'Suplemento diário para melhorar a saúde geral e aumentar a imunidade.',
            'categoria' => 'Saúde e Bem-estar',
            'preco' => 69.90

            'id' => '6',
            'nome' => 'Cerveja Artesanal IPA',
            'descricao' => 'Cerveja artesanal com sabor intenso e amargor característico.',
            'categoria' => 'Alimentos e Bebidas',
            'preco' => 19.90

            'id' => '7',
            'nome' => 'Sofá Retrátil 3 Lugares',
            'descricao' => 'Sofá retrátil e reclinável, ideal para conforto e elegância na sua sala.',
            'categoria' => 'Casa e Decoração',
            'preco' => 1599.00

            'id' => '8',
            'nome' => 'Bicicleta MTB Aro 29',
            'descricao' => 'Bicicleta de mountain bike com suspensão dianteira e aro 29.',
            'categoria' => 'Esportes e Lazer',
            'preco' => 1899.00

            'id' => '9',
            'nome' => 'Kit de Faróis LED para Carro',
            'descricao' => 'Kit completo de faróis LED para melhoria da visibilidade do seu veículo.',
            'categoria' => 'Automotivo',
            'preco' => 299.00

            'id' => '10',
            'nome' => 'Jogo de Tabuleiro Catan',
            'descricao' => 'Jogo de estratégia onde os jogadores constroem e negociam recursos.',
            'categoria' => 'Brinquedos e Jogos',
            'preco' => 249.90

            'id' => '11',
            'nome' => 'Caderno Universitário 10 Matérias',
            'descricao' => 'Caderno espiral com 10 matérias e capa personalizada.',
            'categoria' => 'Papelaria e Escritório',
            'preco' => 19.90

            'id' => '12',
            'nome' => 'O Senhor dos Anéis - Edição Especial',
            'descricao' => 'Edição luxuosa com capa dura e ilustrações exclusivas do clássico de J.R.R. Tolkien.',
            'categoria' => 'Livros e Mídia',
            'preco' => 149.90

            'id' => '13',
            'nome' => 'Violão Yamaha F310',
            'descricao' => 'Violão acústico de excelente qualidade, ideal para iniciantes.',
            'categoria' => 'Música e Instrumentos Musicais',
            'preco' => 799.00

            'id' => '14',
            'nome' => 'Ração Pedigree Sabor Frango',
            'descricao' => 'Ração seca para cães, sabor frango e com nutrientes balanceados.',
            'categoria' => 'Pet Shop',
            'preco' => 59.90

            'id' => '15',
            'nome' => 'Furadeira Bosch 600W',
            'descricao' => 'Furadeira elétrica com 600W de potência e velocidade variável.',
            'categoria' => 'Ferramentas e Construção',
            'preco' => 299.90

            'id' => '16',
            'nome' => 'Relógio Casio G-Shock',
            'descricao' => 'Relógio digital e resistente a impactos, ideal para aventuras.',
            'categoria' => 'Relógios e Óculos',
            'preco' => 399.90

            'id' => '17',
            'nome' => 'Kit Solar 200W',
            'descricao' => 'Painel solar de 200W com inversor e bateria para armazenamento.',
            'categoria' => 'Energia Solar e Sustentabilidade',
            'preco' => 2599.00

            'id' => '18',
            'nome' => 'Câmera de Segurança Arlo Pro 4',
            'descricao' => 'Câmera de segurança sem fio com alta definição e visão noturna.',
            'categoria' => 'Segurança e Monitoramento',
            'preco' => 1299.00

            'id' => '19',
            'nome' => 'Mala de Viagem Samsonite',
            'descricao' => 'Mala resistente e leve, com compartimentos para organização.',
            'categoria' => 'Viagem e Turismo',
            'preco' => 899.00

            'id' => '20',
            'nome' => 'Curso de Marketing Digital',
            'descricao' => 'Curso online de marketing digital com módulos sobre SEO, Ads e redes sociais.',
            'categoria' => 'Serviços Digitais',
            'preco' => 499.00