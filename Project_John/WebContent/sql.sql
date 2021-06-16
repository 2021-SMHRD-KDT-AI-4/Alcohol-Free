create table W_USER(
	User_ID varchar2(),
	User_PW varchar2(),
	Name varchar2(),
	Gender varchar2(),
	Age varchar2(),
	Alcohol_Capacity varchar2(),
	Alcohol_Type varchar2()
);

create table MYPAGE(
	User_ID varchar2(),
	Cocktail_ID varchar2(),
	Recommend varchar2()
);

create table COCKTAIL(
	Recipe varchar2(),
	Cocktail_IMG varchar2(),
	Alc_Vol number(),
	Cocktail_His varchar2(),
	Cocktail_ID varchar2(),
	Emotional_Len varchar2()
);

create table COMUNNITY(
	Recipe varchar2(),
	Cocktail_IMG varchar2(),
	Alc_Vol number(),
	Cocktail_His varchar2(),
	Cocktail_ID varchar2(),
	Emotional_Len varchar2()
);


