

create table tbl_guest25(
    gno		number(38)		primary key
    ,gname	varchar2(100) 	not null
    ,gtitle	varchar2(200)	not null
    ,gcont 	varchar2(4000) 	not null
    ,gdate	date  default   sysdate
    );


 select * from tbl_guest25 order by gno desc;
 
 insert into tbl_guest25 values (bno_seq.nextval, '테스트', '테스트제목', '테스트내용', sysdate);
 