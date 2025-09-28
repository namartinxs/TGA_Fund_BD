USE achados_e_perdidos_Uni_ddl;

INSERT INTO Usuario (id, nome, email, status) VALUES
(1, 'Maria Silva', 'maria.silva@uni.edu', 'ativo'),
(2, 'João Santos', 'joao.santos@uni.edu', 'ativo'),
(3, 'Carlos Oliveira', 'carlos.oliveira@uni.edu', 'inativo'),
(4, 'Ana Costa', 'ana.costa@uni.edu', 'ativo');

INSERT INTO Administrador (id, id_usuario, cargo) VALUES
(1, 1, 'Coordenador do Setor de Achados e Perdidos'),
(2, 4, 'Assistente Administrativo');

INSERT INTO Aluno (id_usuario, matricula, curso) VALUES
(2, 20231001, 'Engenharia de Software'),
(3, 20231002, 'Administração'),
(4, 20231003, 'Design Gráfico');

INSERT INTO Localizacao (id, nome, descricao) VALUES
(1, 'Biblioteca', 'Área de empréstimos e leitura'),
(2, 'Bloco A', 'Corredor próximo às salas de aula'),
(3, 'Portaria', 'Entrada principal da universidade'),
(4, 'Cantina', 'Espaço para alimentação e convivência');


INSERT INTO Item (id, id_local, nome, descricao, data_encontrado, status, foto) VALUES
(1, 1, 'Mochila preta', 'Com chaveiro vermelho', '2025-09-20 10:30:00', 'encontrado', 'https://images.tcdn.com.br/img/img_prod/886231/mochila_para_laptop_preta_seanite_5077_1_f904ef6b83f3d242bf89acafccaab9e3_20231002114959.jpg'),
(2, 3, 'Carteira', 'Marrom, com documentos dentro', '2025-09-21 14:15:00', 'entregue', 'https://images.tcdn.com.br/img/img_prod/464874/carteira_feminina_media_com_ziper_cafe_12022_2_9427f7d313ca0e50df1a1d1b603d814f_20220222094218.jpg'),
(3, 4, 'Celular', 'Marca Samsung, capa azul', '2025-09-22 12:00:00', 'devolvido', 'https://m.media-amazon.com/images/I/51ND+SBoY5L._UF1000,1000_QL80_.jpg');

INSERT INTO Reivindicacao (id, id_item, id_reivindicador, analisado_por, data_reivindicacao, justificativa, status, data_analise) VALUES
(1, 1, 2, 1, '2025-09-21 09:00:00', 'Perdi minha mochila na biblioteca', 'aprovada', '2025-09-21 10:00:00'),
(2, 2, 3, 2, '2025-09-22 15:00:00', 'Minha carteira desapareceu na portaria', 'pendente', NULL);


INSERT INTO Registro (id, id_item, id_encontrado_por, id_entregue_por, id_recebido_por, id_retirado_por, data_entrega, data_retirada) VALUES
(1, 1, 4, 4, 1, 2, '2025-09-20 11:00:00', '2025-09-21 10:30:00'),
(2, 2, 4, 4, 2, 3, '2025-09-21 14:30:00', NULL),
(3, 3, 2, 2, 1, 2, '2025-09-22 12:30:00', '2025-09-22 13:00:00');
