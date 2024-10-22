# RACAL_BCC39B
I2C LCD Modification for a RACAL BCC39B Transceiver with broken LCD

Bu calisma hurdadan bulunmus bir RACAL BC39B'nin hayata dondurulmesi calismalari ile basladi. Cihazin display kismina vurularak display tahrip edilmisti.

Cihazin calisan LCD ekrani ile ilgili oalrak sadece docs klasorune koydugum service manual ile bilgi edinebiliyorduk. Acildiginda ekranda ne yazdigi hangi tusa bastiginda ne oldugu konusunda bir fikrimiz yoktu.

Yaklasik 3 gun boyunca araliksiz tus takimi ile oynayip, PCF2111 uzerinden eski likit ekranin pinlerine ne gonderildigini anlamaya calistim. Tahmini baglantilar uzerinden bir excel dosyasi olusturdum (docs dizinindeki RACAL.xls)

Uzun ugraslar sonucunda LCD uzerinde hangi karakterlerin nasil olusturulabilecegi konsunda fikir sahibi oldum (pek cok decoder kodu yazarak)

Sonucta once bir 4 satir LCD yi PIC 16F877 uzerinden baglayip, gelen seri datayi decode etmeye calistim. Daha sonra bunu once I2C LCD ye tasidim (takilacagi yere girebilecek en kucuk bulabildigimiz LCD oydu.. tnx to TA6GY Cem )

Daha sonra PCF2111 yerie sigdirabilecegim bir SMD PIC olan 16F628 e tasidim kodu.

Temel presnsip, PCF2111 e gonderilen seri datayi (2x32 bit) okuyup bunun anlamini cozup daha sonra bunu I2C uzerinden bir LCD ye aktarmaktir.

Calismalarim sirasindaki tum resimleri docs/RACAL dizininde paylastim. Tum kodlar ve hex dosyalari bu dizinde yer almaktadir. 

docs dizininde bir cizim dokumani ile nasil baglanti yapialcagini da en kisa zamanda ekleyecegim.


Yapilacaklar:
- HEX kodunu (16f628A icin olan I2C LCD icin) bir PIC'e yaz
- Display in icindeki PCF2111 i sok.. Buna ihtiyac yok artik
- PCF2111 i soktugun yere (ayaklari kisa devre olmayacak sekilde PIC16F628 i tak, ben sirt ustu yapistirdim)
- PIC in 5  numarasini (GND) PCF211 in ... bacagina bagla
- PIC in 14 numarasini (VCC) PCF211 in ... bacagina bagla
- PIC in 6  numarasini (RB0) PCF211 in ... bacagina bagla
- PIC in 7  numarasini (RB1) PCF211 in ... bacagina bagla
- PIC in 9  numarasini (RB3) PCF211 in ... bacagina bagla
- I2C LCD yi PIC E bagla (SCL -> PIC Port A.3 pin 2, SDA -> PIC A.4 pin 3)
- LCD nin VCC ve GND sini PIC e bagla (pin5 ve 14)
- ben ekran kartindaki led leri suren MOSFET i soktum, ledler bosuna akim cekmesin diye
- cihaz icinde en ust kartta akim sinirlayan bir direnc var duruma gore kisa devre edielbilir
- cihazin cektigi akim sadece 15mA artmaktadir, bu da eskiden LCD nin harcadigindan cok fazla degil


detaylar icin resimler klasorundeki resimlere bakabilirsin.
<BR>
<A HREF=https://github.com/barisdinc/RACAL_BCC39B/blob/master/docs/MODIFIKASYON.png>Modifikasyon</A><BR>
<A HREF=https://github.com/barisdinc/RACAL_BCC39B/blob/master/docs/MODIFIKASYON_akim_sinirlama.jpg>Akim Sinirlamayi Iptal etme</A><BR>
	


NOT: ana unite icinde 3.6V bir batarya var. o bitik. haliyle kapatip acinca hafizalar siliniyor.
bataryayi degistirince kanal hafizalari calisiyor..
genel ozellikleri :
- 0-30Mhz USB/LSB/CW
- 99 kanal hafiza
- Split mode operation
- batarya ile 25W
- sabit merkezde 150W
- Anten Tuner Opsiyonu
- 24V besleme

Gule gule kullanin.. Acilis ekraninda TA7W cagri isretini birakirsaniz cok sevinirim.


Eklenti (2018) : sayfadaki aciklamalari google ceviri ile cevirip uygulayan, ve uyguladiktan sonra guzel bir video hazirlayarak bizimle paylasan Peru'lu amator arkadasimiz ED'in (OA4BSA) videosunu su adreste izleyebilirsiniz ;
https://www.youtube.com/watch?v=66daxXNel5M&list=PLecaGE98mtkhiSHbvTL7y0PZfzCT7FX8e&index=7
https://www.youtube.com/watch?v=lHnuISl4arE&list=PLecaGE98mtkhiSHbvTL7y0PZfzCT7FX8e&index=6

Eklenti (Temmuz 2019) : Bu projeyle ilgili cektigim birkac deneme videosunu su adreste bulabilirsiniz;
https://www.youtube.com/playlist?list=PLecaGE98mtkhiSHbvTL7y0PZfzCT7FX8e




Bilgi paylastikca cogalir
73's de TA7W
Baris DINC

