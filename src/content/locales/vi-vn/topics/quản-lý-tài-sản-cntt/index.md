# Quản lý tài sản CNTT

**Quản lý tài sản CNTT theo dõi phần cứng, phần mềm và các nguồn lực liên quan mà một tổ chức sở hữu hoặc trả tiền, từ lúc mua đến lúc thanh lý, để các quyết định về chi phí, rủi ro và hỗ trợ dựa trên sự thật thay vì phỏng đoán.**

## Vì sao điều này quan trọng

Hỏi hầu hết các tổ chức họ có bao nhiêu laptop, máy chủ, tài khoản đám mây và giấy phép phần mềm, và câu trả lời đầu tiên là một phỏng đoán. Câu trả lời thứ hai, sau khi tìm kiếm, thường khác. Khoảng cách đó có chi phí. Giấy phép được mua mà không ai dùng, hoặc được dùng mà không được mua. Phần cứng cũ vẫn nằm trên mạng mà không được vá. Nhân viên rời đi vẫn giữ quyền truy cập các hệ thống mà không ai nhớ gỡ. Một bàn dịch vụ không thể hỗ trợ thiết bị nó không biết là tồn tại.

Quản lý tài sản CNTT (ITAM) là thực hành khép khoảng cách đó. Nó gắn chặt với quản lý dịch vụ: dịch vụ chạy trên tài sản, sự cố và thay đổi chạm vào tài sản, và chi phí của một dịch vụ phần lớn là chi phí tài sản của nó. Với các nhóm agile, thực hành này có một biến thể riêng. Tài sản nay gồm các nguồn lực đám mây được một script tạo ra trong vài giây và bị hủy sau vài phút, các image container, thư viện mã nguồn mở và các gói thuê bao được mua bằng thẻ. Mô hình cũ về một bảng tính thiết bị đã mua không nắm bắt được chúng.

Bài viết tiếng Anh của Wikipedia có tên "IT asset management" hiện chuyển hướng sang bài về quản lý trung tâm dữ liệu, nơi ITAM xuất hiện như một phần. Phần đó mô tả ITAM là các thực hành kinh doanh nối các chức năng tài chính, hợp đồng và kiểm kê để hỗ trợ quản lý vòng đời và các quyết định CNTT chiến lược, và nó ngắn. Chủ đề này dùng nó cho định nghĩa, thêm các chi tiết từ các bài về quản lý tài sản phần mềm và cơ sở dữ liệu quản lý cấu hình, và đặt thực hành vào bối cảnh agile. Khi vượt ra ngoài các nguồn, nó nói rõ như vậy.

## Các khái niệm cốt lõi

### Nó là gì

Theo phần của Wikipedia về quản lý tài sản trung tâm dữ liệu, trích dẫn Gartner, ITAM là một tập các thực hành kinh doanh nối các chức năng tài chính, hợp đồng và kiểm kê để hỗ trợ quản lý vòng đời và các quyết định CNTT chiến lược. Tài sản gồm phần mềm và phần cứng trong môi trường kinh doanh. Thực hành này còn được gọi là quản lý kiểm kê. Bài viết lưu ý rằng thực hành dùng khám phá tự động để kiểm kê có thể được so sánh với quyền sử dụng giấy phép, và rằng quản lý đầy đủ cần một kho nhiều loại thông tin, tích hợp với các hệ thống chuỗi cung ứng, bàn trợ giúp, mua sắm, nhân sự và ITSM.

### Điều gì được tính là tài sản

Một danh sách làm việc hữu ích cho một tổ chức dịch vụ:

