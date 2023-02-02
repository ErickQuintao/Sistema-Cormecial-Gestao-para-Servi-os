-- a linha abaixo criar bd
create database dbinfox;
-- a linha abaixo escolhe o bd 
use dbinfox;
-- o bloco de instruçoes cria uma tabela
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15)not null unique,
senha varchar(15)not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;
-- o comando abaixo insere na tabela
insert into tbusuarios(iduser,usuario,fone,login,senha)
values (1,'Erick Quintão','99497945','erickquintao','123456');
-- mostra os dados da tabela
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values (2,'Adiministrador','99497945','admin','admin');

insert into tbusuarios(iduser,usuario,fone,login,senha)
values (3,'Reginaldo','99497945','regis','06122006');

-- atualizar a tabela
update tbusuarios set fone ='88888888' where  iduser = 2;



create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50) 
);

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Linus Torvalds','Rua  Tux, 2015','9999-9999','linus@linux.com');

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
serviço varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos (equipamento,defeito,serviço,tecnico,valor, idcli)
values('Notebook','Nao liga','Troca a fonte','ze',100.43,1);
select * from tbos;

-- o codigo abaixo traz informações de duas tabelas
select
O.os,equipamento,defeito,serviço,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);

use dbinfox;
select * from tbusuarios;
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(4,'Leando Ramos','9999-9999','leandro','123');