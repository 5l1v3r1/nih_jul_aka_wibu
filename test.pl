/* D = {Alice,Bob,Charlie,David,Emma,Fiona,Grace,Hans,Irene,Jim,Kelly,Lily}
Male(Bob),Male(Charlie),Male(David),Male(Hans),Male(Jim)
Female(Alice),Female(Emma),Female(Fiona),Female(Grace),Female(Irene),Female(Kelly),Female(Lily) */

/*male(X) menyatakan bahawa X adalah laki-laki.
Bob, Charlie, David, Hans, & Jim adalah laki-laki */
male(bob).
male(charlie).
male(david).
male(hans).
male(jim).

/*female(X) menyatakan bahawa X adalah perempuan.
Alice, Emma, Fiona, Grace, Irene, Kelly, & Lily adalah perempuan */
female(alice).
female(emma).
female(fiona).
female(geace).
female(irene).
female(kelly).
female(lily).

/*parent(x,y) menyatakan bahwa x adalah orangtua dari y*/
parent(alice,charlie).
parent(bob,charlie).
parent(bob,emma).
parent(charlie,fiona).
parent(charlie,grace).
parent(emma,irene).
parent(fiona,david).
parent(fiona,lily).
parent(grace,jim).
parent(grace,kelly).
parent(hans,jim).
parent(hans,kelly).
/* parent(Orangtua,Anak). */

/* Child (x; y)berarti "x adalah anak dari y"
berarti "y adalah orang tua dari x" berarti Parent (y; x): */
child(X,Y):-
    parent(Y,X).

/*untuk mengetahui semua anak dari fiona, kita dapat melakukan query 
parent(fiona,X).
kemudian untuk mengetahui semua orangtua dari jim, kita dapat melakukan query 
parent(X,jim). */

/*adult(X) menyatakan bahwa x adalah orang dewasa.
Alice, Bob, Charlie, Emma, Fiona, Grace, & Hans adalah orangdewasa.  */
adult(alice).
adult(bob).
adult(charlie).
adult(emma).
adult(fiona).
adult(grace).
adult(hans).

/* teen(X) menyatakan bahwa x adalah remaja.
Irene, David, dan Lily adalah remaja.*/
teen(irene).
teen(david).
teen(lily).

/* kid(X) menyatakan bahwa x adalah anak kecil.
Jim & Kelly adalah anak kecil.*/
kid(jim).
kid(kelly).

/*Konstruksi Aturan (Rules) Sederhana pada Prolog
Misalkan pada Prolog, keenam predikat tersebut ditranslasikan sebagai gentleman,lady,teen_boy,teen_girl,little_boy, dan little_girl.
Keenam predikat ini dapat didefinisikan sebagai aturan (rules) yang diturunkan dari predikat-predikat yang telah ada (yaitu male,female,adult,teen, dankid). Pendefinisian dilakukan sebagai berikut:*/
gentlemen(X):-
    male(X),adult(X).
lady(X):-
    female(X),adult(X).
teenBoy(X):-
    male(X),teen(X).
teenGirl(X):-
    female(X),teen(X).
littleBoy(X):-
    male(X),kid(X).
littleGirl(X):-
    female(X),kid(X).

/*Konstruksi Aturan (Rules) Sederhana pada Prolog
Makna (Semantik) Deklaratif pada Prolog
Misalkan terdapat klausa:(P):-(Q),(R). Klausa tersebut memiliki makna 
deklaratif:(P)benar bila (Q) dan (R) benar, atau
jika(Q)dan(R)dipenuhi, maka(P)juga dipenuhi.
Serupa dengan hal di atas, klausa(P):-(Q);(R). berarti jika(Q)atau(R)dipenuhi, maka(P)dipenuhi*/

/*semua remaja maupun anak kecil laki-laki menyukai permainan FIFA2020
semua remaja maupun anak kecil perempuan menyukai permainan CandyCrush
Kita dapat mendefinisikan formula logika predikat:
LovesFIFA20(x):=TeenBoy(x) V LittleBoy(x)
LovesCandycrush(x):=TeenGirl(x) V LittleGirl(x)*/
lovesFIFA20(X):-
    teenBoy(X);littleBoy(X).
lovesCandycrush(X):-
    teenGirl(X);littleGirl(X).
