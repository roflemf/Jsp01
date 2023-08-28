--boardT 테이블 생성
create table boardT(
 bno number(38) primary key --게시판 번호
 ,bname varchar2(100) not null --글쓴이
 ,btitle varchar2(200) not null --글제목
 ,bcont varchar2(4000) not null --글내용
 ,bhit number(38) default 0--조회수; default 0 제약조건; 해당컬럼에 레코드 저장하지 않아도 기본값 0이 저장됌
 ,bdate date default sysdate --등록날짜
 );
 
 
 select * from boardT order by bno desc;
 update boardT set bname="글쓴이수정" where bno=2;
 
 --bno_seq25 시퀀스 생성
 create SEQUENCE bno_seq
 start with 1--1부터 시작
 increment by 1 --1씩 증가
 nocache; --임시메모리 쓰지 X
 nocycle; --시퀀스 최대값 도달시 최초값 1부터 다시 반복 안함