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

73's de TA7W
Baris DINC

