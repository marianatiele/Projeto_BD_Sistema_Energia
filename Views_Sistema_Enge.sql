
-- localização e data das medições
create or replace view localizacao_cliente as
select cf.cod_fatura, c.nome, cf.data_medicao, cf.localizacao, c.cidade, c.bairro,c.rua, c.num_casa
from consumir cm join consumo_faturas cf on cf.cod_consumo = cm.cod_consumo
join cliente c on c.cod_cliente = cm.cod_cliente;

select * from localizacao_cliente;

-- Materizalizad View


create materialized view  if not exists fatura_status
   as   
   select c.nome,c.email, c.cod_cliente, cf.kw, cf.data_venciemnto, p.valor_pago, p.status_pagamento
   from cliente c join consumir s 
   on s.cod_cliente  = c.cod_cliente 
   join consumo_faturas cf on cf.cod_consumo = s.cod_consumo
   join pagamento p on p.cod_fatura  = s.cod_fatura; 



select * from fatura_status;








   