| Loại tài sản | Ví dụ | Được bàn ở |
|---|---|---|
| **Phần cứng** | Laptop, máy chủ, thiết bị mạng, điện thoại, lưu trữ | Chủ đề 4.3 — Quản lý tài sản phần cứng |
| **Phần mềm** | Ứng dụng có giấy phép, hệ điều hành, thành phần mã nguồn mở, gói thuê bao | Chủ đề 4.2 — Quản lý tài sản phần mềm |
| **Nguồn lực đám mây và dịch vụ** | Máy ảo, container, bucket lưu trữ, tài khoản SaaS | Chủ đề 4.2 — Quản lý tài sản phần mềm và Chủ đề 4.5 — Quản lý tài chính CNTT và FinOps |
| **Dữ liệu và thông tin** | Tập dữ liệu, bản ghi, bản sao lưu | Chủ đề 3.13 — Quản lý an toàn thông tin |
| **Hợp đồng và quyền sử dụng** | Giấy phép, thỏa thuận hỗ trợ, bảo hành | Chủ đề 4.2 — Quản lý tài sản phần mềm và Chủ đề 3.14 — Quản lý nhà cung cấp |
| **Con người và kỹ năng** | Nhân viên và năng lực (thường không nằm trong sổ đăng ký tài sản, nhưng là một phần của dịch vụ) | Chủ đề 2.5 — Bốn chiều của quản lý dịch vụ |

Bảng này là danh sách làm việc của cuốn sách, không phải phân loại từ một nguồn.

### Vòng đời

Phần của Wikipedia mô tả quản lý tài sản phần cứng bao gồm các thành phần máy tính và mạng vật lý từ lúc thu thập đến lúc thanh lý, với các thực hành được liệt kê là yêu cầu và phê duyệt, mua sắm, quản lý vòng đời, tái triển khai và thanh lý, và nói rằng nắm bắt thông tin tài chính về vòng đời phần cứng là một thành phần then chốt. Nó không đưa mô hình giai đoạn chính thức nào. Một trình tự thực tế phổ biến, được dùng rộng rãi và được đưa ra ở đây như vậy, là:

1. **Lập kế hoạch và yêu cầu:** quyết định cần gì và được phê duyệt.
2. **Thu thập:** mua hoặc xây, và ghi lại việc mua.
3. **Triển khai:** đưa vào sử dụng và nối với người dùng hoặc dịch vụ.
4. **Vận hành và bảo trì:** vá, hỗ trợ, di chuyển và theo dõi thay đổi.
5. **Cho ngừng và thanh lý:** gỡ khỏi dịch vụ, xóa dữ liệu và thanh lý an toàn.

Ở mỗi giai đoạn, hãy hỏi ai chịu trách nhiệm và bản ghi nào được giữ.

### Kiểm kê, khám phá và bản ghi

Một sổ đăng ký tài sản chỉ hữu ích nếu nó đúng sự thật. Bài viết lưu ý rằng khám phá tự động hỗ trợ so sánh kiểm kê với quyền sử dụng. Các công cụ khám phá quét mạng và tài khoản đám mây để tìm cái đang tồn tại, còn sổ đăng ký ghi cái tổ chức định sở hữu và trả tiền. Khác biệt giữa hai thứ là các phát hiện: thiết bị không biết, giấy phép không dùng, gói thuê bao chưa được phê duyệt.

### Quan hệ với ITSM và CMDB

Phần của Wikipedia nói ITAM tích hợp với ITSM nhưng không ánh xạ nó với các quy trình ITIL một cách chi tiết. Các mô tả ITIL thường phân biệt quản lý tài sản, liên quan đến quyền sở hữu, chi phí và hợp đồng, với quản lý cấu hình, liên quan đến quan hệ giữa các thành phần. Một **cơ sở dữ liệu quản lý cấu hình (CMDB)**, theo Wikipedia, là một thuật ngữ ITIL cho cơ sở dữ liệu lưu thông tin về tài sản phần cứng và phần mềm, gọi là hạng mục cấu hình, và các quan hệ giữa chúng (xem Chủ đề 4.4 — Quản lý cấu hình). Bản ghi tài sản và bản ghi cấu hình chồng lấn nhau; nhiều tổ chức liên kết dữ liệu để mỗi nguồn giữ quyền kiểm soát của riêng nó.

### Tiêu chuẩn

