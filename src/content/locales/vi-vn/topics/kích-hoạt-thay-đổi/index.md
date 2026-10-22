# Kích hoạt thay đổi

**Kích hoạt thay đổi tồn tại để các thay đổi có lợi diễn ra an toàn và nhanh chóng, và bằng chứng từ nghiên cứu giao phần mềm là rủi ro được kiểm soát tốt hơn bằng các thay đổi nhỏ, đánh giá đồng cấp và kiểm tra tự động hơn là gửi mọi thay đổi đến một ủy ban.**

## Vì sao điều này quan trọng

Thay đổi là nơi giao hàng liên tục và quản lý dịch vụ va chạm nhau thường nhất. Các nhóm phân phối muốn phát hành thường xuyên, vì các thay đổi nhỏ, thường xuyên dễ hiểu và dễ hoàn tác hơn. Vận hành và quản trị muốn tránh ngừng hoạt động và giữ bản ghi, vì các thay đổi trước đây đã làm hỏng dịch vụ. Cả hai đều đúng. Bất đồng thường là về cách kiểm soát rủi ro: bằng phê duyệt trước thay đổi, hay bằng chất lượng của thay đổi và tốc độ phục hồi.

Thực hành này được gọi là kích hoạt thay đổi trong ITIL 4. Cái tên mới là một tuyên bố về mục đích. Mục tiêu là cho phép các thay đổi có lợi xảy ra, không phải ngăn các thay đổi. Các phiên bản ITIL cũ gọi thực hành này là quản lý thay đổi và cho nó một vai trò mạnh trong phê duyệt và lịch trình, điều mà nhiều nhóm trải nghiệm như một cổng chắn.

Chủ đề này dùng bằng chứng tốt nhất hiện có: hướng dẫn của chương trình nghiên cứu DORA về phê duyệt thay đổi và các chỉ số giao phần mềm của nó, đọc từ chính các trang của chương trình. Các trang của DORA báo cáo rằng phê duyệt bên ngoài nặng nề có liên hệ với hiệu suất giao hàng kém hơn. Chúng cũng không đưa kích thước hiệu ứng hay chi tiết thống kê, và chúng viện dẫn một báo cáo năm 2019 cho nghiên cứu nền tảng, nên hãy coi hướng dẫn là mạnh nhưng chưa phải cuối cùng và thử nó trong bối cảnh của chính bạn. Từ vựng ITIL ở đây đến từ các mô tả được xuất bản rộng rãi mà cuốn sách này không thể đối chiếu với văn bản của chủ sở hữu khung (xem Chủ đề 2.2 — ITIL).

## Các khái niệm cốt lõi

### Kích hoạt thay đổi làm gì

Một **thay đổi** là việc thêm, sửa đổi hay loại bỏ bất cứ thứ gì có thể ảnh hưởng đến một dịch vụ. Kích hoạt thay đổi là thực hành bảo đảm các thay đổi được đánh giá, ủy quyền và lên lịch để rủi ro được quản lý và các thay đổi có lợi tiến hành. Thực hành này cũng giữ bản ghi về điều gì đã thay đổi, điều sống còn cho ứng phó sự cố vì nhiều sự cố bắt đầu từ một thay đổi gần đây (xem Chủ đề 3.2 — Quản lý sự cố).

### Các loại thay đổi

ITIL 4 được mô tả rộng rãi là nhận ra ba loại thay đổi, mỗi loại có một con đường khác nhau:

| Loại | Nó là gì | Con đường điển hình |
|---|---|---|
| **Thay đổi tiêu chuẩn** | Một thay đổi rủi ro thấp, được hiểu rõ theo một quy trình đã ghi chép | Được ủy quyền trước; được ghi lại, không cần phê duyệt từng trường hợp |
| **Thay đổi thông thường** | Một thay đổi cần đánh giá và ủy quyền | Được đánh giá rủi ro và tác động, rồi được người hoặc nhóm phù hợp ủy quyền |
| **Thay đổi khẩn cấp** | Một thay đổi phải thực hiện gấp, chẳng hạn để khôi phục dịch vụ | Ủy quyền nhanh, với rà soát đầy đủ hơn sau đó |

Tên gọi và định nghĩa chính xác nên được kiểm tra với các ấn phẩm của chủ sở hữu. Nguyên tắc thì ổn định: khớp mức kiểm soát với rủi ro.

