DROP TABLE RR;

CREATE TABLE REVIEW(
   TITLE VARCHAR2(50) NOT NULL,
   INPUT_FILE VARCHAR2(50),
   CONTENT VARCHAR2(1000) NOT NULL
)

select * from review;

SELECT cocktail_IMG, c.Cocktail_ID, Emotional_Len, Alc_Vol, Flavor, Base, Recipe,Ingredient,Cocktail_HIS FROM COCKTAIL c, result r WHERE c.Cocktail_ID = r.Cocktail_ID and r.A_1 = '아 왜 안들어가냐' 

SELECT * FROM w_user;

DROP TABLE W_USER;

CREATE TABLE W_USER(
	User_ID varchar2(50),
	User_PW varchar2(50),
	Name varchar2(50),
	Gender varchar2(50),
	Age number,
	Alcohol_Type varchar2(50),
	Alcohol_Capacity number,	
	Favotite_Flavor varchar2(50)
)

select * from Wi;

insert into W_USER values('abc', '123456', 'hola', '여자', 20, '위스키', 2, '단맛')

DROP TABLE RESULT;

CREATE SEQUENCE R_NUM START WITH 1 INCREMENT BY 1;

CREATE TABLE RESULT(
   R_NUM NUMBER,
   USER_ID VARCHAR2(50),
   A_1 VARCHAR2(500),
   COCKTAIL_ID VARCHAR2(50)
);

SELECT * FROM RESULT;

INSERT INTO RESULT values(R_NUM.NEXTVAL,'abc','아 왜 안들어가냐', '마가리타');
INSERT INTO RESULT values(R_NUM.NEXTVAL,'abc','아 왜 안들어가냐', '핑크 레이디');
INSERT INTO RESULT values(R_NUM.NEXTVAL,'abc','아 왜 안들어가냐', '블루 라군');

CREATE SEQUENCE W_Num START WITH 1 INCREMENT BY 1;

CREATE TABLE WISHLIST(
   USER_ID VARCHAR2(50),
   COCKTAIL_ID VARCHAR2(50),
   W_Num NUMBER,
   A_1 VARCHAR2(500)
);

SELECT cocktail_IMG Cocktail_ID, Emotional_Len, Alc_Vol, Flavor, Base, Recipe,Ingredient,Cocktail_HIS FROM COCKTAIL WHERE Cocktail_ID = (SELECT Cocktail_ID FROM RESULT)

INSERT INTO WISHLIST values('abc','마가리타', W_Num.NEXTVAL, '아 왜 안들어가냐');

SELECT * FROM WISHLIST;

DROP table COMMUNITY;

CREATE SEQUENCE Post_Num START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE Comment_Num START WITH 1 INCREMENT BY 1;

DROP TABLE COMMUNITY;

CREATE TABLE COMMUNITY(
	User_ID varchar2(50) ,
	User_IMG varchar2(50),
	Post_Num varchar2(50),
	Post varchar2(50),
	LIKE_CNT number,
	Comment_Num number,
	Comments varchar2(50),
	Write_Date DATE,
	NUM number
)
ALTER TABLE COMMUNITY DROP COLUMN NUM;
ALTER TABLE COMMUNITY ADD(TITLE VARCHAR2(50)); 

출처: https://jwklife.tistory.com/5 [인 생]
출처: https://jwklife.tistory.com/5 [인 생]
INSERT INTO COMMUNITY VALUES('abc', './C_IMG/margarita.png', Post_Num.NEXTVAL, '마가리타 존맛', 1, Comment_Num.NEXTVAL, '',sysdate, 1);

SELECT * FROM COMMUNITY

DROP table COCKTAIL;

CREATE TABLE COCKTAIL(
	Cocktail_ID varchar2(50),
	Alc_Vol number,
	Ingredient varchar2(500),
	Recipe varchar2(500),
	Cocktail_HIS varchar2(500),
	Base varchar2(50),
	Flavor varchar2(50),
	Cocktail_IMG varchar2(50),
	Emotional_Len varchar2(500)
)

