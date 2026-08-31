#!/usr/bin/env bash
# identifier: Handshake Snooper
# description: Thu thập mã băm mã hóa WPA/WPA2.
# Việt hoá bởi xDuyHoangg

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
HandshakeSnooperJammerInterfaceQuery="Chọn một giao diện mạng để giám sát & ngắt kết nối (jamming)."
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
HandshakeSnooperMethodQuery="Chọn phương thức thu thập handshake"
HandshakeSnooperMonitorMethodOption="Giám sát (${CYel}thụ động$CClr)"
HandshakeSnooperAireplayMethodOption="Hủy xác thực aireplay-ng (${CRed}chủ động / mạnh mẽ$CClr)"
HandshakeSnooperMdk4MethodOption="Hủy xác thực mdk4 (${CRed}chủ động / mạnh mẽ$CClr)"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
HandshakeSnooperVerifierIntervalQuery="Bao lâu thì trình xác minh kiểm tra handshake một lần?"
HandshakeSnooperVerifierInterval30SOption="Mỗi 30 giây (${CGrn}khuyên dùng${CClr})."
HandshakeSnooperVerifierInterval60SOption="Mỗi 60 giây."
HandshakeSnooperVerifierInterval90SOption="Mỗi 90 giây."
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
HandshakeSnooperVerifierSynchronicityQuery="Quy trình xác minh nên diễn ra như thế nào?"
HandshakeSnooperVerifierSynchronicityAsynchronousOption="Bất đồng bộ (${CYel}chỉ dành cho hệ thống nhanh${CClr})."
HandshakeSnooperVerifierSynchronicitySynchronousOption="Đồng bộ (${CGrn}khuyên dùng${CClr})."
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
HandshakeSnooperStartingArbiterNotice="Daemon trọng tài ${CCyn}Handshake Snooper$CClr đang chạy."
HandshakeSnooperSnoopingForNSecondsNotice="Đang theo dõi trong \$HandshakeSnooperVerifierInterval giây."
HandshakeSnooperStoppingForVerifierNotice="Đang tạm dừng theo dõi & kiểm tra mã băm."
HandshakeSnooperSearchingForHashesNotice="Đang tìm mã băm trong tệp bắt gói tin."
HandshakeSnooperArbiterAbortedWarning="${CYel}Đã hủy${CClr}: Thao tác đã bị hủy, không tìm thấy mã băm hợp lệ."
HandshakeSnooperArbiterSuccededNotice="${CGrn}Thành công${CClr}: Đã phát hiện mã băm hợp lệ và lưu vào cơ sở dữ liệu của Fluxion."
HandshakeSnooperArbiterCompletedTip="Cuộc tấn công ${CBCyn}Handshake Snooper$CBYel đã hoàn thành, hãy đóng cửa sổ này và bắt đầu cuộc tấn công khác.$CClr"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# FLUXSCRIPT END
