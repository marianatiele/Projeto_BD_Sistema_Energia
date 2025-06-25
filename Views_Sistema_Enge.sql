-- Views - Cliente e tipo de medidor com data de instalação 

create or replace view sm_enge.vw_cliente_medidor as
select c.nome, c.telefone, c.cidade, c.bairro, md.data_instalacao, md.tipo
from sm_enge.Cliente c join sm_enge.Medidor md on c.id_cliente = md.id_cliente


select * from sm_enge.vw_cliente_medidor;

-- Views - Pagamento de Fatura por tipo de pagamento


create or replace view sm_enge.contas_pagas_status_pagamento
as 
select cl.nome, cl.cidade,  p.data_pagamento, p.forma_pagamento, m.kw,  p.valor_pago, cn.status
from sm_enge.Conta cn join sm_enge.Pagamento p on p.id_conta = cn.id_conta
join sm_enge.medidor m on m.id_medidor = cn.id_medidor
join sm_enge.Cliente cl on cl.id_cliente = m.id_cliente;

select * from sm_enge.contas_pagas_status_pagamento;

-- Materizalizad View
-- Contas que os atendente emitiram e seus respectivos valores

create materialized view  if not exists sm_enge.fun_emissao_conta
   as   
   select f.nome, f.cargo, c.data_emissao, c.valor_total
   from sm_enge.Funcionario f join sm_enge.Conta c
   on f.id_funcionario = c.id_funcionario;
 

select * from sm_enge.fun_emissao_conta;








   