### Thẩm quyền thay đổi

Mỗi loại thay đổi cần ai đó có thẩm quyền phê duyệt nó. Trong thực hành cũ, đây thường là một hội đồng tư vấn thay đổi (CAB). Trang của DORA không bãi bỏ CAB; nó gợi ý một vai trò "chiến lược", điều phối giữa các nhóm, hỗ trợ cải tiến quy trình và đưa ra các quyết định đánh đổi kinh doanh như thời gian ra thị trường so với rủi ro. Với các thay đổi thường lệ, nó nói, phê duyệt được thực hiện tốt nhất bằng đánh giá đồng cấp trong lúc phát triển, được hỗ trợ bằng tự động hóa.

### DORA báo cáo gì về phê duyệt

Trang của DORA về việc tinh giản phê duyệt thay đổi nói:

- Phê duyệt bên ngoài nặng nề, như CAB hay chữ ký của quản lý cấp cao, có liên hệ với hiệu suất giao phần mềm kém hơn.
- Trang không báo cáo bằng chứng nào cho thấy rà soát bên ngoài chính thức hơn làm giảm tỷ lệ thay đổi thất bại.
- Nó lập luận rằng phê duyệt nặng nề làm chậm giao hàng, dẫn đến các bản phát hành lớn hơn, thưa hơn với rủi ro cao hơn, và nói dữ liệu của nó ủng hộ giả thuyết này.

Trang nêu các cạm bẫy: dựa vào một CAB trung tâm để bắt lỗi, áp dụng cùng một quy trình phê duyệt cho mọi thay đổi bất kể rủi ro, không cải tiến quy trình theo các chỉ số, và thêm quy trình và phê duyệt để đáp lại sự bất ổn của sản xuất, điều nó nói có xu hướng làm mọi thứ tệ hơn. "Không tìm thấy bằng chứng" nghĩa là không tìm thấy bằng chứng về lợi ích; nó không chứng minh rằng rà soát bên ngoài không có tác dụng. Trang không đưa tiêu chí cho thế nào là thay đổi rủi ro cao, không có hướng dẫn cho các quy định cụ thể và không có kế hoạch chuyển đổi cho các ngành được quản lý.

### Giải pháp thay thế: kiểm soát trong pipeline

DORA gợi ý đáp ứng phân tách nhiệm vụ qua đánh giá đồng cấp được ghi trong nền tảng phát triển, và dùng kiểm thử liên tục, tích hợp liên tục và giám sát để phát hiện, ngăn ngừa và sửa các thay đổi xấu sớm. Nó cũng gợi ý coi nền tảng là một sản phẩm cho lập trình viên phản hồi nhanh về bảo mật, hiệu năng, độ ổn định và lỗi, đánh dấu các thay đổi rủi ro cao để xem xét thêm, và làm cho quy trình thay đổi thông thường đủ nhanh để xử lý các trường hợp khẩn cấp. Sự kiểm soát nằm ở bằng chứng mà pipeline tạo ra: ai đã rà soát, những kiểm thử nào đạt, cái gì đã được triển khai và có thể hoàn tác nó thế nào.

### Đo lường thay đổi

Trang của DORA về các chỉ số hiệu suất giao phần mềm liệt kê năm thước đo:

| Thước đo | Nó là gì | Nhóm |
|---|---|---|
| Thời gian chờ giao của thay đổi (change lead time) | Thời gian từ khi một thay đổi được commit vào kiểm soát phiên bản đến khi được triển khai lên sản xuất | Thông lượng |
| Tần suất triển khai | Các lần triển khai xảy ra bao lâu một lần | Thông lượng |
| Thời gian phục hồi sau triển khai thất bại | Mất bao lâu để phục hồi từ một lần triển khai thất bại và cần can thiệp ngay | Thông lượng |
| Tỷ lệ thay đổi thất bại | Phần các lần triển khai cần can thiệp ngay, như hoàn tác hoặc bản vá nóng | Bất ổn |
| Tỷ lệ triển khai phải làm lại | Phần các lần triển khai ngoài kế hoạch và là kết quả của một sự cố sản xuất | Bất ổn |