Phần của Wikipedia nêu ISO/IEC 19770 là họ tiêu chuẩn cho quản lý tài sản phần mềm mà không mô tả các phần của nó. Bài viết về quản lý tài sản phần mềm liệt kê các phần: 19770-1:2017 về yêu cầu hệ thống quản lý tài sản CNTT, một khung quy trình có thể được triển khai theo các bậc từng giai đoạn; 19770-2:2015 về thẻ định danh phần mềm; 19770-3:2016 về quản lý quyền sử dụng; 19770-4:2017 về đo mức sử dụng nguồn lực; và 19770-5:2015 về tổng quan và từ vựng. Hãy kiểm tra chính các tiêu chuẩn để có lời lẽ chính xác và ấn bản hiện hành.

### Lợi ích và giới hạn

Phần của Wikipedia không liệt kê lợi ích nào và không có lời chỉ trích nào, và nó không nêu công cụ nào. Các lợi ích thực tế được tuyên bố rộng rãi, như chi phí giấy phép thấp hơn, giảm rủi ro bảo mật và hỗ trợ tốt hơn, nhưng cuốn sách này không có bằng chứng đo được cho chúng trong các nguồn đã đọc. Hãy thận trọng với các nhận định về tiết kiệm, hỏi những người đưa ra chúng bằng chứng, và đo kết quả của chính bạn.

### ITAM trong bối cảnh agile và đám mây

Các thực hành của những thập kỷ trước giả định rằng tài sản được CNTT mua, giao và cài đặt. Ngày nay:

- **Các nhóm tự tạo nguồn lực,** trong bảng điều khiển đám mây hoặc qua mã. Sổ đăng ký phải biết về chúng từ tài khoản đám mây, không phải từ một đơn đặt hàng.
- **Tài sản tồn tại ngắn.** Một container có thể sống một giờ. Hãy theo dõi dịch vụ và tài khoản, không phải từng instance.
- **Gói thuê bao thay giấy phép.** Phần mềm được trả tiền hằng tháng bằng thẻ của ai đó, và quyền sở hữu không rõ.
- **Thành phần mã nguồn mở** đi vào qua mã, ngoài hệ thống mua sắm (xem Chủ đề 4.2 — Quản lý tài sản phần mềm).

Những thay đổi này đẩy ITAM về phía tự động hóa, gắn thẻ và trách nhiệm chung giữa CNTT và các nhóm dùng tài sản.

## Thực hành tốt

1. **Bắt đầu với những gì quan trọng nhất.** Chọn trước các tài sản có chi phí hoặc rủi ro cao nhất: giấy phép đắt tiền, máy chủ hướng internet, thiết bị chứa dữ liệu nhạy cảm. Một sổ đăng ký đầy đủ có thể đến sau.
2. **Định nghĩa tài sản là gì cho mục đích của bạn.** Viết một danh sách ngắn các loại tài sản bạn sẽ theo dõi và những sự thật bạn cần cho mỗi loại: chủ sở hữu, vị trí hay tài khoản, chi phí, hợp đồng và trạng thái. Tránh các trường không ai dùng.
3. **Chỉ định một chủ sở hữu cho mỗi tài sản.** Một người hay một nhóm nên chịu trách nhiệm về mỗi tài sản hay nhóm tài sản. Tài sản không có chủ sở hữu là nơi lãng phí và rủi ro tích tụ.
4. **Dùng khám phá để tìm cái đang tồn tại.** Quét mạng, tài khoản đám mây và thiết bị đầu cuối, và so sánh với sổ đăng ký. Coi các khác biệt là hạng mục cần điều tra.
5. **Gắn thẻ cho nguồn lực đám mây.** Yêu cầu thẻ cho chủ sở hữu, dịch vụ và môi trường trên các nguồn lực được tạo trong tài khoản đám mây, và báo cáo những cái chưa gắn thẻ. Thẻ cho phép sổ đăng ký theo kịp các tài sản chuyển động nhanh.
6. **Nối mua sắm với sổ đăng ký.** Bảo đảm các lần mua mới, gồm gói thuê bao và mua bằng thẻ, tạo hoặc cập nhật một bản ghi. Rà soát chi tiêu để tìm các khoản không làm vậy.
7. **Nối tài sản với dịch vụ.** Ghi mỗi tài sản hỗ trợ dịch vụ nào. Điều này cho phép bạn tính tác động của một sự cố, thay đổi hay việc cho ngừng (xem Chủ đề 4.4 — Quản lý cấu hình).
8. **Theo dõi phía tài chính.** Ghi chi phí, điều khoản hợp đồng, ngày gia hạn và khấu hao khi liên quan. Nắm bắt thông tin tài chính xuyên vòng đời là một thành phần then chốt của quản lý phần cứng, như phần của Wikipedia nói.
9. **Quản lý giai đoạn cuối vòng đời.** Lập kế hoạch cho việc cho ngừng từ đầu: xóa dữ liệu, trả lại và thanh lý. Gỡ quyền truy cập và giấy phép cùng lúc.
10. **Rà soát đều đặn.** Ít nhất hai lần mỗi năm, đối chiếu sổ đăng ký với thực tế cho các loại tài sản quan trọng nhất. Sửa quy trình đã gây ra bất kỳ khác biệt nào.
11. **Chia sẻ dữ liệu.** Làm dữ liệu tài sản sẵn có cho bàn dịch vụ, an ninh, tài chính và các nhóm, ở dạng họ dùng được. Dữ liệu chỉ người quản lý tài sản thấy thì có ít giá trị.
12. **Đo thực hành.** Theo dõi sổ đăng ký đầy đủ và chính xác đến đâu, mất bao lâu để tìm một tài sản và chi phí của các mục không dùng. Dùng chúng để cải tiến, không để xếp hạng con người.

