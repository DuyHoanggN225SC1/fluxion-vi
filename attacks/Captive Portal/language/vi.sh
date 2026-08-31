#!/usr/bin/env bash
# identifier: Captive Portal
# description: Tạo điểm truy cập giả mạo ("evil twin").
# Việt hoá bởi xDuyHoangg

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CaptivePortalJammerInterfaceQuery="Chọn một giao diện mạng để ngắt kết nối (jamming)."
CaptivePortalAccessPointInterfaceQuery="Chọn một giao diện mạng làm điểm truy cập giả mạo (access point)."
CaptivePortalCannotStartInterfaceError="${CRed}Không thể khởi tạo giao diện captive portal$CClr, đang quay lại!"
CaptivePortalStaringAPServiceNotice="Đang khởi chạy dịch vụ điểm truy cập Captive Portal..."
CaptivePortalStaringAPRoutesNotice="Đang định tuyến cho điểm truy cập Captive Portal..."
CaptivePortalStartingDHCPServiceNotice="Đang chạy dịch vụ DHCP cho điểm truy cập dưới dạng daemon..."
CaptivePortalStartingDNSServiceNotice="Đang chạy dịch vụ DNS cho điểm truy cập dưới dạng daemon..."
CaptivePortalStartingWebServiceNotice="Đang chạy trang web Captive Portal dưới dạng daemon..."
CaptivePortalStartingJammerServiceNotice="Đang chạy dịch vụ ngắt kết nối (jammer) dưới dạng daemon..."
CaptivePortalStartingAuthenticatorServiceNotice="Đang khởi chạy kịch bản xác thực (authenticator)..."
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CaptivePortalAPServiceQuery="Chọn dịch vụ cho điểm truy cập"
CaptivePortalAPServiceHostapdOption="AP Giả mạo - hostapd (${CGrn}khuyên dùng$CClr)"
CaptivePortalAPServiceAirbaseOption="AP Giả mạo - airbase-ng (${CYel}chậm$CClr)"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CaptivePortalVerificationMethodQuery="Chọn phương thức xác minh mật khẩu"
CaptivePortalVerificationMethodPyritOption="hash - pyrit"
CaptivePortalVerificationMethodCowpattyOption="hash - cowpatty"
CaptivePortalVerificationMethodAircrackNG="hash - aircrack-ng (mặc định, ${CYel}không tin cậy${CClr})"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CaptivePortalCertificateSourceQuery="Chọn nguồn chứng chỉ SSL cho captive portal."
CaptivePortalCertificateSourceGenerateOption="Tạo chứng chỉ SSL mới"
CaptivePortalCertificateSourceRescanOption="Phát hiện chứng chỉ SSL (${CClr}tìm kiếm lại$CGry)"
CaptivePortalCertificateSourceDisabledOption="Không sử dụng (${CYel}tắt SSL$CGry)"
CaptivePortalUIQuery="Chọn giao diện trang Captive Portal cho mạng giả mạo."
CaptivePortalGenericInterfaceOption="Trang Portal chung (Generic Portal)"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
CaptivePortalConnectivityQuery="Chọn kiểu kết nối Internet cho mạng giả mạo."
CaptivePortalConnectivityDisconnectedOption="ngắt kết nối (${CGrn}khuyên dùng$CClr)"
CaptivePortalConnectivityEmulatedOption="mô phỏng"
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# FLUXSCRIPT END