Trang nói tốc độ và độ ổn định không phải là đánh đổi: các thước đo tương quan với nhau với hầu hết các nhóm, và các nhóm hàng đầu làm tốt cả năm. Nó cảnh báo không đặt các thước đo làm mục tiêu (luật Goodhart), không dựa vào một chỉ số, không so sánh các ứng dụng rất khác nhau và không cạnh tranh với các nhóm khác. Nó gợi ý các nhóm cải thiện so với hiệu suất quá khứ của chính mình. Trang không đưa ngưỡng chuẩn hay công thức, nên hãy định nghĩa từng thước đo cho bối cảnh của chính bạn trước khi dùng (xem Chủ đề 5.6 — Chỉ số và đo lường).

### Bản ghi và góc nhìn cấu hình

Một bản ghi thay đổi nên nói điều gì đã đổi, vì sao, ai phê duyệt và khi nào được thực hiện, và lý tưởng là nối với các dịch vụ bị ảnh hưởng. Các công cụ kiểm soát phiên bản, build và triển khai có thể tạo ra phần lớn điều này tự động. Nối thay đổi với cấu hình của các dịch vụ hỗ trợ phân tích tác động và ứng phó sự cố (xem Chủ đề 4.4 — Quản lý cấu hình).

### Thay đổi và phát hành

Kích hoạt thay đổi quyết định một thay đổi có được tiến hành không. Quản lý phát hành và triển khai đưa nó vào sản xuất (xem Chủ đề 3.5 — Quản lý phát hành và triển khai). Trong giao hàng liên tục, hai việc này hợp nhất trong thực tế, với các phê duyệt được nhúng vào pipeline.

## Thực hành tốt

1. **Phân loại thay đổi theo rủi ro.** Định nghĩa một danh sách ngắn các loại thay đổi, với tiêu chí và ví dụ. Khớp con đường với rủi ro, để thay đổi thường lệ nhanh và thay đổi rủi ro được chú ý.
2. **Ủy quyền trước cho thay đổi rủi ro thấp.** Với các thay đổi được hiểu rõ, đã kiểm thử và có thể hoàn tác, hãy thống nhất một quy trình tiêu chuẩn và để chúng tiến hành mà không cần phê duyệt từng trường hợp. Ghi lại chúng tự động.
3. **Biến đánh giá đồng cấp thành phê duyệt mặc định.** Yêu cầu một người thứ hai rà soát thay đổi trước khi hợp nhất, và ghi lại việc rà soát trong nền tảng phát triển. Điều này đáp ứng phân tách nhiệm vụ cho hầu hết các thay đổi, như trang của DORA mô tả.
4. **Tự động hóa các kiểm tra.** Chạy kiểm thử, quét bảo mật và kiểm tra chính sách trên mọi thay đổi, và biến kết quả thành một phần của bản ghi. Một phê duyệt dựa trên bằng chứng mạnh hơn một phê duyệt dựa trên biểu mẫu.
5. **Giữ thay đổi nhỏ.** Thay đổi nhỏ dễ rà soát, kiểm thử và hoàn tác hơn. Nếu một thay đổi có vẻ rủi ro, hãy hỏi nó có thể chia nhỏ không.
6. **Làm cho hoàn tác dễ và được diễn tập.** Với mỗi loại thay đổi, biết cách hoàn tác nó, và luyện tập. Khả năng phục hồi nhanh làm giảm nhu cầu dự đoán mọi lỗi.
7. **Đánh dấu các thay đổi rủi ro cao.** Định nghĩa các tín hiệu, như thay đổi logic thanh toán hay hạ tầng dùng chung, kích hoạt rà soát thêm. Chỉ áp dụng con đường nặng hơn cho chúng.
8. **Cho thẩm quyền thay đổi một vai trò chiến lược.** Dùng bất kỳ hội đồng trung tâm nào để điều phối giữa các nhóm, giải quyết xung đột và đưa ra các đánh đổi kinh doanh. Đừng dùng nó như một trạm kiểm soát cho mọi thay đổi.
9. **Xử lý khẩn cấp bằng con đường thông thường.** Làm cho quy trình thường lệ đủ nhanh và đáng tin để các thay đổi khẩn cấp đi theo nó, với rà soát sau đó. Đường khẩn cấp được dùng thường xuyên là dấu hiệu con đường thông thường quá chậm.
10. **Đừng mặc định thêm phê duyệt sau một sự cố.** Trang của DORA nói thêm quy trình để đáp lại sự bất ổn có xu hướng làm mọi thứ tệ hơn. Hãy hỏi trước xem bản sửa tốt hơn là kiểm thử tốt hơn, thay đổi nhỏ hơn hay phục hồi nhanh hơn.
11. **Đo quy trình.** Theo dõi thời gian chờ giao, thời gian chờ phê duyệt, phần thay đổi đi qua mà không cần phê duyệt thủ công và tỷ lệ thay đổi thất bại. Dùng các thước đo để cải tiến, không để xếp hạng các nhóm.
12. **Giải thích quy trình.** Trang của DORA lưu ý rằng truyền đạt rõ ràng quy trình hiện có và giúp các nhóm đi theo nó có liên hệ với hiệu suất tốt hơn ngay cả trước khi bạn đổi nó. Công bố một hướng dẫn một trang kèm ví dụ.