## Câu hỏi để thảo luận với nhóm của bạn

**Nếu ai đó hỏi chúng ta có bao nhiêu tài sản mỗi loại, chúng ta chắc chắn đến đâu?**

Mời mỗi người ước lượng số laptop, máy chủ, tài khoản đám mây và gói thuê bao, rồi so với sổ đăng ký. Khác biệt cho thấy có bao nhiêu điều chưa biết. Người điều phối có thể hỏi mọi người tin loại nào ít nhất. Chọn một loại để đối chiếu trước.

**Ai sở hữu từng tài sản của chúng ta, và điều gì xảy ra khi người đó rời đi?**

Lấy một mẫu tài sản và xem trường chủ sở hữu. Đếm những cái không có chủ sở hữu hoặc chủ sở hữu đã rời đi. Hỏi quy trình nào nên cập nhật chủ sở hữu khi mọi người chuyển đi. Thống nhất một yếu tố kích hoạt, như quy trình người nghỉ việc.

**Chúng ta trả tiền cho cái gì mà không ai dùng?**

Xem giấy phép, gói thuê bao và nguồn lực đám mây, và hỏi cái nào không được dùng gần đây. Hãy sẵn sàng cho những điều bất ngờ. Hỏi ai có thể ủy quyền hủy một thứ. Chọn ba cái lớn nhất và kiểm tra từng cái.

**Chúng ta biết về một nguồn lực đám mây hay gói thuê bao mới bằng cách nào?**

Lần theo cái gần nhất. Thường câu trả lời là "khi nhận hóa đơn" hay "khi nó hỏng". Bàn cách mua sắm, gắn thẻ và khám phá có thể bắt nó sớm hơn. Thống nhất một kiểm soát, như thẻ bắt buộc hoặc báo cáo hằng tháng các mục chưa gắn thẻ.

**Điều gì xảy ra với một laptop hay máy chủ ở cuối vòng đời của nó?**

Đi qua các bước: ai quyết định, dữ liệu được xóa thế nào, bản ghi nói gì. Khoảng trống thường xuất hiện quanh việc xóa dữ liệu và bản ghi. Xin bằng chứng rằng một lần thanh lý gần đây đã được thực hiện đúng. Lên kế hoạch một danh mục kiểm tra ngắn.

**Dữ liệu tài sản nào các nhóm khác cần mà chúng ta không cung cấp?**

