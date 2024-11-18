#!/bin/bash

# Kullanıcıdan hedef IP veya domain aldigimiz bölüm
echo "Hedef IP veya domain girin (tam isabet için,dogru girdiginizden emin olun.): "
read target



# Kullanıcıdan tarama türünü seçmesini isteyin
echo "aklınızda nasıl bir tarama var?: "
echo "1 - Basit tarama"
echo "2 - Port taraması"
echo "3 - OS tespiti"
echo "4 - Sürüm tespiti"
echo "5 - Ping taraması"
echo "6 - saldırgan tarama"
read scan_type

# Seçilen tarama türüne göre Nmap komutlarını çalıştırın
case $scan_type in
    1)
        echo "Basit tarama başlatılıyor...biraz sürebilir"
        nmap $target
        ;;
    2)
        echo "Port taraması başlatılıyor...biraz sürebilir"
        nmap -p 1-65535 $target
        ;;
    3)
        echo "OS tespiti başlatılıyor...biraz sürebilir"
        nmap -O $target
        ;;
    4)
        echo "Sürüm tespiti başlatılıyor...biraz sürebilir"
        nmap -sV $target
        ;;
    5)
        echo "Ping taraması başlatılıyor...biraz sürebilir"
        nmap -sn $target
        ;;
    6)
        echo "saldırgan tarama başlatılıyor..."
        nmap -A $target
        ;;
    *)
        echo "Geçersiz seçenek!"
        ;;
esac
