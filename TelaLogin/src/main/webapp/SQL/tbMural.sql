create table tabMural
(    
    codigo  bigint NOT NULL 
                   PRIMARY KEY 
                   generated always as IDENTITY 
                   (start with 1, increment by 1),
    nome varchar(20),
    email varchar(200),
    mensagem varchar(250),
    data date
);