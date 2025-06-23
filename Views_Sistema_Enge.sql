
-- localização e data das medições
create or replace view sh_enge.localizacao_cliente as
select cf.cod_fatura, c.nome, cf.data_medicao, cf.localizacao, c.cidade, c.bairro,c.rua, c.num_casa
from sh_enge.consumir cm join sh_enge.consumo_faturas cf on cf.cod_consumo = cm.cod_consumo
join sh_enge.cliente c on c.cod_cliente = cm.cod_cliente;

select * from localizacao_cliente;

-- Materizalizad View


create materialized view  if not exists sh_enge.fatura_status
   as   
   select c.nome,c.email, c.cod_cliente, cf.kw, cf.data_venciemnto, p.valor_pago, p.status_pagamento
   from sh_enge.cliente c join sh_enge.consumir s 
   on s.cod_cliente  = c.cod_cliente 
   join sh_enge.consumo_faturas cf on cf.cod_consumo = s.cod_consumo
   join sh_enge.pagamento p on p.cod_fatura  = s.cod_fatura; 



select * from fatura_status;








   


