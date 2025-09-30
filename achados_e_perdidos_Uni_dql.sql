USE achados_e_perdidos_Uni_ddl;

SELECT * FROM administrador; 


SELECT  
u.nome AS NomeUser, 
u.id,
a.id_usuario
FROM Administrador a 
JOIN Usuario u ON u.id = a.id_usuario
WHERE id_usuario = 4; 

SELECT 

i.nome AS item,
i.data_encontrado AS DATA_ENCONTRADO,
l.nome AS local

FROM Item i 
JOIN Localizacao l ON i.id_local = l.id