## Câu hỏi để thảo luận với nhóm của bạn

**Bao nhiêu phần các thay đổi của chúng ta là rủi ro thấp và được hiểu rõ, và hiện nay chúng được phê duyệt thế nào?**

Lấy một tháng thay đổi và phân loại chúng. Hầu hết các nhóm thấy phần lớn là thường lệ. Hỏi các thay đổi thường lệ chờ phê duyệt bao lâu và người phê duyệt thêm vào điều gì. Người điều phối có thể hỏi có ai nhớ một thay đổi thường lệ mà phê duyệt đã ngăn không cho thất bại không. Dùng câu trả lời để xác định ứng viên đầu tiên cho ủy quyền trước.

**Bước phê duyệt của chúng ta thực sự bắt được gì?**

Liệt kê mười thay đổi gần nhất bị từ chối hoặc trì hoãn ở khâu phê duyệt và vì sao. So sánh với các vấn đề đã đến sản xuất bất chấp phê duyệt. Nếu phê duyệt bắt được ít, hãy hỏi điều gì sẽ bắt được cùng những vấn đề đó sớm hơn, như kiểm thử hay đánh giá đồng cấp. Nhớ rằng trang của DORA không báo cáo bằng chứng nào cho thấy rà soát bên ngoài chính thức hơn làm giảm tỷ lệ thay đổi thất bại. Thống nhất một thay đổi để thử.

**Chúng ta sẽ hoàn tác một thay đổi xấu thế nào, và nhanh đến đâu?**

Chọn một thay đổi gần đây và mô tả cách hoàn tác. Nếu nó không rõ, chưa được kiểm thử hay thủ công, đó là rủi ro. Hỏi mất bao lâu và ai sẽ làm. Thống nhất diễn tập một lần hoàn tác trong tháng này. Một nhóm có thể phục hồi trong vài phút có thể chấp nhận nhiều thay đổi hơn.

**Những thay đổi nào của chúng ta cần xem xét thêm, và làm sao chúng ta nhận ra chúng?**

Thu thập ví dụ về các thay đổi đã gây sự cố nghiêm trọng. Tìm các đặc điểm chúng chia sẻ: hạ tầng dùng chung, kiểm soát bảo mật, di chuyển dữ liệu. Soạn ba tín hiệu sẽ đánh dấu một thay đổi là rủi ro cao. Hỏi ai nên rà soát các thay đổi được đánh dấu và nhanh đến đâu.

**Lần nào chúng ta thêm một kiểm soát sau một sự cố, và nó có giúp không?**

Xin các ví dụ. Liệt kê cái gì đã được thêm, vấn đề nó xử lý và vấn đề có tái diễn không. Trang của DORA nêu việc thêm phê duyệt để đáp lại sự bất ổn là một cạm bẫy. Bàn xem một cách đáp khác, như kiểm thử tốt hơn hoặc thay đổi nhỏ hơn, có hiệu quả không. Ghi lại một bài học.

**Kiểm toán viên sẽ chấp nhận bằng chứng nào từ pipeline của chúng ta thay cho chữ ký?**

Mời một kiểm toán viên hoặc đồng nghiệp tuân thủ tham gia. Liệt kê bằng chứng pipeline đã tạo ra: các lần rà soát, kết quả kiểm thử, bản ghi triển khai. Hỏi còn thiếu gì. Nhiều kiểm toán viên chấp nhận đánh giá đồng cấp được ghi lại và bằng chứng tự động khi nó đáng tin. Thống nhất một mô tả ngắn về kiểm soát và một giai đoạn thử nghiệm.

