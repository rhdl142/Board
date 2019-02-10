drop table tblBoard;
drop sequence board_seq;

create table tblBoard(
    seq number primary key,
    name varchar2(50) not null,
    title varchar2(200) not null,
    content varchar2(2000) not null,
    regdate date default sysdate,
    passwd varchar2(100) not null
);

create sequence board_seq;

insert into tblBoard values (board_seq.nextval,'Lim','안녕하세요','만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lee','건의사항있어욥','만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lim','안녕하세요','만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lee','잘부탁드립니다.','만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lim','안녕하세요','만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lim','오늘 날씨 좋네요','만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lee','안녕하세요','만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.',default,'1234');
insert into tblBoard values (board_seq.nextval,'Lee','오늘 시간 어때요?','만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.만나서 반갑습니다.',default,'1234');

select * from tblBoard;

commit;