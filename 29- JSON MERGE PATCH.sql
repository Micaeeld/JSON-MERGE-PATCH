-- JSON MERGE PATH --
-- A propriedade que existir no primeiro e não existir no segundo vai aparecer no documento final 
-- Propriedades em comum = propriedade do segundo

select JSON_MERGE_PATCH('{"nome": "James", "sobrenome":"Bond"}',
 '{"salario": "10000", "cidade":"Rio de Janeiro"}');

select JSON_MERGE_PATCH('{"nome": "James", "sobrenome":"Bond"}',
 '{"nome": "Maxwell", "cidade":"Rio de Janeiro"}');
 
 select JSON_MERGE_PATCH('{"nome": "James", "sobrenome":"Bond"}',
 '{"salario": "10000", "cidade":"Rio de Janeiro"}');
 
select JSON_MERGE_PATCH('[1,2]', '[true, false]'); #não tem nenhuma propriedade identificando eles, então, mostra o segundo

select JSON_MERGE_PATCH('{"arra1": [1,2]}', '{"array2":"[true, false]"}');