Hỏi bàn dịch vụ, an ninh và tài chính họ muốn thấy gì. Các yêu cầu điển hình gồm chủ sở hữu, dịch vụ và chi phí. Bàn cách chia sẻ và ai giữ nó cập nhật. Chọn một báo cáo để tạo ra.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan thống kê quốc gia có 1.800 nhân viên và chạy xử lý khảo sát trong sự kết hợp của một trung tâm dữ liệu tại chỗ và một tài khoản đám mây công cộng. Nhóm tài chính nhận thấy hóa đơn đám mây đã tăng một phần ba trong một năm, và một cuộc kiểm toán an ninh tìm thấy ba máy chủ trong trung tâm dữ liệu mà không ai nhận ra. Chức năng ITAM là hai người với một bảng tính.

Trưởng CNTT đặt một mục tiêu khiêm tốn: biết các tài sản chính, ai sở hữu chúng và chúng tốn bao nhiêu, bắt đầu với đám mây. Một quy tắc mới yêu cầu thẻ chủ sở hữu, dịch vụ và môi trường trên mọi nguồn lực đám mây. Một báo cáo hằng tuần liệt kê các nguồn lực chưa gắn thẻ, và các nhóm có hai tuần để nhận hoặc gỡ chúng. Trong trung tâm dữ liệu, hai nhân viên ITAM chạy một lần quét khám phá và so sánh với bảng tính, thấy 40 thiết bị không có trong danh sách. Họ lần ra chủ sở hữu của hầu hết chúng. Bộ phận mua sắm đồng ý rằng mọi gói thuê bao phần mềm mới được báo cho ITAM trong vòng một tuần.

Sau một quý, tỷ lệ nguồn lực đám mây chưa gắn thẻ giảm từ khoảng một phần ba xuống còn vài cái, và tài chính có thể quy hóa đơn đám mây về các dịch vụ. Một số nguồn lực không dùng bị tắt, và hai máy chủ bị cho ngừng. Vấn đề vẫn còn. Một nhóm nghiên cứu mua công cụ bằng thẻ của phòng ban và không báo cáo, và báo cáo hằng tuần chỉ vài nhóm đọc. Nhân viên ITAM nói chuyện với nhóm nghiên cứu về một biểu mẫu đăng ký đơn giản, và đề nghị trưởng tài chính thêm gói thuê bao vào buổi rà soát hằng tháng. Họ cũng quyết định sổ đăng ký sẽ bao gồm các dịch vụ đám mây theo tài khoản và dịch vụ, không phải từng instance tồn tại ngắn.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối tạo ra nhiều tài sản. Hãy gắn thẻ cho những gì bạn tạo, đăng ký các gói thuê bao và thư viện bạn thêm, và cho ngừng những gì bạn không còn cần. Coi sổ đăng ký là một dịch vụ bạn đóng góp và được lợi.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành phụ thuộc vào sổ đăng ký cho hỗ trợ, vá lỗi và ứng phó sự cố. Hãy giữ nó chính xác bằng cách cập nhật khi triển khai, thay đổi và cho ngừng. Dùng khám phá để tìm cái còn thiếu, và báo các khác biệt cho chủ sở hữu.

### Lãnh đạo và quản trị

Lãnh đạo và tài chính dùng dữ liệu tài sản cho các quyết định về chi tiêu, rủi ro và gia hạn. Hãy đòi vài con số đáng tin, như chi tiêu theo dịch vụ và tỷ lệ tài sản có chủ sở hữu, thay vì một sổ đăng ký hoàn hảo. Ủng hộ các kiểm soát nhỏ, như thẻ và báo cáo mua sắm, giữ cho nó đúng sự thật.

### Khách hàng và người dùng

Người dùng được lợi khi thiết bị và quyền truy cập của họ được quản lý tốt: thiết bị chạy được, thay thế nhanh và không có khoản phí bất ngờ. Hãy báo cho bàn dịch vụ về thiết bị bạn thêm hoặc không còn cần, và mong được hỏi xác nhận những gì bạn đang giữ.

