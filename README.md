![Fluxion logo](https://github.com/FluxionNetwork/fluxion/raw/master/logos/logo.jpg)

# Fluxion VI - Bản Nâng Cấp Tấn Công Captive Portal (Weaponized Edition)

Bản nâng cấp tối ưu hóa đặc biệt dành cho các kịch bản kiểm thử bảo mật WPA/WPA2 bằng phương pháp Social Engineering / Evil Twin Captive Portal.

---

## 🚀 Các Tính Năng Đã Được Tinh Chỉnh & Cường Hóa (Weaponized Features)

### 1. 📡 Phát Sóng Fake AP Hiện Đại (Chuẩn 802.11n + WMM)
- **Mặc định Fluxion:** Chỉ hỗ trợ `802.11g` (Wi-Fi 3 cũ kỹ), dễ bị thiết bị iOS/Android hiện đại bỏ qua hoặc đánh giá điểm mạng thấp.
- **Bản Nâng Cấp:** Tự động kích hoạt `ieee80211n=1` và `wmm_enabled=1` trong `hostapd.sh`. Fake AP phát sóng ở chuẩn Wi-Fi 4 hiện đại, thu hút và ưu tiên tự động kết nối đối với các thiết bị thông minh đời mới.

### 2. ⚡ Cơ Chế Ép Nhận Captive Portal (DHCP Lease Time 10s)
- **Rút ngắn thời hạn cấp IP:** Giảm `default-lease-time` xuống **10 giây** và `max-lease-time` xuống **30 giây**.
- **Tác dụng:** Ép thiết bị của mục tiêu phải liên tục gia hạn IP, kích hoạt lại quy trình kiểm tra mạng của hệ điều hành (Captive Portal Detection), liên tục bật popup yêu cầu đăng nhập mật khẩu Wi-Fi.

### 3. 🛡️ Bịt Kín Lối Thấu DNS (IPTables DNS Hijacking)
- **Mặt cắt kỹ thuật:** Bổ sung quy tắc iptables NAT DNAT cho toàn bộ gói tin UDP/TCP cổng 53 trỏ thẳng về Gateway.
- **Tác dụng:** Khóa chặt các thiết lập DNS tĩnh/mã hóa cứng (như Google `8.8.8.8` hay Cloudflare `1.1.1.1`), buộc mọi truy vấn tên miền đều bị chuyển hướng về giao diện giả mạo.

### 4. 🔒 Bảo Vệ Giao Diện & Chống Cache Toàn Diện (Frontend Hardening)
- **Anti-Cache Headers:** Thêm meta tag `no-cache`, `no-store`, `must-revalidate` trên toàn bộ hơn 50 mẫu portal.
- **Chống Copy/Paste & Bôi đen:** Khóa tính năng bôi đen (`user-select: none`) để hạn chế nạn nhân soi mã nguồn hoặc thao tác copy nhầm.
- **Ràng buộc Form Validation:** Bắt buộc mật khẩu nhập vào phải từ 8 - 63 ký tự mới cho phép gửi tới Backend, ngăn chặn các payload trống hoặc nhập bừa rác làm lag tiến trình verified.

### 5. 🕵️ Thu Thập Dấu Vết Thiết Bị (OSINT / User-Agent Fingerprinting)
- Tự động bắt chuỗi `HTTP_USER_AGENT` và lưu vào `victims_loot.log`. Thu thập thông tin chi tiết về hệ điều hành, dòng máy (iPhone/Android/PC) và phiên bản trình duyệt của nạn nhân ngay khi họ bấm đăng nhập.

---

## 🛠️ Cài Đặt & Sử Dụng

```bash
# Tải về repository
git clone https://github.com/DuyHoanggN225SC1/fluxion-vi.git

# Di chuyển vào thư mục
cd fluxion-vi

# Chạy kiểm tra và tự động cài đặt phụ thuộc
./fluxion.sh -i

# Khởi chạy Fluxion
./fluxion.sh
```

---

## ⚠️ Miễn Trừ Trách Nhiệm (Disclaimer)

Công cụ này được phát triển phục vụ mục đích nghiên cứu bảo mật và kiểm thử xâm nhập hợp pháp. Người sử dụng chịu hoàn toàn trách nhiệm trước pháp luật nếu sử dụng vào các mục đích trái phép.
