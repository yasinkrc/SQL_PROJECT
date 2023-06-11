# SQL_PROJECT
PROBLEM:
Bu ödevde bir dijital müzik kütüphane platformuna ait veri tabanı yönetim sistemi hazırlanması 
amaçlanmaktadır. 
Dijital müzik kütüphanesi sisteminde kullanıcılar aşağıdaki işlemleri yapabileceklerdir:
• Kullanıcının seçmiş olduğu şarkılarla yeni çalma listesi oluşturabilir. Var olan listeler üzerinde yeni 
şarki ekleme, güncelleme, silme işlemleri yapılabilir.
• Çalma listeleri başka kullanıcılarla paylaşılabilir. Çalma listeleri beğeni alabilir.
• Şarkıların beğenme /beğenmeme sayıları tutulabilir. Kullanıcılar, şarkılara yorum yapabilir ve diğer 
kullanıcıların yorumlarını görüntüleyebilir.
• Kullanıcılar şarkıları favori olarak işaretleyebilir, daha sonra favorilerine ekledikleri şarkıları 
görüntüleyebilir.
• Normal üye, Premium üye gibi üyelik seçeneklerine göre kullanıcının sınırlı/sınırsız şarkı dinleme, 
çalma listesi oluşturma gibi özellikleri belirlenebilir. 
Aşağıda verilen bilgiler çerçevesinde dijital müzik kütüphane sistemi için gerekli tabloları ve sorguları 
join, iç içe sql kullanımı, parametre kullanımı, stored procedure ve trigger gibi SQL yapı ve özelliklerini
kullanarak oluşturmanız gerekmektedir. Her bir tablo SQL kodu ile oluşturulacaktır:
Tabloların Oluşturulması:
Dijital müzik kütüphanesi veri tabanı yönetim sisteminde oluşturulması beklenen tablolar aşağıda 
verilmektedir. İhtiyaç halinde yeni tablolar da oluşturulabilir.
➢ Şarkılar tablosu: Şarkıların bilgilerini tutan tablo. Şarkı adı, süresi, yayın tarihi gibi bilgiler 
içermektedir.
➢ Albümler tablosu: Albümlerin bilgilerini tutan tablo. Albüm adı, yayın tarihi, kapak resmi gibi bilgiler 
içermektedir.
➢ Sanatçılar tablosu: Sanatçıların bilgilerini tutan tablo. Sanatçı adı, doğum tarihi, ülke gibi bilgiler 
içermektedir.
➢ Türler tablosu: Şarkı türlerinin bilgilerini tutan tablo. Tür adı gibi bilgiler içermektedir.
➢ Çalma Listeleri tablosu: Kullanıcıların oluşturduğu çalma listelerini tutan tablo. Çalma listesi adı, 
oluşturan kullanıcı gibi bilgiler içermektedir.
➢ Kullanıcılar tablosu: Kullanıcıların bilgilerini tutan tablo. Kullanıcı adı, şifre, e-posta gibi bilgiler 
içermektedir.
➢ Üyelik tablosu: Kullanıcıların üyelik bilgilerini içermektedir.
Yukarıda verilen bilgilere göre dijital müzik kütüphanesi sistemi için veri tabanı ve gerekli tablolar SQL 
sorguları kullanılarak oluşturulacaktır. Her bir tabloya en az 10 kayıt girilecektir. Daha sonra oluşturulan 
tablolar üzerinde aşağıda verilen işlemler yapılacaktır:
SQL Sorguları:
1. Belirli bir albümdeki tüm şarkıları alfabetik olarak listeleyiniz.
2. Belirli bir sanatçının tüm şarkılarını albümlerine göre gruplandırarak listeleyiniz.
3. Kullanıcının yeni çalma listesi oluşturarak çalma listesine şarkı eklemesini sağlayan sql kodunu yazınız.
4. Verilen kullanıcı koduna göre o kullanıcıya ait çalma listelerini sıralayarak listeleyen sql kodunu yazınız.
5. En çok beğeni alan sanatçı ve o sanatçının en fazla yorum yapılan şarkısını gösteren sql kodu yazınız.
6. Beğeni sayısı 10’un üzerinde en az 5 şarkısı olan sanatçıyı popüler sanatçı olarak gösteren sql kodunu 
yazınız.
3
7. En çok yorum ve beğenisi olan ilk 5 şarkının bilgilerini ve beğeni ve yorum sayılarını listeleyen kodu 
yazınız.
8. En çok paylaşım yapılan çalma listesinde aynı sanatçıya ait şarkıları gruplandırarak listeleyen sql kodunu 
yazınız.
9. Yeni şarkı ekleme işlemini gerçekleştiren bir stored procedure oluşturunuz. Bu stored procedure, 
kullanıcıdan şarkı bilgilerini alarak Şarkılar tablosuna yeni bir kayıt ekleyecektir.
10. Kullanıcının çalma listesine şarkı eklemesini sağlayan bir stored procedure oluşturunuz. Çalma listesine 
şarkı eklenirken üyelik bilgilerinin kontrolünü sağlayınız.
11. Yeni bir şarkı albümü veya sanatçısı eklenirken, ilgili tablolarda otomatik güncellemeler yapacak bir 
trigger oluşturunuz.
12. Bir kullanıcının çalma listesinden şarkı silindiğinde, ilgili tablolarda otomatik güncellemeler yapacak bir 
trigger oluşturunuz.
13. Kullanıcıların şarkıları beğenmesini ve favorilere eklemesini sağlayan sql kodunu yazınız. Kullanıcılar, 
beğendikleri şarkıları favorilere ekleyebilir ve sonradan bu favori şarkılara erişebilirler.
14. Şarkılara en çok yorum yazan ve beğeni yapan kullanıcıya 1 ay süre ile Premium üyelik hakkı tanımlayan 
sql kodunu yazınız.
15. Kullanıcı bilgilerinin silinmesi işlemi denendiğinde bu işlemin ne zaman denendiğini gösteren trigger 
kodunu yazınız

#Daha fazla bilgi için mesaj atabilirsiniz yasinkaracaofficial@gmail.com