## Các kiểu thất bại thường gặp

- **Một sổ đăng ký không ai tin.** Nó lỗi thời và bị bỏ qua. Thay vào đó, thu hẹp phạm vi, dùng khám phá và cập nhật ở mỗi sự kiện vòng đời.
- **Không có chủ sở hữu.** Tài sản không thuộc về ai. Thay vào đó, yêu cầu một chủ sở hữu cho mọi tài sản hay nhóm.
- **Theo dõi mọi thứ.** Công sức chôn vùi giá trị. Thay vào đó, bắt đầu với cái tốn kém hoặc rủi ro, rồi lớn dần.
- **Bỏ qua đám mây và gói thuê bao.** Sổ đăng ký chỉ bao phủ phần cứng đã mua. Thay vào đó, gắn thẻ nguồn lực đám mây và nắm bắt gói thuê bao.
- **Mua sắm ngoài quy trình.** Mua bằng thẻ đi vòng sổ đăng ký. Thay vào đó, nối mua sắm và báo cáo chi tiêu với ITAM.
- **Không có quy trình cuối vòng đời.** Thiết bị cũ vẫn giữ dữ liệu và quyền truy cập. Thay vào đó, lập kế hoạch cho việc cho ngừng, xóa dữ liệu và thanh lý.
- **Dữ liệu giấu khỏi người khác.** Chỉ ITAM thấy sổ đăng ký. Thay vào đó, chia sẻ nó với bàn dịch vụ, an ninh và tài chính.
- **Đếm mà không hành động.** Báo cáo cho thấy tài sản không dùng và không có gì bị hủy. Thay vào đó, giao chủ sở hữu hành động theo các phát hiện.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Kiểm kê và khám phá | Tài sản được liệt kê trong bảng tính hoặc không có | Một số loại tài sản được kiểm kê | Khám phá và một sổ đăng ký bao phủ các loại tài sản chính và được đối chiếu đều đặn | Độ đầy đủ và chính xác được đo và khoảng trống được sửa | Kiểm kê trải rộng tại chỗ, đám mây và nhà cung cấp với dữ liệu chung |
| Quyền sở hữu và trách nhiệm | Ít tài sản có chủ sở hữu | Chủ sở hữu được nêu cho một số tài sản | Mỗi tài sản hay nhóm có chủ sở hữu, được giữ cập nhật bằng quy trình | Khoảng trống quyền sở hữu được theo dõi và giải quyết | Chủ sở hữu giữa các nhóm và nhà cung cấp làm việc theo quy tắc chung |
| Vòng đời và kiểm soát tài chính | Mua và thanh lý không chính thức | Một số tài sản có dữ liệu chi phí và hợp đồng | Các bước vòng đời và dữ liệu tài chính được ghi cho tài sản chính | Chi phí, gia hạn và mức sử dụng được rà soát và hành động theo | Dữ liệu tài chính và vòng đời được nối với dịch vụ và chia sẻ với tài chính |
| Dùng dữ liệu | Dữ liệu ít người dùng | Bàn dịch vụ đôi khi dùng sổ đăng ký | Bàn dịch vụ, an ninh và tài chính thường xuyên dùng dữ liệu tài sản | Chất lượng và mức dùng dữ liệu được đo và cải thiện | Dữ liệu nuôi các quyết định trong toàn tổ chức và với đối tác |

## Danh mục kiểm tra

- [ ] Chúng ta có một danh sách ngắn các loại tài sản và những sự thật chúng ta ghi cho mỗi loại.
- [ ] Mỗi tài sản hay nhóm được theo dõi có một chủ sở hữu có tên.
- [ ] Kết quả khám phá được so sánh với sổ đăng ký theo lịch đều đặn.
- [ ] Nguồn lực đám mây mang thẻ chủ sở hữu, dịch vụ và môi trường, và những cái chưa gắn thẻ được báo cáo.
- [ ] Các lần mua mới, gồm gói thuê bao, tạo hoặc cập nhật một bản ghi.
- [ ] Tài sản được nối với các dịch vụ chúng hỗ trợ.
- [ ] Dữ liệu chi phí, hợp đồng và gia hạn được ghi cho các tài sản chính.
- [ ] Việc cho ngừng gồm xóa dữ liệu, gỡ quyền truy cập và một bản ghi.
- [ ] Sổ đăng ký được đối chiếu với thực tế ít nhất hai lần mỗi năm cho các loại tài sản chính.
- [ ] Bàn dịch vụ, an ninh và tài chính thấy được dữ liệu họ cần.

