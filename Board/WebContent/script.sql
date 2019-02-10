create table tblBoard(
    seq number primary key,
    name varchar2(50) not null,
    title varchar2(200) not null,
    content varchar2(2000) not null,
    regdate date default sysdate
);

create table tblCommend(
    seq number primary key,
    commend varchar2(200) not null,
    regdate date default sysdate,
    pseq references tblBoard(seq)
);

create sequence board_seq;
create sequence commend_seq;

insert into tblBoard values (board_seq.nextval,'Lim','안녕하세요','만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lee','건의사항있어욥','만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lim','안녕하세요','만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lee','잘부탁드립니다.','만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lim','안녕하세요','만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lim','오늘 날씨 좋네요','만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lee','안녕하세요','만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.',default);
insert into tblBoard values (board_seq.nextval,'Lee','오늘 시간 어때요?','만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.',default);