## Trong thực tế: một ví dụ agile ITIL

Phòng CNTT của một bệnh viện khu vực hỗ trợ một hệ thống xếp lịch lâm sàng được cập nhật bởi một nhóm nội bộ bảy người. Mọi thay đổi, từ sửa lỗi chính tả đến di chuyển cơ sở dữ liệu, đều đi đến một hội đồng tư vấn thay đổi hằng tuần. Các bản sửa nhỏ chờ tới tám ngày. Các bác sĩ phàn nàn, và các lập trình viên bắt đầu gộp các bản sửa vào những bản phát hành lớn hơn để tránh hàng đợi, khiến mỗi bản phát hành rủi ro hơn.

Trưởng CNTT và chủ tịch hội đồng rà soát một năm thay đổi. Hầu hết là nhỏ, hai thay đổi đã gây ra sự cố, và không cái nào bị hội đồng bắt được. Họ thiết kế một cách tiếp cận ba làn. Các thay đổi tiêu chuẩn, như thay đổi văn bản và cấu hình trong giới hạn đã thống nhất, với kiểm thử tự động đạt và hoàn tác đã được kiểm thử, được ủy quyền trước và ghi nhật ký tự động. Các thay đổi thông thường cần một đánh giá đồng cấp được ghi trong nền tảng phát triển và một lần đối chiếu với danh sách ngắn các tín hiệu rủi ro cao như thay đổi cách xử lý dữ liệu bệnh nhân. Các thay đổi bị đánh dấu rủi ro cao đi đến hội đồng, họp hai lần một tuần. Các thay đổi khẩn cấp theo con đường thông thường với một buổi rà soát sau triển khai.

Sau bốn tháng, các thay đổi tiêu chuẩn lên sóng trong vòng một ngày, và hội đồng thấy khoảng một phần năm khối lượng trước đây. Tỷ lệ thay đổi thất bại không tăng. Vấn đề vẫn còn. Hai lập trình viên áp dụng các tín hiệu rủi ro cao không nhất quán và một thay đổi bị đánh dấu đến hội đồng muộn, và kiểm toán nội bộ yêu cầu bằng chứng rằng các đánh giá đồng cấp không phải là đóng dấu cho có. Nhóm viết các ví dụ cho các tín hiệu, thêm một lần rà soát lấy mẫu các đánh giá đồng cấp bởi một kỹ sư cao cấp, và thống nhất với kiểm toán xem lại bằng chứng ở cuộc họp quý tới.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối gánh phần lớn sự kiểm soát: rà soát, kiểm thử, thay đổi nhỏ và hoàn tác. Hãy xây những thứ này vào pipeline và làm cho bằng chứng nhìn thấy được. Giữ thay đổi nhỏ và nói với vận hành điều sắp đến. Dùng quy trình thay đổi như nơi chia sẻ thông tin rủi ro, không chỉ để xin phép.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành biết thay đổi nào đã làm hại dịch vụ. Hãy chia sẻ tri thức đó như các tín hiệu cho rà soát thêm, và giúp xây các kiểm tra bắt chúng sớm. Ủng hộ các con đường nhẹ hơn cho thay đổi rủi ro thấp, và giữ các bản ghi làm ứng phó sự cố nhanh hơn.

### Lãnh đạo và quản trị

Lãnh đạo quyết định tổ chức đòi bao nhiêu phê duyệt. Hướng dẫn của DORA gợi ý đòi bằng chứng về kiểm soát chứ không đòi chữ ký trên mọi thay đổi. Ủng hộ việc đo thời gian chờ giao và tỷ lệ thay đổi thất bại, và tránh thêm quy trình sau sự cố mà không xem xét nguyên nhân. Thống nhất với kiểm toán bằng chứng nào được chấp nhận.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi từ các cải tiến nhỏ, thường xuyên và ít gián đoạn lớn hơn. Hãy mong được thông báo về các thay đổi ảnh hưởng đến bạn, bằng ngôn ngữ đơn giản và từ trước. Nếu bạn có nhu cầu đặc biệt, như các giai đoạn đóng băng, hãy báo nhà cung cấp sớm để họ lên kế hoạch.

## Các kiểu thất bại thường gặp

