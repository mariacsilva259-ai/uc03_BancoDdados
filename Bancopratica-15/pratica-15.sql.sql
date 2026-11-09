/* Prática 15 – Lanchonete – juntando as tabelas
   Salve este arquivo como pratica-15.sql antes de começar. */
USE lanchonete;

select pedido.numero, cliente.nome
from pedido
inner join cliente ON pedido.cliente_codigo = cliente.codigo;

-- pergunta 2:
select pedido.numero, unidade.nome
from pedido
inner join unidade ON pedido.unidade_codigo = unidade.codigo
where unidade.nome = 'Ponta Verde';

-- pergunta 3:
select pedido.data_hora, produto.nome, item_pedido.quantidade
from pedido
inner join item_pedido ON pedido.numero = item_pedido.pedido_numero
INNER JOIN produto ON item_pedido.produto_codigo = produto. codigo
WHERE pedido.numero = 4;

-- pergunta 4:
SELECT produto.nome, SUM(item_pedido.quantidade) AS unidades_vendidas
FROM produto
INNER JOIN item_pedido ON produto.codigo = item_pedido.produto_codigo
group by produto.codigo, produto.nome
order by unidades_vendidas DESC;

-- pergunta 5:
select produto.nome
from produto
left join item_pedido ON produto.codigo = item_pedido.produto_codigo
where item_pedido.produto_codigo is NULL;

-- pergunta 6:
select cliente.nome
from cliente
left join pedido ON cliente.codigo = pedido.cliente_codigo
where pedido.cliente_codigo is NULL;

-- pergunta 7:
select nome, preco_tabela
from produto
where preco_tabela > (
	select avg(preco_tabela)
    from produto
);

-- pergunta 8:
select avg(total_pedidos) as media_pedidos
from (
	select COUNT(*) as total_pedidos
    from pedido
) AS t;
