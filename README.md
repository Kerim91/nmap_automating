# nmap_automating



Nmap Tarama Otomasyon Scripti

Bu proje, Nmap aracını kullanarak hedef IP adresi veya domain üzerinde otomatik tarama işlemleri yapmanızı sağlayan bir bash scriptidir. Kullanıcıdan alınan hedef ve tarama türüne göre farklı Nmap komutları çalıştırarak, ağ güvenliği testleri ve analizleri yapmanızı sağlar.

Kullanım
Bu script, aşağıdaki işlemleri gerçekleştirecek şekilde tasarlanmıştır:


Tarama Türü Seçimi: Kullanıcıya, yapacağı tarama türünü seçme şansı tanınır.
Nmap Tarama Çeşitleri:
Basit Tarama: Hedef üzerinde temel bir Nmap taraması gerçekleştirir.
Port Taraması: Hedefin açık portlarını tarar.
OS Tespiti: Hedef cihazın işletim sistemini tespit etmeye çalışır.
Sürüm Tespiti: Hedefteki servislerin sürüm bilgilerini çıkarır.
Ping Tarama: Hedefin aktif olup olmadığını kontrol eder.
saldırgan(admin tercihi) Tarama: Hedefin detaylı analizini yapar (OS, servis, versiyon bilgisi, vb.).
