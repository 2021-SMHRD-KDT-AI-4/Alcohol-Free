DROP TABLE W_USER2;

CREATE TABLE W_USER2(
	User_ID varchar2(50),
	User_PW varchar2(50),
	Name varchar2(50),
	Gender varchar2(50),
	Age number,
	Alcohol_Type varchar2(50),
	Alcohol_Capacity number,	
	Favotite_Flavor varchar2(50)
)

select * from W_USER2;

insert into W_USER2 values('abc', '123456', 'hola', '여자', 20, '위스키', 2, '단맛')

CREATE TABLE MYPAGE2(
	User_ID varchar2(50),
	Recommend varchar2(50),
	Cocktail_ID varchar2(50),
	Alcohol_Capacity number,
	Cocktail_IMG varchar2(50)
)

insert into MYPAGE2 values('abc', '마가리타', '위스키', 2, './C_IMG/margarita.png')