## Lời nhắc AI

**Mục đích: đối chiếu kết quả khám phá với sổ đăng ký.**

```text
I have two lists of assets: what our register says we have, and what a discovery scan found. 

Register: [paste a table with asset name or ID, type, owner, and status; remove personal data].
Discovery: [paste a table with name or ID, type, and any identifying details].

Using only these lists, identify: items in the register not found by discovery; items found by discovery not in the register; and items where the details differ. For each group, suggest a question to ask the owner or the team. Do not guess what an unknown item is. If the lists are too thin to match, say what to add. List what you are unsure of.
```

**Mục đích: soạn một chuẩn gắn thẻ ngắn cho nguồn lực đám mây.**

```text
Help me draft a one-page tagging standard for cloud resources.

Our cloud accounts and teams: [describe].
Facts we need to know about a resource: [for example owner, service, environment, cost center, data sensitivity].
Problems today: [for example untagged resources and unknown owners].

Propose three to six required tags with allowed values or formats, how untagged resources will be found and reported, who is responsible for fixing them, and a grace period (leave the length as [to be agreed]). Mark assumptions. Do not invent our tooling. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: lập kế hoạch danh mục kiểm tra cho việc cho ngừng một thiết bị hay máy chủ.**

```text
Help me write a retirement checklist for [asset type, for example "laptops" or "servers"].

Our current practice: [describe].
Data it may hold: [describe sensitivity].
Records we must keep: [list, or write "unknown"].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a checklist covering: approval, removing access and licenses, data wiping or destruction and evidence, updating the register, financial records, and disposal or return. Mark every item that is an assumption. Do not state that a law requires a step unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: tìm các ứng viên tiết kiệm từ dữ liệu sử dụng.**

```text
Here is a table of our subscriptions and licenses with cost per month, number of paid seats, and number of active users in the last 90 days: [paste real data].

Using only my numbers, list items where paid seats exceed active users and compute the difference and the cost of the unused seats. Rank by cost. For the top five, suggest a question to ask the owner before changing anything. Do not assume that inactive users can lose access; flag it as a question. List what you are unsure of.
```

## Kỹ năng AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): dùng để lập kế hoạch cách tài sản và quan hệ của chúng được ghi lại và giữ đúng sự thật.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng để quản lý hợp đồng và gia hạn đứng sau tài sản.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): dùng để dự báo chi phí của tài sản và gói thuê bao.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để làm rõ ai sở hữu, hỗ trợ và phê duyệt từng loại tài sản.
- [data-governance](../../../../skills/data-governance/SKILL.md): dùng để quyết định ai sở hữu dữ liệu nằm trên tài sản và nó được cho ngừng thế nào.

## Nguồn chính

- **IT asset management** (Wikipedia, hiện nằm trong bài về quản lý trung tâm dữ liệu): một định nghĩa ngắn và mô tả về quản lý tài sản phần cứng.
- **Software asset management** (Wikipedia): định nghĩa, mục tiêu, công nghệ và các phần của ISO/IEC 19770.
- **Configuration management database** (Wikipedia): thuật ngữ ITIL cho kho các hạng mục cấu hình và quan hệ.
- **ITIL** (Wikipedia): khung coi ITAM cạnh quản lý dịch vụ.

## Tài liệu tham khảo

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
3. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
7. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
8. Asset management — Wikipedia — https://en.wikipedia.org/wiki/Asset_management
9. Inventory — Wikipedia — https://en.wikipedia.org/wiki/Inventory