SELECT Alc_Vol, Flavor, Base, Recipe, Cocktail_HIS FROM COCKTAIL WHERE Cocktail_ID = (SELECT Cocktail_ID FROM RESULT)

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('마가리타',34,'테킬라 | 22.5ml 소주잔 반잔,크왕트로 | 22.5ml 소주잔 반잔,자두주스| 15ml 소주잔 1/4잔,자두 조각,가는 소금,오이 껍질','1. 자두 조각으로 유리잔의 테를 문지른다,2. 테에 가는 소금을 묻혀 프로스팅(frosting)을 입힌다,3. 테킬라와 크왕트로를 자두주스와 함께 얼음을 가득 채운 칵테일 용기에 넣고 약 20초간 흔든다,4. 차게 한 유리잔에 칵테일을 따른다,5. 칼로 길고 얇게 오이 껍질을 벗긴다,6. 칵테일 막대로 오이 껍질을 꿰어서 장식용으로 잔 속에 넣는다','Margarita는 창작자의 연인 이름이라고 한다','데킬라','신맛','./C_IMG/margarita.png','오늘의 당신은 충분히 사랑스러웠어요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('코스모폴리탄',20,'보드카 | 30ml 소주잔 1/2잔,트리플 섹 | 15ml 소주잔 1/4잔,크랜베리 주스 | 15ml 소주잔 1/4잔,라임 주스 | 15ml 소주잔 1/4잔','1. 재료들을 모두 세이크 한다,2. 더블 스트레인해 마티니 글라스에 따라준다,3. 라임 슬라이스로 장식','섹스인더시티의 주인공이 마신 칵테일로 유명하다','보드카','단맛','./C_IMG/cosmopolitan.png','ㅋ.. 대신 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ이렇게 활짝 웃어봐요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('코로네이션',20,'레몬 또는 라임주스 | 15ml 소주잔 1/4잔,드라이 베르무트(와인) | 15ml 소주잔 1/4잔,오렌지 비타 | 2ml,마라스키노 리큐어 | 1ml','1. 레몬주스, 드라이 베르무트/오렌지 비타/마라스키노 리큐어를 혼합 글래스에 넣고 젓는다,2. 칵테일 잔에 따른다.','코로네이션은 재관식을 말한다,세계에는 군주제 국가가 아직 많은데 이들 국왕의 재관식 때 재관식을 기념해서 코로네이션 칵테일이 많이 탄생했다,따라서 만드는 방법도 다양하며 베이스도 다양하다,여기에서는 가장 전통있다고 생각되는 방법을 선택했다','위스키','약간 독한맛','./C_IMG/coronation.png','아버지는 말하셨지 인생을 즐겨라');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('블루 하와이',20,'화이트 럼 | 30ml 소주잔 반잔,블루 큐라소 | 15ml 소주잔 1/4잔,파인애플 주스 | 30ml 소주잔 반잔,레몬 주스  | 15ml 소주잔 1/4잔,잘게부순 얼음','1. 흔든 후  아이스로 채운 고블렛 등 대형 글래스에 따른다','1957년 해리 예(Harry Yee)라는 바텐더가 와이키키에 있는 하와이 마을에서 일하던 무렵에 볼스 영업사원이 회사 제품인 블루 큐라소로 만든 음료를 부탁하자 직접 만들어낸 칵테일이라고 한다','럼','단맛','./C_IMG/blue_hawaii.png','소소한 행복이 좋은 거죠.오늘 밤은 뒹굴뒹굴 침대에 누워 유튜브 보는 거 어때요?');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('미도리 사워',10,'미도리 | 30ml 소주잔 반잔,스윗 앤 사워 믹스 | 30ml 소주잔 반잔,스프라이트 | 60ml 소주잔 한잔','1. 얼음과 재료들을 넣고 흔든다,2. 글라스에 따른 후 레몬 슬라이스 등으로 장식한다','시즈오카산 머스크 멜론이나 허니 멜론을 사용하여 선명한 그린이 인상적인 멜론 리큐어를 만들어냈고 이는 일본을 대표하는 명주의 하나가 되었다,미도리는 일본어로 초록색을 뜻하며아름다운 초록빛을 세계인이 맛보기 바란다는 의미에서 붙였다고 한다','리큐르','신맛','./C_IMG/midori_sour.png','기분이 좋다구요? 그렇다면 맥주 받고 치킨 각!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('피나콜라다',10,'껍질을 벗긴 바나나 | 1개,파인애플 조각 | 1개,파인애플 주스 | 70ml 소주잔 한잔,아이스크림이나 셔벗(sorbet) | 1수저,코코넛 우유 | 22.5ml 소주잔 반잔,석류시럽 | 30ml 소주잔 반잔,장식용의 파인애플 꼭지와 체리','1. 바나나를 자르고 파인애플 조각 2개를 준비해 둔다 나머지 파인애플과 바나나를 믹서에 넣는다,2. 딸기 아이스크림이을 코코넛 우유와 얼음 가루 한 수저와 함께 넣고 믹서를 돌린다,3. 차가운 칵테일 잔에 따른다,4. 이 피나 콜라다 칵테일 표면에 석류시럽을 부으면 칵테일에 얼룩 효과를 만들어 낸다,5. 파인애플 꼭지와 체리로 장식하고 빨대를 꽂는다','스페인어로 파인애플이 무성한 언덕이라는 의미를 지니고 있는 이 칵테일은 카리브해에서 만들어졌다,알코올 맛보다는 진한 코코넛 향과 파인애플 주스가 어우러져 여성들의 사랑을 한몸에 받고 있는 트로피컬 칵테일 중 하나다,시원함과 달콤함으로 상쾌한 기분을 내는 데 최고인 칵테일이다','럼','단맛','./C_IMG/pinacolada.png','오늘도 고생했어요. 하루 푹 쉬어요.');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('브랜디 크러스타',25,'브랜디 | 60ml 소주잔 한잔,마라스키노 | 1tsp,레몬 주스 | 1tsp,앙고스투라 비터스 | 1ml','1. 설탕으로 스노 스타일로 만든 와인 글래스에 나선형으로 깐 레몬껍질(1개분)을 넣는다,2. 재료를 흔든 후 준비한 잔에 따르고 얼음을 넣는다','1850년대 이탈리아인인 Joseph Santini가 미국 뉴올리언스에서 만든 칵테일이다, 현대 칵테일의 선조','브랜디','신맛','./C_IMG/brandy_crusta.png','소소한 날이었죠? 쏘쏘한 날이 아니라 소소한날');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('화이트 러시안',22,'보드카 | 40ml 소주잔 한잔,커피 리큐어 | 20ml 소주잔 반잔,생크림 | 소량','1. 올드 패션 글래스에 보드카와 커피 리큐어 얼음을 넣고 젓는다,2. 생크림을 띄운다','커피 리큐어로 만드는 블랙 러시안에 생크림을 띄운 것이다, 커피에 크림을 합친 것으로, 화이트라는 의미는 특별히 없고, 블랙에 비해서 희다는 의미에서 붙여진 이름이다,흰 러시안이라는 의미는 없다','보드카','단맛','./C_IMG/white_russian.png','100세 시대인데 하루 잘못 됐어도 앞으로 살 날 많잖아요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('에그 노그',14,'브랜디 | 30ml 소주잔 반잔,럼(다크) | 15ml  소주잔 1/4잔,계란 | 1개,설탕 | 1tsp,우유 | 잔량 부분,육두구 | 소량','1. 브랜디/럼(다크)/계란/설탕을 셰이커에 넣고 세게 흔든다,2. 텀블러에 넣어 얼음을 넣고 우유로 채운 후에 가볍게 젓는다 마지막으로 육두구를 친다','미국 남부가 발상지로 원래 크리스마스 음료로서 즐겼다, 계란과 우유가 들어가서 영양가도 높으며, 추운 겨울날에 마시면 기운이 날 것 같은 술, 연말 파티에도 최적이다','브랜디','약간 단맛','./C_IMG/eggnog.png','기분이 좋다구요? 그렇다면 맥주 받고 치킨 각!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('핑크 레이디',30,'드라이진 | 45ml 소주잔 1잔,난백 | 1개분,그레나딘 시럽 | 10ml 소주잔 1/5잔,생크림 | 15ml 소주잔 1/4잔','1. 드라이진 난백 그레나딘 시럽을 셰이커에 넣고 세게 흔든다,2. 샴페인 잔에 따른다','1911년 런던 연극 핑크레이디의 마지막 날 공연을 기념하는 파티에서 주연 여배우에게 바쳐졌기 때문에 이 이름이 붙었다고도 한다, 사랑스러운 이름에 이끌려서 주문하는 여성이 많은데, 맛은 반드시 여성용이라고는 할 수 없다, 또한 알코올 성분이 높기 때문에, 술에 약한 사람은 과음하지 않도록 주의하기 바란다','진','약간 단맛','./C_IMG/pink_lady.png','오늘 하루 끝내줬고 칵테일한잔으로 오늘을 잘 끝내요! 굿나잇!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('블루 라군',20,'보드카 | 20ml 소주잔 1/3잔,블루 큐라소 | 20ml 소주잔 1/3잔,레몬 주스 | 20ml 소주잔 1/3잔,레몬 슬라이스 | 1장,오렌지 슬라이스 | 1장,마라스키노 체리 | 1개','1. 보드카/블루 큐라소/레몬 주스를 셰이커에 넣고 흔든다,2. 샴페인 잔에 따른 후 체리와 과일 슬라이스로 장식하고, 빨대를 꽂는다','먼 남국의 다이버 기분을 맛본다,블루 큐라소로 낸 색은 남해의 푸른 바다를 연상케하고 깔끔한 맛은 바닷 바람의 상쾌함을 느끼게 한다,텀블러에 재료를 넣고 소다수로 채운 블루 라군도 있기 때문에 주문시에는 주의가 필요하다','보드카','신맛','./C_IMG/blue_lagoon.png','우울할 땐 울고 행복할 땐 웃어요.감정에 솔직한 게 최고예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('모히또',10,'럼(골드) | 45ml 소주잔 한잔,라임 주스 | 1/2개분,설탕 | 1tsp,민트잎 | 4장','1. 텀블러에 라임을 짜 넣고 껍질도 안에 넣는다,2. 민트잎과 설탕을 넣고 설탕을 녹이면서 민트잎을 으깬다,3. 크래슈드 아이스로 채우고 럼을 따라서 글래스 표면에 서리가 낄 때까지 충분히 젓는다,4. 민트잎으로 장식하고 빨대를 꽂는다',' 제당산업이 번창했던 카리브해의 서인도제도 및 바하마제도에서 만들어지기 시작했다, 뱃사람들이 즐겨 마셨다고 하여 해적의 술이라고 부르기도 하는데, 당시에는 설탕을 정제하고 남은 당밀로 만들어서 가장 값싸고 서민적인 술 중의 하나였다고 한다','럼','약간 단맛','./C_IMG/mojito.png','이미 행복하다면 됐어요.무슨 한마디가 필요하겠어요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('샹그리아',3.5,'와인 | 500ml 500cc 맥주잔 한잔,과일 | 사과 오렌지 레몬[4],설탕 | 2tsp,탄산수 | 100ml 500cc 맥주잔 1/5잔','1. 껍질을 까지 않은 사과와 오렌지와 레몬을 얇게 썰어낸다,2. 얇게 썰은 과일을 통 또는 병에 담은 후 설탕을 살짝 넣어준다,3. 와인을 넣어준다,4. 뚜껑을 닫은 후 냉장고에 넣고 하루 정도 숙성시켜준다,5. 하루 지난 후 꺼내어 잔에 과일과 와인을 반 정도 부어준다,6. 탄산수나 사이다를 부어 준다.','상그리아는 스페인의 전통적인 파티 칵테일 음료로 피를 의미하는 스페인어에서 유래됐다,스페인에서는 비교적 일상생활에서 즐기며, 저렴한 와인으로 만들어지는 경우가 많다','와인','단맛','./C_IMG/sangria.png','좀  쉬었다가 일어나면 돼!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('롱 아일랜드 아이스 티',35,'드라이진 | 15ml 소주잔 1/4잔,럼 | 15ml 소주잔 1/4잔,보드카 | 15ml 소주잔 1/4잔,테킬라 | 15ml 소주잔 1/4잔,코앙뜨로우 | 2t네,레몬 주스 | 30ml 소주잔 반잔,설탕 | 2tsp,콜라 | 잔량부분,레몬 슬라이스 | 1장','1. 드라이진/럼/보드카/테킬라/코앙뜨로우/레몬 주스/설탕을 크래슈드 아이스를 넣은 대형 콜린즈 글래스에 넣는다,2. 나머지를 콜라로 채워 직접 젓은 후 레몬 슬라이스로 장식하고 굵은 빨대 2개를 꽂는다','존비의 변형이라고 생각되는데, 존비는 럼과 주스를 충분히 사용한 것. 현재의 콜린즈 글래스를 정식 명칭으로는 존비 글래스라고 하며, 그 이름의 유래가 된 칵테일이다. 이전에 일세를 풍미한 남국풍 칵테일 붐의 방아쇠가 된 것이 이 칵테일이라는 기분이 든다.','진','약간 단맛','./C_IMG/long_island_iced_tea.png','우울할 때 도움이 되는 생각 월급, 떡볶이, 고양이');


INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('샌디 가프',2,'맥주 | 20ml 소주잔 반잔,진저 비어 | 20ml 소주잔 반잔','1. 소형 죠키에 맥주를 반정도 따른다,2. 진저 비어로 채운다','맥주는 그대로가 가장 좋다,맥주를 베이스로 사용하는 영국산 칵테일이다,맥주라고 하지만 에일이라는 알코올 성분이 높은 맥주를 사용하는 것이 정식. 현재 에일이 수입되고 있으므로 원하는 분은 사용하기 바란다, 그러나, 일반','맥주','상쾌한 맛','./C_IMG/shandy_gaff.png','우울하다고 슬퍼 말아요,행복한 날이 있으니까 우울한 기분도 느낄 수 있는 거예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('진토닉',14,'드라이진 | 45ml 소주잔 한잔,토닉 워터 | 잔량 부분,레몬 슬라이스 | 1장','1. 텀블러에 드라이진을 넣는다,2. 얼음을 넣고 토닉 워터로 채운 후 레몬 슬라이스로 장식한다','뉴욕이나 파리의 술집에서 연인을 기다릴 때 마시는 한잔,진토닉은 아페리티프에서 파티용까지 약간 쓰면서도 상큼한 맛을 즐기는 사람은 자신도 모르는 새에 잔을 거듭하게 되어 과음하는 경우도 있다','진','상쾌한 맛','./C_IMG/gin_tonic.png','기분이 우울할 땐 카악 퉤!!일 한잔 하세요');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('올드 패션',40,'라이 또는 버본 위스키 | 45ml 소주잔 한잔,앙고스투라 비터 | 2ml,각설탕 | 1개,두꺼운 오렌지 슬라이스 | 1장,두꺼운 레몬 슬라이스 | 1장,말라스퀴노 체리 | 1개','1. 올드 패션 글래스에 넣은 각설탕에 비터를 쳐서 잘 스며들게 한다,2. 위스키를 붓고 오렌지 슬라이스 레몬 슬라이스 체리로 장식한 후 유리막대를 꽂는다','경마꾼이 즐겨찾는 술집인 펜데니스 클럽의 바텐더가 단골을 위해서 만든 것이 이 칵테일이라고 한다,올드 패션은 고풍이라는 뜻인데, 이 이름과는 반대로 지금도 폭넓은 연령층으로부터 사랑을 받고 있다','위스키','약간 단맛','./C_IMG/old_fashioned.png','비난은 신경스지 말고 비판은 신경쓰세요,더 멋진 사람이 될거예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('럼 줄렙',15,'럼(화이트) | 30ml 소주잔 반잔,럼(다크) | 30ml 소주잔 반잔,설탕 | 2tsp,물 | 30ml 소주잔 반잔,민트잎 | 4장','1. 콜린즈 글래스에 설탕/물/민트잎을 넣고 설탕을 녹이면서 민트잎을 으깬다,2. 크래슈드 아이스를 글래스에 채우고 2종류의 럼을 따른 후 글래스 표면에 서리가 생길 때까지 충분히 젓는다,3. 민트잎으로 장식하고 빨대를 꽂는다','영화 바람과 함께 사라지다(Gone with the Wind)에도 아주 잠깐 언급되는 줄렙은 남부의 정취가 흠뻑 묻어나는 뜨거운 여름날의 남부 미인을 떠올리게 하는 음료라 할 수 있다','럼','상쾌한 맛','./C_IMG/rum_julep.jpg','오늘의 당신은 충분히 잘했고 잘하고 있고 잘할 거예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('블러디 메리',20,'보드카 | 45ml 소주잔 1잔,자른 레몬 | 1/6개,토마토 주스 | 잔량 부분','1. 텀블러에 보드카를 따르고 6등분한 레몬을 장식한다,2. 얼음을 넣고 토마토 주스로 나머지를 채운다 마지막으로 유리막대를 꽂는다','소량의 소금을 원하는 사람이 있는가 하면, 타바스코가 아니면 안된다는 사람도 있는사연이 있을 듯한 피투성이의 메리라는 칵테일명은 영국 여왕인 메리1세의 별명에서 왔다, 그녀의 재위 중에 프로테스탄트와 가톨릭 사이에 전쟁이 일어났다, 많은 사람들이 피를 흐린 비참한 역사가 칵테일명에 남아있는 것이다','보드카','약간 단맛','./C_IMG/bloody_mary.png','행복해서 웃는 게 아니라 웃으니깐 행복한 거예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('섹스 온 더 비치',9,'보드카 | 30ml 소주잔 반잔,복숭아 증류주 | 15ml 소주잔 1/4잔,크랜베리 주스 | 60ml 소주잔 한잔,오렌지 주스 | 60ml 소주잔 한잔','1. 얼음으로 채워진 하이볼 유리에 모든 재료를 넣는다,2.  오렌지 슬라이스로 장식한다','톰 크루즈가 주연한 1980년대 영화 칵테일(Cocktail)로 일약 유명해진 섹스 온 더 비치는 해변의 정사란 이름부터 놀랍고 얼굴이 빨개질 만한 칵테일이다,바텐더인 톰 크루즈가 바 탑(Bar Top)에 올라가서 여러 가지 칵테일 이름을 말하는 장면이 있는데 그중 하나가 이 칵테일이다,날씨 좋은 해변가에서 적당한 알코올과과일 주스로 만들어진 상큼한 트로피컬 칵테일 한잔!','보드카','단맛','./C_IMG/sex_on_the_beach.png','불안한 하루를 보낸 너에게 이 칵테일을 바칠게');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('데킬라 선라이즈',14,'테킬라 | 45ml 소주잔 한잔,오렌지 주스 | 잔량부분,그레나딘 시럽 | 2tsp','1. 샤와 글래스에 테킬라와 오렌지 주스를 넣고 젓는다,2. 바 스푼에 담은 그레나딘 시럽을 글래스의 안쪽으로 조용히 따른다','스톤즈와 이글즈가 사랑한 멕시코의 아침 노을,이글스가 동명의 곡을 작곡한 것으로도 알려져 있다,일본에서 남국풍 칵테일의 붐이 일어났을 때 어느 한 메이커가 남국풍 칵테일의 하나로서 발매,이것이 전국적으로 유행하게 된 계기가 되었다','데킬라','약간 단맛','./C_IMG/tequila_sunrise.png','오늘 화가 나는 일이 많았다면 운동화를 신고 밖에 나가보는건 어때요? 기분이 한결 나아질거예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('오르가슴',31,'보드카 | 30ml 소주잔 반잔,커피 리큐어 | 30ml 소주잔 반잔,베일리스 아이리시 크림 | 30ml 소주잔 반잔,바닐라 아이스크림 | 1스쿱','1. 얼음 + 깔루아 1oz + 베일리스 1oz + 아마레또 1oz 를 shake,2. 얼음을 제하고 칵테일 글라스에 따라낸다','마실 때 기분이 오르가즘을 느끼는 것처럼 강렬하다고 해서 붙은 이름','리큐르','단맛','./C_IMG/orgasm.png','인생이 롤러코스터 같다구요?회전목마는 재미없잖아요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('스팅거',35,'브랜디 | 20ml 소주잔 반잔,크레임 드 민트(화이트) | 10ml 소주잔 1/4잔','1. 모든 재료를 셰이커에 넣고 흔든 후 칵테일 잔에 따른다','Stinger는 동물의 바늘을 가르킨다,베이스를 진으로 바꾸면 화이트 윙스(White Wings) 또는 화이트 웨이(White Way)가 되며 별명으로는 진 스팅거(Gin Stinger)라고 한다,보드카로 바꾸면 보드카 스팅거(Vodka Stinger)라는 칵테일이 된다,페루노를 2dahses 첨가한 것을 스팅거 로열(Stinger Royal)이라고 한다','브랜디','상쾌한 맛','./C_IMG/stinger.png','완벽했던 하루를 회상하며 기분좋게 잠을 청해보는건 어때요?');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES('쿠바 리브레',14,'라이트 럼 | 45ml 소주잔 한잔,라임 | 1/6개분,콜라 | 잔량부분','1. 텀블러에 럼을 넣는다,2. 자른 라임을 글래스에 넣는다,3. 얼음을 넣고 콜라로 채운 후 마지막으로 유리막대를 꽂는다','과거의 미국과 쿠바의 관계를 상징하는 정겨운 자유의 유산,과거 쿠바가 스페인으로부터 독립할 당시(당시 혁명을 도운 것은 지금은 견원지간인 미국이다),시민들이 부르짖었던 구호가 칵테일 이름이 되었다,의미는 자유로운 쿠바 혹은 쿠바 리버라고 부르는 사람도 있는데 그 때문인지 「쿠바의 강이라는 뜻」으로 잘못 알고 있는 경우도 가끔 있다','럼','약간 단맛','./C_IMG/cuba_libre.png','오늘 많이 힘들었지?오늘 하루도 수고했어');


INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('김렛',30,'드라이진 | 30ml 소주잔 반잔,라임 주스(코디얼) | 10ml 소주잔 1/5잔','1. 모든 재료를 넣고 흔든 후 칵테일 잔에 따른다','김렛은 목공 도구의 하나로 코르크스크루와 비슷한 모양을 한 나사송곳을 말한다,이름에서 느껴지듯 그 맛이 날카롭게 자르는 이미지에서 명명되었다는 설도 있다','진','신맛','./C_IMG/gimlet.png','포기는 배추 셀 때나 하는 말이 아니라 인생에도 가끔 필요해요');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('칼루아 밀크',9,'칼루아 | 30~45ml 소주잔 한잔,우유 | 잔량부분','1. 텀블러에 칼루아를 넣는다,2. 얼음을 넣고 우유로 채운다','오늘 밤은 어깨에 힘을 주고 성인 카페오레를 마신다,칼루아 커피 리큐어는 젊은 사람들에게 인기있는 술이다,이렇게 상품명인 칼루아를 사용한 칵테일은 다른 커피 리큐어로 대용할 수 없다는 점이 불편하다,그러나 젊은 사람들 지지는 수그러들지 않는다','리큐르','단맛','./C_IMG/kahlua_milk.png','당신은 세상에 하나뿐인, 당신의 빈자리는 누구도 채울 수 없는, 그런 가치있는 유일한 사람이에요');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('셜리 템플',0,'그레나딘 시럽 | 1tsp,진저 에일 | 잔량부분,레몬 슬라이스 | 1장','1. 텀블러에 그레나딘 시럽과 얼음을 넣는다,2. 진저 에일로 채운 후 가볍게 젓는다,3. 레몬 슬라이스로 장식한다','과거 대여배우의 이름이 붙은 이 칵테일은 롱 스타일의 새로운 논 알코올의 음료이다,여배우의 이름과 음료와는 관계는 알 수 없다,진저 에일을 그대로 낸 음료이지만 그레나딘 시럽으로 붉게 착색되어 있기 때문에 진저 에일이라는 것을 알 수 없다','논 알코올','단맛','./C_IMG/shirley_temple.png','기분이 안 좋을 땐 잘생긴 걸 보세요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('민트 줄렙',25,'버본 위스키 | 45ml 소주잔 한잔,설탕 | 1½tsp,민트잎 | 4~6장','1. 콜린즈 글래스에 민트 잎을 3~4장 넣고 설탕과 설탕이 녹을 정도의 소량의 물을 넣은 후 스푼으로 민트잎을 으깨어서 향을 내고 단맛을 낸다,2. 잘게 부순 얼음을 넣고 글래스의 표면에 서리가 생길 때가지 젖는다 민트 잎으로 장식하고 빨대를 2개 꽂는다','여자의 마음을 사로잡는 민트의 상쾌함,미국 남부지방에 옛날부터 있었던 음료수가 유럽에 소개되어서 정착된 것이 줄렙이다','위스키','상쾌한 맛','./C_IMG/mint_julep.png','특별한 게 없는 날에도 당신의 존재는 언제나 특별해요');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('진 피즈',14,'드라이진 | 45ml 소주잔 한잔,설탕 | 2tsp,레몬 주스 | 1/2개분,소다수 | 잔량부분,레몬 슬라이스 | 1장','1. 드라이진 설탕 레몬 주스를 셰이커에 넣고 흔든다,2. 텀블러에 따르고 얼음을 넣은 후 소다수로 채우고 레몬 슬라이스로 장식한다,※ 난황을 넣으면 골든 피즈 난백을 넣으면 실버 피즈 전란을 넣으면 로열 피즈가 된다','피즈는 원래 술이 들어간 레몬 스카시를 말하는데 진을 베이스로 한 진 피즈가 그 중 대표적이다 마지막에 넣는 소다수의 탄산가스에서 나오는 소리를 ‘피즈’라고 표현해 그런 이름이 붙었다','진','약간 단맛','./C_IMG/gin_fizz.png','슬플땐 좋아하는 영화 한편을 봐보세요. 기분이 나아지실거예요');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('스크루드라이버',20,'보드카 | 45ml 소주잔 한잔,오렌지 주스 | 잔량부분,오렌지 슬라이스 | 1장','1. 소형 텀블러에 보드카를 따른다,2. 얼음을 넣고 오렌지 주스로 채운 후 오렌지 슬라이스로 장식한다','스크루드라이버는 나사를 돌리는 도구로 건축현장의 인부가 보드카와 오렌지 주스를 텀블러에 넣고 드라이버로 섞은 것에서 이 이름이 유래했다고 한다','보드카','단맛','./C_IMG/screwdriver.png','우리는 누구나 가치있는 사람이죠.나 자신만이 그것을 정할 수 있어요.');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('아이리시 커피',10,'아이리시 위스키 | 30ml 소주잔 한잔,설탕 시럽 | 15ml 소주잔 반잔,커피,휘핑크림,계핏가루','1. 소형 텀블러에 보드카를 따른다,2. 얼음을 넣고 오렌지 주스로 채운 후 오렌지 슬라이스로 장식한다','1942년 포이니스에 있는 여객선 터미널레스토랑에서 근무하던 셰리단이라는 바텐더가 추위와 피로에 지친 사람들을 달래주기 위해서 만든 것이 바로 아이리시 커피다','위스키','단맛','./C_IMG/irish_coffee.png','소소한 날이 행복한 날이에요.소확행을 바라는 사람이 얼마나 많은데!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('맨하탄',32,'라이 위스키 | 20ml 소주잔 1/3잔,스위트 베르무트 | 10ml 소주잔 1/5잔,비터 | 1ml,체리 | 1개','1. 위스키와 스위트 베르무트, 비터를 혼합 글래스에 넣어서 젓는다,2. 칵테일 잔에 부어서 체리로 장식한다','현재의 뉴욕주 맨해튼은 과거 원주민이 소유지역인데 매매계약에 반대하던 그들의 추장이 술에 취해서 토지매매계약을 해버렸기 때문에 맨해튼(술주정뱅이라는 의미)라는 이름이 붙었다고 한다','위스키','약간 단맛','./C_IMG/manhattan.png','오늘 하루도 수고했어요.옥상달빛의 수고했어 오늘도 라는 노래를 들으며 하루를 마무리 해보는건 어떨까요?');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('그래스호퍼',15,'크레임 드 멘트(그린) | 20ml 소주잔 1/3잔,화이트 카카오 | 20ml 소주잔 1/3잔,생크림 | 20ml 소주잔 1/3잔','1. 크레임 드 멘트(그린) 화이트 카카오 생크림을 셰이커에 넣고 세게 흔든다,2. 칵테일 잔에 따른다','여름의 초원 이미지와 카카오의 향이 잘 어울리는 묘미,그래스호퍼는 메뚜기를 말한다,물들인 것 같은 푸른 색은 메뚜기 보다는 메뚜기가 사는 초원을 연상시켰다고 생각하는 편이 안심하고 마실 수 있지 않을까','리큐르','상쾌한 맛','./C_IMG/daiquiri.png','아직 오지도 않은 날들때문에 오늘을 버리고 도망가지말아요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('다이키리',28,'화이트 럼 | 20ml 소주잔 반잔,라임 주스 | 10ml 소주잔 1/4잔,설탕 | 2tsp','1. 화이트 럼과 라임 주스 설탕을 셰이커에 넣고 흔든다,2. 칵테일 잔에 따른다','광산 기술자가 때로는 프로를 능가하는 명작을 만들 수도 있다 다이키리는 쿠바의 도시인 상챠고 근교에 있는 광산의 이름에서 따온 것,9세기말 다이키리 광산에서 일하였던 미국인 기술자가 현지의 럼과 라임 설탕을 섞어서 만든 것에서 시작되었다고 한다','럼','약간 단맛','./C_IMG/daiquiri.png','불안해하지도 말고 포기하지도 마!');


INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('허니문',27,'애플 브랜디 | 10ml,맥주 | 10ml,레몬 주스 | 10ml,오렌지 큐라소 | 3ml','1. 애플 브랜디 맥주 레몬 주스 오렌지 큐라소를 셰이커에 넣고 흔든다,2. 칵테일 잔에 따른다','신혼은 달콤함만이 아니다,프랑스풍의 멋스러움이 느껴지는 순수한 맛,프랑스풍 칵테일 중에서는 대표적이다,전세계에서 즐기고 있는 유명한 칵테일로 단맛과 신맛이 조화를 이룬 허니문이라는 이름에 걸맞는 칵테일로 만들어졌다,허니문에 바치는 칵테일이라면 애플 브랜디는 최고급 칼바도스를 쓰기를 권한다,단맛이 신경 쓰일 경우에는 레몬 주스를 약간 많이 넣으면 된다','브랜디','단맛','./C_IMG/honeymoon.png','완벽했던 하루를 회상하며 기분좋게 잠을 청해보는건 어때요?');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('까이삐리냐',40,'럼 | 30ml 소주잔 반잔,설탕 2tsp,라임 1/2개','1. 라임 조각과 설탕을 넣은 다음 머들러로 라임을 으깬다,2. 라임이 적당히 으깨지면 잔 얼음과 럼을 넣고 다시 한번 라임을 머들러로 으깨주면 완성','카이피리냐의 기원은 16세기로 추정된다,당시 브라질의 사탕수수 공장에서 노예와 동물들에게 사탕수수 찌꺼기를 주었는데 이것이 발효되어 카이피리냐의 베이스인 카샤사가 만들어졌고, 이 후 이를 과일과 버무려 먹으며 카이피리냐가 되었다는 것,이 후 카샤사와 카이피리냐는 서민들이 즐겨먹는 술로 자리잡았으며 19세기 초 상류층에게까지 확대되었다','럼','약간 독한맛','./C_IMG/Caipirinha.png','잊지마세요-! 당신은 흐린 어둠 사이 왼손으로 그린 작은 별 하나라는것을!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('블랙 러시안',37,'보드카 | 40ml 소주잔 1잔,커피 리큐어 | 20ml 소주잔 반잔','1. 올드 패션 글래스에 보드카와 커피 리큐어를 넣는다,2. 얼음을 넣고 가볍게 젓는다.','유사한 명칭의 러시안 칵테일이 있는데 전후의 제1차 칵테일 붐에는 초콜렛 풍미의 러시안 칵테일이 그 후 제2차 칵테일 붐에는 블랙 러시안이 시대의 흐름과 유행의 물결을 타고 등장했다','보드카','약간 독한맛','./C_IMG/black_russian.jpg','오늘 하루가 힘들다고 앞으로의 날들이 힘들거라고 생각하지 말아요-!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('민트 프라페',11,'크레임 드 멘트(그린) | 30ml 소주잔 반잔','1. 프라페드 아이스를 칵테일 잔에 가득 넣는다,2. 크레임 드 멘트를 위에서 따르고 자른 빨대 2개를 꽂는다','프라페라는 것은 칵테일 타입의 하나로,잘게부순 얼음을 칵테일 잔에 가득 채운 후 그 위에 술을 따르고 짧게 자른 빨대 2개를 꽂은 음료이다','리큐르','단맛','./C_IMG/mint_frappe.png','누가 뭐래도 우린 소중한 사람!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('스프리쳐',5,'화이트 와인 | 20ml 소주잔 반잔,소다수 | 10ml 소주잔 1/5잔','1. 와인 잔에 화이트 와인을 넣는다,2. 얼음을 넣고 소다수로 채운다','소다를 섞었다는 말이 없어질 것 같은 기분이 들게 하는비교적 새로운 스타일의 칵테일인데 소다를 섞은 칵테일에 대한 새로운 호칭이라는 편이 정확할 지 모르겠다,즉 하이볼의 일종이라고 할 수 있다,어원은 독일어로 튄다는 의미의 슈플리첸에서 전화된 말. 소다수로 섞은 후의 튀는 거품에서 그렇게 불러지게 되었다,즉석 샴페인이라는 분위기도 있다','와인','신맛','./C_IMG/spritzer.png','오늘 하루 놀랄 일 투성이였다구요? 내일은 평온한 하루가 될거예요.');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('갓 파더',39,'스카치 위스키 | 45ml 소주잔 1잔,아마레토 | 15ml 소주잔 1/5잔','1. 올드 패션 글래스에 스카치 위스키와 아마레토를 넣는다,2. 얼음을 넣고 젓는다','코폴라 감독의 유명한 영화 갓 파더와 동명의 칵테일,살구를 으깨어서 향을 낸 이탈리아 리큐어인 아마레토가 맛의 결정 요인이다,베이스로 보드카를 사용하면 갓 마더라는 칵테일이 된다','위스키','약간 독한맛','./C_IMG/god_father.png','오늘을 살아가세요. 눈이부시게');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('마이 타이',15,'화이트 럼 | 45ml 소주잔 1잔,코앙뜨로우 | 1tsp,파인애플 주스 | 1tsp,오렌지 주스 | 1tsp,파인애플 슬라이스 | 1조각,체리 | 1개','1. 화이트 럼 코앙뜨로우 파인애플 주스 오렌지 주스를 셰이커에 넣고 흔든다,2. 잘게 부순 얼음으로 채운 대형 글래스에 따른다,3. 파인애플 슬라이스 체리로 장식하고 빨대 2개를 꽂는다','마이 타이는 타히치어로 최고라는 의미이다,어느 한 바텐더가 17년짜리 럼을 사용해서 타히치인에게 이 칵테일을 선보이자 최고라는 찬사를 받게 되어서 그 이름이 붙었다고 한다','럼','단맛','./C_IMG/mai_tai.png','힘들땐 울어도 괜찮아요. 펑펑 울고나면 한결 후련할거예요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('체리 블로섬',31,'체리 브랜디 | 30ml 소주잔 반잔,브랜디 | 20ml, 소주잔 반잔,오렌지큐라소 | 2ml,크렌베리 주스 | 2ml','1. 체리 브랜디 브랜디 오렌지 큐라소 레몬 주스 그레나딘 시럽을 셰이커에 넣고 흔든다,2. 칵테일 잔에 따른다','벚꽃보다는 아메리칸 체리와 유사한 색이 마음에 든다,벚꽃이라는 이름의 일본산 칵테일인데, 전세계에서 즐기고 있다,가능하다면 좀더 벚꽃같은 아름다운 핑크로 하고 싶은데 체리 브랜디를 대량으로 사용한 이 칵테일은 적색이 강해서 남쪽지방에서 피는 체리같다','리큐르','단맛','./C_IMG/cherry_blossom.png','무소식이 희소식처럼 평범한 날이 행복한 날이에요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('스카이 다이빙',26,'라이트 럼 | 30ml 소주잔 반잔,블루 큐라소 | 20ml 소주잔 반잔,라임 주스 코디얼 | 10ml 소주잔 1/5잔','1. 라이트 럼 블루 큐라소 라임 주스 코디얼을 셰이커에 넣고 흔든다,2. 칵테일 잔에 따른다','일본 바텐더 협회의 칵테일 컴페티션에서 1967년에 그랑프리를 받은 작품으로 창작자는 오사카의 와타나베,구멍이 뻥 뚫혀 있는 듯한 푸른 하늘을 연상시키는 색과 신맛과 단맛의 균형으로 매우 안정적인 분위기를 연출한 작품','럼','약간 단맛','./C_IMG/sky_diving.png','알지? 최고의 선택은 바로 너의 선택이야!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('허리케인',34,'위스키 | 10ml 소주잔 1/4잔,드라이진 | 10ml 소주잔 1/4잔,화이트민트 | 10ml 소주잔 1/4잔,레몬주스 | 10ml 소주잔 1/4잔','1. 위스키 드라이진 화이트민트 레몬주스를 셰이커에 넣고 흔든다,2. 칵테일 잔에 붓는다','처음의 충격과 충격이 지나간 후에 남는 상쾌함,허리케인은 미국 남동부에서 발생하는 태풍을 말한다,동아시아를 습격하는 태풍 남아시아에서 발생하는 사이클론과 함께 세계 3대 태풍의 하나로 들 수 있다,태풍이 일어나기 쉬운 계절인 여름에 맞는 상쾌하며 깔끔한 맛의 칵테일이다','위스키','단맛','./C_IMG/hurricane.png','힘든일이 많으셨군요.. 오늘 하루 수고했어요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('아메리칸 뷰티',15,'브랜디 | 10ml 소주잔 1/5잔,드라이 베르무트 | 10ml 소주잔 1/5잔,오렌지 주스 | 10ml 소주잔 1/5잔,그레나딘 시럽 | 10ml 소주잔 1/5잔,크레임 드 멘트(화이트) | 1ml,포트와인 | 소량','1. 포트 와인 이외의 재료를 셰이커에 넣고 흔든다,2. 칵테일 잔에 따르고 그 위에 소량의 포트 와인을 살며시 따른다','감싸듯이 부드러운 적색의, 술잔 속에 피는 꽃,뷰티라는 이름 그대로, 아름다운 색조의 여성용 칵테일이다,아메리칸 뷰티는 미국산으로 사계절 꽃이 피는 장미의 일종이다,수도 워싱톤의 시화로, 새빨간 꽃이 피는 것으로 알려져 있다','브랜디','단맛','./C_IMG/american_beauty.png','인생은 새옹지마. 힘든날이 있으면 좋은날도 반드시 오게 되있어요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('큐 핌스',15,'스위트 베르무트 | 22.5ml 소주잔 반잔,오렌지 큐라소 | 22.5ml 소주잔 반잔,보드카 | 15ml 소주잔 1/3잔,진 | 15ml 소주잔 1/3잔,체리 브랜디 | 15ml 소주잔 1/3잔,기호에 맞춰서 고른 부드러운 여름 과일 | 약간,앙고스투라 맥주 | 1-2컵,차가운 미국식 드라이 진저 에일(American dry ginger ale) | 45ml,차가운 레모네이드 | 45ml 소주잔 한잔,장식용의 레몬 | 1개,장식용의 민트 잎이나 레몬 잎','1. 베르무트 큐라소 보드카 진 체리 브랜디를 얼음이 든 큰 잔에 붓고 젓는다,2. 부드러운 여름 과일과 얼음 덩어리를 넣은 긴 잔에 따른다,3. 앙고스투라 맥주를 붓고 같은 양의 차가운 진저 에일과 레모네이드를 넣는다,4. 레몬 껍질을 트라이앵글(삼각대)로 만들기 위해 레몬 껍질을 벗긴다,5. 양쪽 끝을 겹쳐 삼각형을 만들어 민트 잎이나 레몬 잎과 함께 장식한다','스위트 베르무트 큐라소 보드카 진 체리 브랜디를 혼합한 훌륭한 칵테일로써 여름 과일 위에 부어서 마신다','보드카','신맛','./C_IMG/kew_pimms.png','너 지금 멋지게 헤엄치려고 숨 참는 것부터 하고 있다고 생각해!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('빅 애플',14,'보드카 | 45ml 소주잔 한잔,사과주스 | 잔량부분,사과 | 약간','1. 텀블러에 보드카를 따른다,2. 얼음을 넣고 사과 주스로 채운 후 사과 조각으로 장식한다','이름과 맛의 깊이가 조화를 이룬 칵테일 빅 애플은 미국의 슬랭으로 뉴욕을 가리킨다,사과를 믹서에 갈아서 주스로 만들어 사용하는 것이 가장 좋은 방법이지만 색이 금방 변하는 것이 문제이다,따라서 현재는 시판되는 제품을 사용하고 있다,생 사과주스를 사용하는 경우에는 마시기 직전에 만드는 것이 좋은 맛과 색을 내는 요령','보드카','약간 단맛','./C_IMG/big_apple.png','내 점수는 내가 매기면서 산다 하고 살아요!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('바바라',27,'보드카 | 20ml 소주잔 반잔,크레임 드 카카오 | 10ml 소주잔 1/5잔,생크림 | 10ml 소주잔 1/5잔,육두구 | 소량','1. 보드카 크레임 드 카카오 생크림을 셰이커에 넣고 흔든다,2. 칵테일 잔에 따른 후, 육두구를 친다','러시아 요리의 마무리에 최적인 부드러운 초콜릿 풍미,영어권에서 사용되는 여자아이의 이름이 붙은 이 칵테일은 러시안 베어 칵테일이라고도 한다,보드카를 베이스로 한 알렉산더 칵테일로 초콜릿 풍미가 난다,애프터 디너에 적합하며 생크림이 들어갔기 때문에 감칠맛이 난다,적당히 들어간 알코올과 달콤한 맛으로 여성에게도 권하고 싶은 한 잔','보드카','단맛','./C_IMG/barbara.png','넌 지금까지 잘해왔고 앞으로도 잘할거야!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('밀리온달러',20,'드라이진 | 30ml 소주잔 반잔,스위트 베르무트 | 10ml 소주잔 1/5반,파인애플 주스 | 10ml소주잔 1/5반,그레나딘 시럽 | 2tsp,난백 | 1개분,파인애플 슬라이스 | 1/4조각','1. 드라이진 스위트 베르무트 파인애플 주스 그레나딘 시럽 난백을 셰이커에 넣고 세게 흔든다2. 샴페인 잔에 넣고 난백의 거품을 위에 얹은 후 파인애플 슬라이스로 장식한다','홍콩의 야경이나 미녀의 웃는 얼굴 등, 「100만불」은 아름다운 것이나 훌륭한 것의 대명사. 이 칵테일의 명칭인 밀리온 달러도 그런 의미로 사용되고 있다','진','약간 단맛','./C_IMG/million_dollar.png','당신을 화나게 만든 사람을 생각하면서 과일이나 야채를 신나게 씹어보는건 어때요? 스트레스가 풀릴거에요! 건강도 좋아지는건 덤!');

INSERT INTO COCKTAIL (COCKTAIL_ID, ALC_VOL, INGREDIENT, RECIPE, COCKTAIL_HIS, BASE, FLAVOR, COCKTAIL_IMG, EMOTIONAL_LEN) VALUES ('위스키 사와',28,'위스키 | 45ml 소주잔 한잔,레몬 주스 | 20ml 소주잔 반잔,설탕 | 1tsp, 소다수 | 소량,레몬 슬라이스 | 1장,마라스키노 체리 | 1개','1. 위스키와 레몬 주스 설탕을 셰이커에 넣고 세게 흔든다,2. 사와 글래스에 붓어 레몬 슬라이스와 체리로 장식하고 소다수를 첨가한 후 저어서 완성','사과를 믹서에 갈아서 주스로 만들어 사용하는 것이 가장 좋은 방법이지만 색이 금방 변하는 것이 문제이다,따라서 현재는 시판되는 제품을 사용하고 있다','위스키','신맛','./C_IMG/whisky_sour.png','당신의 하루가 별보다 빛나길');