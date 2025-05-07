# Dietician Appointment & Tracking System (Laravel)

Bu proje, diyetisyenler ve hastalar arasında randevu oluşturma, takip etme ve diyet planlarını yönetme işlemlerini kolaylaştırmak amacıyla Laravel PHP Framework kullanılarak geliştirilmiş bir **Diyetisyen Takip Sistemi**dir.

## 🔧 Proje Özellikleri

### 👩‍⚕️ Diyetisyen Paneli
- Diyetisyen kayıt ve giriş işlemleri
- Danışan ekleme ve listeleme
- Danışanlara özel diyet listesi oluşturma
- Randevu oluşturma ve görüntüleme
- Mesajlaşma sistemi ile danışanlarla iletişim

### 👩 Danışan Paneli
- Danışan kayıt ve giriş işlemleri
- Kişisel profil görüntüleme ve düzenleme
- Diyet listesini görüntüleme
- Randevu gün ve saat bilgilerini takip etme
- Diyetisyen ile mesajlaşma

### 📅 Randevu Sistemi
- Diyetisyenler takvim üzerinden randevu oluşturabilir
- Danışanlar kendilerine uygun saatleri görebilir
- Geçmiş ve yaklaşan randevular takip edilebilir

### 💬 Mesajlaşma Sistemi
- Gerçek zamanlı veya basit mesajlaşma yapısı ile iletişim
- Diyetisyen ve danışan arasında geçmiş mesajlar görüntülenebilir

---

## 🛠️ Kullanılan Teknolojiler

- **Laravel 8.x** – PHP web framework
- **MySQL** – Veritabanı yönetimi
- **Blade** – Laravel’in kendi şablon motoru
- **HTML / CSS / Bootstrap** – Arayüz tasarımı
- **JavaScript / jQuery** – Dinamik sayfa etkileşimleri

---

## 🚀 Kurulum Adımları

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları takip edin:

```bash
# 1. Projeyi klonlayın
git clone https://github.com/duygualtunaay/Php-Laravel-Dietician.git

# 2. Proje klasörüne girin
cd Php-Laravel-Dietician

# 3. Laravel bağımlılıklarını yükleyin
composer install

# 4. Ortam dosyasını oluşturun
cp .env.example .env

# 5. Uygulama anahtarını oluşturun
php artisan key:generate

# 6. Veritabanı bilgilerini .env dosyasına girin

# 7. Migration ve Seeder çalıştırın
php artisan migrate --seed

# 8. Sunucuyu başlatın
php artisan serve