- **Một con đường cho mọi thay đổi.** Thay đổi thường lệ xếp hàng sau thay đổi rủi ro. Thay vào đó, phân loại theo rủi ro và cho mỗi loại con đường riêng.
- **Phê duyệt là kiểm soát duy nhất.** Một chữ ký thay cho chất lượng. Thay vào đó, xây kiểm thử, rà soát và hoàn tác vào pipeline.
- **Một hội đồng rà soát điều nó không thể đánh giá.** Các thành viên phê duyệt thay đổi họ không hiểu. Thay vào đó, gửi thay đổi đến những người có tri thức, và dùng hội đồng để điều phối.
- **Gộp lô để tránh hàng đợi.** Các nhóm gộp thay đổi, khiến mỗi bản phát hành rủi ro hơn. Thay vào đó, làm hàng đợi đủ ngắn để thay đổi nhỏ là con đường dễ.
- **Thêm kiểm soát sau mỗi sự cố.** Quy trình phình ra và tốc độ giảm. Thay vào đó, tìm nguyên nhân và sửa bằng kiểm thử, thay đổi nhỏ hơn hoặc phục hồi nhanh hơn.
- **Đánh giá đồng cấp đóng dấu cho có.** Các lần rà soát mang hình thức nhưng nông. Thay vào đó, lấy mẫu các lần rà soát, chia sẻ ví dụ về những lần tốt, và giữ thay đổi đủ nhỏ để rà soát.
- **Không có hoàn tác.** Thay đổi không thể được hoàn tác. Thay vào đó, yêu cầu và diễn tập hoàn tác cho mọi loại thay đổi.
- **Gian lận chỉ số.** Các nhóm chia nhỏ thay đổi hoặc giấu thất bại để trông tốt. Thay vào đó, dùng nhiều thước đo, rà soát chúng cùng nhau và tập trung vào cải thiện theo thời gian.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Phân loại và con đường | Mọi thay đổi theo một con đường hoặc không con đường nào | Một số nhóm có đường nhanh cho thay đổi đơn giản | Các loại thay đổi có tiêu chí và con đường riêng là chuẩn | Tỷ lệ thay đổi theo con đường và thời gian chờ được đo và tinh chỉnh | Các con đường được điều chỉnh giữa các nhóm dựa trên bằng chứng chung |
| Phê duyệt và bằng chứng | Phê duyệt bằng chữ ký hoặc không được ghi | Một số thay đổi được đánh giá đồng cấp | Đánh giá đồng cấp và kiểm tra tự động được ghi cho hầu hết thay đổi | Chất lượng rà soát và bằng chứng được lấy mẫu và cải thiện | Bằng chứng chảy tự động đến kiểm toán và đối tác |
| Phục hồi | Hoàn tác tùy hứng | Một số thay đổi có bước hoàn tác | Hoàn tác được xác định và diễn tập cho từng loại thay đổi | Thời gian phục hồi được đo và giảm | Thực hành phục hồi được chia sẻ và kiểm thử giữa các nhóm và nhà cung cấp |
| Đo lường và cải tiến | Ít thước đo | Một số nhóm theo dõi thời gian chờ giao | Thời gian chờ giao, tần suất, tỷ lệ thất bại và thời gian phục hồi được theo dõi cho từng dịch vụ | Các thước đo dẫn dắt cải tiến có kế hoạch và không bị dùng làm mục tiêu | Các nhóm học từ thước đo của nhau và cải tiến trong toàn tổ chức |

## Danh mục kiểm tra

- [ ] Chúng ta đã định nghĩa các loại thay đổi với tiêu chí và ví dụ.
- [ ] Thay đổi rủi ro thấp, được hiểu rõ được ủy quyền trước và ghi tự động.
- [ ] Đánh giá đồng cấp được ghi trong nền tảng phát triển cho các thay đổi thông thường.
- [ ] Kiểm thử và kiểm tra tự động chạy trên mọi thay đổi.
- [ ] Mỗi loại thay đổi có một hoàn tác đã được diễn tập.
- [ ] Chúng ta có các tín hiệu đánh dấu thay đổi rủi ro cao để xem xét thêm.
- [ ] Bất kỳ hội đồng trung tâm nào cũng có vai trò rõ ràng trong điều phối và đánh đổi.
- [ ] Chúng ta theo dõi thời gian chờ giao của thay đổi, tần suất triển khai, thời gian phục hồi sau triển khai thất bại và tỷ lệ thay đổi thất bại cho từng dịch vụ.
- [ ] Kiểm toán viên của chúng ta đã nói họ chấp nhận bằng chứng nào thay cho chữ ký.
- [ ] Chúng ta có một hướng dẫn một trang về quy trình thay đổi kèm ví dụ.

