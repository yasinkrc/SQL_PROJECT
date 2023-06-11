/*tabloları oluşturuyoruz*/
CREATE TABLE `Fizzy`.`Sanatcilar` (`No` INT AUTO_INCREMENT , `Isim` TEXT , `Ulke` TEXT , `Begeniler` INT  , PRIMARY KEY (`No`)) ;
/*Şarkıcılar*/
CREATE TABLE `Fizzy`.`Albumler` (`No` INT , `Isim` TEXT , `Albumkapagi` TEXT , `Sanatci` TEXT  ) ;
/*Albümler*/
CREATE TABLE `Fizzy`.`Turler` (`No` INT  AUTO_INCREMENT, `Turler` TEXT  , PRIMARY KEY (`No`)) ;
/*Şarkı türler*/
CREATE TABLE `Fizzy`.`Listeler` (`No` INT  AUTO_INCREMENT , `Isim` TEXT  , `Kullanici` TEXT  , `Paylasimlar` INT  , PRIMARY KEY (`No`)) ;
/*Çalma listeleri*/
CREATE TABLE `Fizzy`.`Sarkilar` (`No` INT  AUTO_INCREMENT , `Isim` TEXT , `Album` TEXT  , `Sanatci` TEXT  , `Sure` INT  , `Turler` TEXT  , `Begeniler` INT  , `Yorumlar` INT  , `Tarih` INT  , PRIMARY KEY (`No`)) ;
CREATE TABLE `Fizzy`.`ListelerdekiSarkilar` (`No` INT  , `List` TEXT  , `Sarki` TEXT  ) ;
/*Çalma listeleri ve şarkılar*/
CREATE TABLE `Fizzy`.`Kullanici` (`No` INT  AUTO_INCREMENT , `KullaniciIsim` TEXT  , `Sifre` TEXT  , `E-posta` TEXT  , `Yorumlar` INT  , `Begeniler` INT  , `Premium` INT  DEFAULT '0' , PRIMARY KEY (`No`)) ;
/*kullanıcılar*/
CREATE TABLE `Fizzy`.`KullaniciKayıtları` (`No` INT  AUTO_INCREMENT , `Tarih` DATE  ) ;
/*kullanıcı değişiklik kaydı */
CREATE TABLE `Fizzy`.`Favoriler` (`Kullanici` TEXT  , `Sarki` TEXT  ) ;
/*Kullanıcılar ve Şarkılar Favoriler ilişkisi.*/
INSERT INTO `Sanatcilar`(`No`, `Isim`, `Ulke`) VALUES ('1','Merve Özbey','Turkiye'), ('2','Ezhel ','Turkiye'), ('3','Yalın','Turkiye'), ('4','Mustafa Ceceli','Turkiye'), ('5','Aleyna Tilki','Germany'), ('6','Buray','Bulgaria'), ('7','Ufo361','Slovakia'), ('8','Yüksek sadakat','France'), ('9','Ezhel ','Germany'), ('10','Mor ve ötesi','Turkiye')
INSERT INTO `Albumler` (`No`, `Isim`, `Albumkapagi`, `Sanatci`) VALUES ('1','İyi ki varsın','image.png','Merve Özbey'), ('2','İstanbul','image.png','Buray'), ('3','Çıkmaz sokaklar','image.png','Ezhel '), ('4','Sen en güzelsin','image.png','Yalın'), ('5','Bana ellerini ver','image.png','Mustafa Ceceli'), ('6','Hepsi hit','image.png','Hande yener'), ('7','En güzel hikayem','image.png','Aleyna Tilki'), ('8','En güzel hikayem','image.png','Mustafa Ceceli'), ('9','Hepsi','image.png','Ufo361'), ('10','Renk körü','image.png','Yüksek sadakat');
INSERT INTO `Sarkilar`(`No`, `Isim`, `Album`, `Sanatci`, `Sure`, `Turler`, `Begeniler`, `Yorumlar`, `Tarih`) VALUES ('1','Korktun mu','İyi ki varsın','Merve Özbey','273','Rock','49','25','2001') , ('2','Yalnız Çiçek','İstanbul','Buray','521','Rock','98','11','2005') , ('3','Çıkmaz sokaklar','Çıkmaz sokaklar','Ezhel ','362','Pop','111','35','1999') , ('4','Aslında','Sen en güzelsin','Yalın','300','Pop','26','1','2019') , ('5','Ağla','Bana ellerini ver','Mustafa Ceceli','443','Rock','216','33','2017') , ('6','Bakıcaz','Hepsi hit','Hande yener','140','Pop','426','35','2013') , ('7','Korktun mu','En güzel hikayem','Aleyna Tilki','273','Pop','346','10','2007') , ('8','Seni kaybettiğimde','En güzel hikayem','Mustafa Ceceli','360','Pop','223','25','2018') , ('9','Yalan','Hepsi','Ufo361','193','Klasik','333','35','1680') , ('10','Küçük kral','Renk körü','Yüksek sadakat','273','Klasik','206','65','2001');
INSERT INTO `Listeler`(`No`, `Isim`, `Kullanici`, `Paylasimlar`) VALUES ('1','En iyi listem','Osman','42'), ('2','Türküler','Ömer','954'), ('3','Baba mix','Bekir','70'), ('4','mükemmel eserler','Ali','35'), ('5','Very gud','Mahmut','12'), ('6','Dostlar','Zeynel','78'), ('7','Metalci','Enes','55'), ('8','Dr.Dre','Alp','37'), ('9','Soba borusu','Tarık','5'), ('10','Huzur','Muahmmed','95')
INSERT INTO `Kullanici`(`No`, `KullaniciIsim`, `Sifre`, `E-posta`, `Yorumlar`, `Begeniler`) VALUES ('1','Osman','1234','Oslo@gmail.com','45','58'), ('2','Ömer','1234','Omoomo@gmail.com','69','45'), ('3','Bekir','1234','pesepes@gmail.com','95','35'), ('4','Ali','1234','Yamukprens@gmail.com','129','185'), ('5','Mahmut','1234','Mamo@gmail.com','12','48'), ('6','Zeynel','1234','Xeno@gmail.com','40','30'), ('7','Enes','1234','Sevdaci@gmail.com','1','1'), ('8','Alp','1234','Skyoa@gmail.com','99','195'), ('9','Tarık','1234','Gececi@gmail.com','227','15'), ('10','Muhammed','1234','taktak@gmail.com','60','95')
/*10 satır*/