## Lời nhắc AI

**Mục đích: phân loại các thay đổi của tháng trước theo rủi ro và con đường phê duyệt.**

```text
Below is a list of the changes we made last month: [paste one line per change with a short description, who reviewed it, how long it waited for approval, and whether it caused an incident; remove personal data].

Help me sort them into three groups: routine and low risk, needs normal assessment, and needs extra scrutiny. For each group, say what features of the changes in my list led you to the grouping, using only the text. Calculate the share in each group and the average wait for approval from my numbers only. Suggest which routine changes might be pre-authorized and what safeguards I would want first. Do not guess at risks beyond what I wrote. List what you are unsure of.
```

**Mục đích: viết một quy trình thay đổi tiêu chuẩn.**

```text
Help me write a procedure for a standard (pre-authorized) change: [name the change, for example "update a configuration value within agreed limits"].

How it is done today, step by step: [paste].
Checks that exist: [tests, scans, reviews].
How to undo it: [describe, or write "unknown"].
Who owns the procedure: [role].

Write a one-page procedure with: when it applies, the criteria that make a change standard, the steps, the checks that must pass, how it is recorded, how to undo it, and when to treat it as a normal change instead. Mark every statement you added as an assumption. Do not claim any rule requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị bàn với kiểm toán viên về bằng chứng mà pipeline của chúng ta tạo ra.**

```text
An auditor asks how we authorize changes. Our pipeline does the following: [describe code review, tests, scans, deployment record, who can approve, and where records are kept].

The auditor's concern in their words: [paste, or write "unknown"].
Rules we know apply, with source text if you have it: [paste, or write "none known"].

Make a table of what evidence each step produces, where it is stored, who can alter it, and what gaps the auditor may notice. Suggest three lightweight ways to strengthen the weakest points. Do not state that any standard requires something unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Mục đích: thiết kế một thử nghiệm phê duyệt nhẹ hơn.**

```text
Design a three-month trial of lighter approval for [service].

Current process: [describe].
Change volume and types last quarter: [paste counts from your records].
Measures we already have: [list, for example lead time and change fail rate].
Concerns from audit or operations: [list].

Propose: which change types to include, safeguards, what to measure and how often (without inventing targets), what would make us stop or pause the trial, and how to report results. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [change-request](../../../../skills/change-request/SKILL.md): dùng để soạn bản ghi thay đổi mang những gì vận hành và kiểm toán viên cần.
- [enterprise-change-management](../../../../skills/enterprise-change-management/SKILL.md): dùng khi một thay đổi mang tính tổ chức và cần lập kế hoạch cho con người cũng như hệ thống.
- [release-notes](../../../../skills/release-notes/SKILL.md): dùng để nói với người dùng và bàn dịch vụ một thay đổi làm gì.
- [two-way-door-decisions](../../../../skills/two-way-door-decisions/SKILL.md): dùng để phân biệt các quyết định có thể đảo ngược, ra nhanh được, với các quyết định không thể đảo ngược cần cẩn trọng hơn.
- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi và rà soát các rủi ro mà thay đổi đưa vào và cách chúng được kiểm soát.

## Nguồn chính

- **Streamlining change approval** (DORA, dora.dev): hướng dẫn của chương trình nghiên cứu về đánh giá đồng cấp, tự động hóa và vai trò của hội đồng thay đổi.
- **DORA's software delivery performance metrics** (dora.dev): định nghĩa và lưu ý cho thời gian chờ giao của thay đổi, tần suất triển khai, thời gian phục hồi, tỷ lệ thay đổi thất bại và tỷ lệ làm lại.
- **ITIL** (Wikipedia): bối cảnh về các phiên bản ITIL và sự chuyển sang ITIL 4.
- **Continuous delivery** (Wikipedia): bối cảnh về các thực hành làm cho thay đổi nhỏ, thường xuyên trở nên an toàn.

## Tài liệu tham khảo

1. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
2. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Separation of duties — Wikipedia — https://en.wikipedia.org/wiki/Separation_of_duties
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