1)
SELECT * FROM `Sarkilar` WHERE Album = 'Bana ellerini ver' ORDER BY Isim;
/*Bana ellerini ver yerine albüm adı*/

2)
SELECT * FROM `Sarkilar` WHERE Sanatci = 'Mustafa Ceceli' GROUP BY Album;
/*İstenen sanatçı Mustafa Ceceli*/

3)
INSERT INTO `Listeler`(`Isim`, `Kullanici`, `Paylasimlar`) VALUES ('Listeadı','Kullanıcı','0')
INSERT INTO `ListelerdekiSarkilar`(`No`, `List`, `Sarki`) VALUES ('1','Listeadı','Şarkı')

/*İlkinde bir playlist oluşturuyoruz, ikincisinde ilişkiyi tabloya ekliyoruz.*/

4)
SELECT * FROM `Listeler` WHERE Kullanici = "Bekir";
/*Bekir'in çalma listeleri */

5)
SELECT TOP 1 * FROM `Sarkilar` WHERE Sanatci = (SELECT TOP 1 Sanatci FROM `Sarkilar` GROUP BY Sanatci ORDER BY SUM(Begeniler) DESC) ORDER BY Yorumlar DESC;
/*Sanatçısı en çok beğeni olan sanatçının adına eşit olan bütün şarkılar. Sum fonksiyonu gruplandırmaya göre topluyor.*/

6)
SELECT Sanatci, Begeniler FROM `Sarkilar` GROUP BY Sanatci HAVING COUNT(*) >= 5 && Begeniler > 10;
/*Count fonksiyonu gruplandırmaya göre satırları sayar. Şarkılar tablosunda 5> satırı olan sanatçılardan beğenisi > 10 olanları listele.*/

7)
SELECT TOP 5 * FROM `Sarkilar` ORDER BY (Begeniler + Yorumlar) DESC;
/*Beğeni + yorumu en çok olan 5 şarkı.*/

8)
/*Bilmiyorum*/

9)
CREATE PROCEDURE sarkiekle @Isim TEXT, @Album TEXT, @Sanatci TEXT, @Sure INT, @Turler TEXT, @Begeniler INT, @Yorumlar INT, @Tarih INT
AS
BEGIN

INSERT INTO Sarkilar(Isim TEXT, Album TEXT, Sanatci TEXT, Sure INT, Turler TEXT, Begeniler INT, Yorumlar INT, Tarih INT) 

VALUES (@Isim , @Album,@Sanatci,@Sure,@Turler,@Begeniler,@Yorumlar,@Tarih)

END
GO;
/*Verilen girdilere göre tabloya veri giriyoruz.*/

10)
CREATE PROCEDURE Listeyeekle @ListeAdi TEXT, @Kullanici TEXT, @Sarki TEXT
AS
BEGIN
IF @Kullanici == (SELECT Kullanici FROM Listeler WHERE Isim = @ListeAdi);
{INSERT INTO `ListelerdekiSarkilar`(`No`, `List`, `Sarki`) VALUES ('1',@Ad,@Sarki)}
ELSE
END
GO;
/*Kullanıcı listeninkiyle aynıysa listeye ekle.*/

11)
CREATE TRIGGER albumekle
AFTER INSERT ON Albumler
BEGIN
	INSERT INTO Albumler(Isim,Albumkapagi,Sanatci)
    VALUES(NEW.Isim,NEW.Albumkapagi,NEW.Sanatci);
END;
/*Yeni albüm ekleniyor.*/

12)
CREATE TRIGGER listedencikar
BEFORE DELETE ON ListelerdekiSarkilar
FOR EACH ROW
BEGIN
	DELETE FROM ListelerdekiSarkilar WHERE(Sarki = OLD.Sarki);
END;
/*Silme işleminde gerekli satır siliniyor.*/

13)
UPDATE `Sarkilar` SET `Begeniler`= Begeniler + 1 WHERE Isim = "Ağla"; /* Ağla yerine kullanıcının şarkısı*/
/*Beğeni sütununu güncelle*/
INSERT INTO `Favoriler`(`Kullanici`, `Sarki`) VALUES ('Mahmut','Ağla')
/*Favorilerine ekle.*/
14)
UPDATE `Kullanici` SET `Premium`= (Premium + 1) WHERE KullaniciIsim = (SELECT TOP 1 KullaniciIsim FROM `Kullanici` ORDER BY (Begeniler + Yorumlar) DESC);
/*Beğeni ve yorumu en yüksek kullanıcıyı, bul, onun premium süresini 1 ay arttır.*/
15)
CREATE TRIGGER KullaniciBilgiSilindi
AFTER DELETE ON Kullanici
BEGIN
	INSERT INTO `KullaniciKayıtları`(`Tarih`) VALUES (GETDATE())
END;
/*Değişim olduğunda değişimler tablosuna tarihi gir.*/