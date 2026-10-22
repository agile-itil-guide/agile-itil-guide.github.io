# Quản lý yêu cầu dịch vụ

**Quản lý yêu cầu dịch vụ xử lý những thứ thường lệ mà người dùng xin, như quyền truy cập, thiết bị và thông tin, và mục tiêu agile là làm cho mỗi yêu cầu phổ biến nhanh, dễ dự đoán và phần lớn tự động để những người giỏi dành thời gian cho các vấn đề.**

## Vì sao điều này quan trọng

Phần lớn công việc đến bàn dịch vụ hoàn toàn không phải là một thất bại. Đó là một người dùng xin thứ mà dịch vụ vốn để cung cấp: một tài khoản mới, quyền truy cập một thư mục, một laptop, một giấy phép, một lần đặt lại mật khẩu. Những yêu cầu này dễ dự đoán và lặp đi lặp lại. Xử lý tốt thì chúng nhanh và không ai để ý. Xử lý tệ thì chúng là nguồn của những lần chờ dài, câu hỏi lặp lại và sự bực bội âm ỉ làm hại danh tiếng của một nhóm hơn bất kỳ sự cố ngừng hoạt động đơn lẻ nào.

Xử lý yêu cầu cũng là nơi tự động hóa và tự phục vụ đem lại lợi ích nhiều nhất. Một yêu cầu theo cùng các bước mỗi lần có thể được thiết kế một lần, kiểm thử và phần lớn tự động hóa. [Bài viết Wikipedia về quản lý dịch vụ CNTT](https://en.wikipedia.org/wiki/IT_service_management) định nghĩa một yêu cầu dịch vụ là một yêu cầu thường lệ về một dịch vụ và liệt kê tự động hóa quy trình CNTT, thay các bước thủ công thường lệ bằng bước tự động để nhân viên tập trung vào công việc ưu tiên cao hơn. Đó là mục đích của thực hành này trong một câu.

Bài viết đưa ít hơn về yêu cầu. Vì vậy chủ đề này kết hợp định nghĩa đó với hướng dẫn thực tế rút từ thực hành quản lý dịch vụ được dùng rộng rãi, được đưa ra như vậy, và với các chủ đề khác của cuốn sách về bàn dịch vụ, danh mục dịch vụ (ITIL viết là "service catalogue") và tri thức. Khi một điều là thực hành phổ biến chứ không phải phát hiện từ một nguồn, văn bản nói rõ.

## Các khái niệm cốt lõi

### Yêu cầu dịch vụ là gì

Một **yêu cầu dịch vụ** là một yêu cầu thường lệ về thứ mà một dịch vụ thường cung cấp. Nó khác với một **sự cố**, là một sự gián đoạn hay gián đoạn tiềm tàng của một dịch vụ, và khác với một **thay đổi**, là điều sửa đổi một dịch vụ (xem Chủ đề 3.2 — Quản lý sự cố và Chủ đề 3.4 — Kích hoạt thay đổi). Ranh giới có thể mờ: "Tôi cần quyền truy cập hệ thống tài chính" là một yêu cầu; "Tôi có quyền truy cập nhưng hệ thống báo lỗi" là một sự cố; "thêm một trường mới vào hệ thống tài chính" có lẽ là một thay đổi.

Một phép thử thực tế: nếu công việc theo một quy trình đã biết, có chi phí và rủi ro đã biết, và câu trả lời cho "việc này có được phép không?" đã được quyết định từ trước, thì đó là một yêu cầu. Bất cứ thứ gì cần phán đoán mới về rủi ro có nhiều khả năng là một thay đổi hay một dự án.

### Vì sao sự phân biệt quan trọng

Trộn yêu cầu với sự cố làm méo cả hai. Số đếm "ticket" làm mờ hai loại nhu cầu khác nhau. Ưu tiên va chạm nhau, vì một sự cố làm ngừng công việc nên đến trước một yêu cầu có thể chờ. Thước đo phản hồi gây hiểu lầm: thời gian đóng trung bình dài có thể che giấu rằng yêu cầu chờ phê duyệt trong khi sự cố được sửa nhanh. Giữ hai thứ tách biệt cho phép bạn đặt mục tiêu phù hợp và thấy sự chậm trễ nằm ở đâu (xem Chủ đề 2.1 — Quản lý dịch vụ CNTT).

### Mô hình yêu cầu

Một **mô hình yêu cầu** là một mẫu lặp lại được cho một loại yêu cầu: cần thông tin gì, ai phải phê duyệt, bước nào do ai hoặc do tự động hóa làm và thời gian dự kiến là bao lâu. Mô hình yêu cầu là một ý tưởng được dùng rộng rãi trong quản lý dịch vụ. Chúng cho một nhóm cách thiết kế các yêu cầu phổ biến một lần và chạy chúng nhiều lần. Một danh mục dịch vụ liệt kê các yêu cầu có sẵn (xem Chủ đề 3.8 — Quản lý danh mục dịch vụ).

Một mô hình cho "laptop cho người mới vào làm" có thể nêu: thông tin cần từ quản lý, phê duyệt (không có, nếu vai trò nằm trong danh sách chuẩn), các bước (đặt hàng, cấu hình, giao) và thời gian dự kiến. Một mô hình cho "quyền truy cập hệ thống hạn chế" sẽ gồm phê duyệt của chủ sở hữu hệ thống và một bản ghi cho kiểm toán.

### Phê duyệt

Một số yêu cầu cần phê duyệt trước khi tiến hành: chi tiêu, truy cập dữ liệu nhạy cảm hoặc dùng nguồn lực khan hiếm. Câu hỏi khi thiết kế là phê duyệt có thêm kiểm soát thực sự không. Một phê duyệt luôn nói đồng ý là một sự chậm trễ. Ở nơi cần phê duyệt, hãy làm chúng nhanh và nhìn thấy được, nói với người phê duyệt chính xác điều gì đang được hỏi và đưa ra phương án dự phòng nếu họ không phản hồi. Khi phê duyệt phụ thuộc vào vai trò, như một quản lý phê duyệt yêu cầu của thành viên nhóm, hãy cân nhắc phê duyệt trước các mục tiêu chuẩn cho vai trò đó.

### Đáp ứng và tự động hóa

Đáp ứng là công việc giao yêu cầu. Bài viết về ITSM mô tả tự động hóa quy trình CNTT là tự động hóa các tác vụ thường lệ để nhân viên tập trung vào công việc ưu tiên cao hơn. Ứng viên để tự động hóa là các yêu cầu thường xuyên, theo quy trình ổn định và rủi ro thấp: đặt lại mật khẩu, tư cách thành viên nhóm, cài phần mềm chuẩn. Tự động hóa nên được xây với cùng sự cẩn trọng như bất kỳ thay đổi nào, với kiểm thử và cách để thấy nó đã làm gì.

### Tự phục vụ

Nhiều tổ chức cung cấp một cổng thông tin nơi người dùng có thể tìm dịch vụ họ cần, thấy thông tin nào được yêu cầu và gửi yêu cầu mà không cần nói chuyện với ai. Tự phục vụ tốt phụ thuộc vào một danh sách dịch vụ rõ ràng viết bằng lời của người dùng và các biểu mẫu rõ ràng. Một cổng thông tin phản chiếu sơ đồ tổ chức và hỏi thông tin mà người dùng không có sẽ đẩy mọi người quay lại email và điện thoại.

### Quản lý dịch vụ doanh nghiệp

Bài viết về ITSM lưu ý rằng quản lý dịch vụ doanh nghiệp áp dụng công cụ và ý tưởng ITSM cho các lĩnh vực kinh doanh khác như nhân sự hay cơ sở vật chất. Quản lý yêu cầu là nơi dễ bắt đầu nhất, vì nhiều chức năng nhận yêu cầu thường lệ: đón nhân viên mới, đi công tác, thiết bị, chuyển văn phòng. Một nền tảng yêu cầu chung có thể phục vụ nhiều chức năng, mỗi chức năng có mô hình yêu cầu và chủ sở hữu riêng.

### Thước đo

Các thước đo phổ biến gồm yêu cầu mất bao lâu từ lúc gửi đến lúc được đáp ứng, người yêu cầu phải quay lại với câu hỏi bao nhiêu lần, bao nhiêu yêu cầu được đáp ứng mà không cần công sức con người và mức hài lòng của người yêu cầu. Như với mọi thước đo, hãy tránh các mục tiêu thưởng cho việc đóng yêu cầu sớm. Hãy tìm thời gian chờ, vì phần lớn thời gian trôi qua của một yêu cầu thường là chờ phê duyệt hay thông tin, không phải làm việc (xem Chủ đề 1.7 — Phát triển phần mềm Lean và Chủ đề 5.6 — Chỉ số và đo lường).

### Bảo mật và tuân thủ

Yêu cầu thường kiểm soát quyền truy cập và chi tiêu, nên chúng có hàm ý về bảo mật và kiểm toán. Bản ghi nên cho thấy ai xin, ai phê duyệt, điều gì đã làm và khi nào. Hãy gỡ quyền truy cập khi không còn cần, như một phần của mô hình yêu cầu cho người nghỉ việc, không phải việc nghĩ sau (xem Chủ đề 3.13 — Quản lý an toàn thông tin).

## Thực hành tốt

1. **Bắt đầu với các yêu cầu phổ biến nhất.** Liệt kê mười yêu cầu hàng đầu theo khối lượng từ bản ghi của bạn. Thiết kế chúng trước. Vài mô hình được thiết kế tốt bao phủ phần lớn nhu cầu.
2. **Định nghĩa một mô hình yêu cầu cho mỗi cái.** Viết cần thông tin gì, ai phê duyệt, các bước, ai làm mỗi bước và thời gian dự kiến. Giữ mỗi mô hình trong một trang.
3. **Dùng lời của người dùng.** Đặt tên yêu cầu như người dùng sẽ gọi ("Xin một laptop mới", không phải "Loại yêu cầu cấp phát phần cứng số 2"). Thử các tên với người dùng.
4. **Chỉ hỏi những gì bạn cần.** Mỗi trường trên biểu mẫu nên có một mục đích. Lấy những gì có thể từ các hệ thống bạn đã có, như phòng ban của người dùng, thay vì hỏi người dùng.
5. **Phê duyệt trước những gì thường lệ.** Thống nhất với người phê duyệt một danh sách chuẩn các mục và vai trò không cần phê duyệt từng trường hợp. Rà soát danh sách định kỳ.
6. **Làm cho phê duyệt thật dễ và nhanh.** Cho người phê duyệt thấy điều đang được hỏi và vì sao, cho phép phê duyệt từ điện thoại hay email, và đặt nhắc nhở tự động cùng một người thay thế khi vắng mặt.
7. **Tự động hóa những gì ổn định và thường xuyên.** Chọn các yêu cầu theo cùng các bước mỗi lần và rủi ro thấp. Kiểm thử tự động hóa và ghi lại nó đã làm gì.
8. **Giữ một đường có người.** Cho phép người dùng xin giúp đỡ khi một biểu mẫu không khớp nhu cầu của họ. Coi những trường hợp đó là phản hồi về mô hình.
9. **Tách yêu cầu khỏi sự cố và thay đổi.** Cho mỗi loại danh mục, hàng đợi và thước đo riêng. Dạy bàn dịch vụ phân loại lại khi một yêu cầu hóa ra là một lỗi hay một thay đổi.
10. **Theo dõi các lần chờ.** Đo thời gian chờ phê duyệt hay thông tin, không chỉ tổng thời gian. Chọn lần chờ dài nhất để giảm trước.
11. **Khép vòng với người yêu cầu.** Xác nhận hoàn tất, hỏi nó có hiệu quả không, và đưa ra cách nói nếu không. Một yêu cầu được đánh dấu xong mà chưa giao còn tệ hơn một yêu cầu vẫn mở.
12. **Rà soát danh mục yêu cầu định kỳ.** Cho ngừng các yêu cầu không ai làm, gộp các bản gần trùng và thêm cái mới từ bằng chứng (xem Chủ đề 3.8 — Quản lý danh mục dịch vụ).

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta xử lý những yêu cầu nào thường nhất, và mỗi cái mất bao lâu từ đầu đến cuối?**

Lấy mười yêu cầu hàng đầu của quý trước và lần theo thời gian trôi qua của từng cái. Đánh dấu mỗi yêu cầu chờ ở đâu. Điều bất ngờ thường là phần lớn thời gian là chờ, không phải làm việc. Hỏi ai đang chờ ai. Người điều phối có thể hỏi yêu cầu nào dễ cải thiện trước nhất.

**Phê duyệt nào trong các yêu cầu của chúng ta chưa bao giờ nói không?**

Rà soát một mẫu phê duyệt và đếm số lần từ chối. Một phê duyệt không bao giờ từ chối có thể là một sự chậm trễ không có lợi ích. Hỏi phê duyệt để làm gì, và ai được lợi. Một số phê duyệt tồn tại cho kiểm toán hay trách nhiệm giải trình, một mục đích chính đáng có thể được đáp ứng nhẹ hơn, như thông báo cho người phê duyệt sau sự việc. Chọn một cái để đơn giản hóa.

**Người dùng phải nói với chúng ta những gì mà chúng ta đã biết?**

Nhìn một biểu mẫu yêu cầu và đánh dấu các trường mà câu trả lời đã có trong hệ thống khác. Mỗi trường như vậy là công sức của người dùng và là nguồn sai sót. Hỏi cần gì để điền sẵn chúng. Chọn một trường để bỏ hoặc điền sẵn.

**Yêu cầu nào của chúng ta có thể làm được mà không cần ai động tay?**

Liệt kê các yêu cầu theo một quy trình cố định. Với mỗi cái, hỏi điều gì ngăn tự động hóa: công cụ, quyền truy cập, nỗi sợ sai sót. Bàn những biện pháp bảo vệ sẽ làm tự động hóa chấp nhận được, như giới hạn và nhật ký. Chọn một cái để tự động hóa như một thí nghiệm.

**Người dùng biết mình có thể xin những gì bằng cách nào?**

Hỏi vài người dùng họ sẽ xin một thứ bất thường thế nào. Nếu câu trả lời là "hỏi người nào đó tôi quen", danh sách dịch vụ không hoạt động. Bàn cách trình bày danh sách và liệu các tên có hợp lý với người dùng không. Thử một bản nháp với hai hoặc ba người dùng.

**Khi một yêu cầu hóa ra là thứ khác, chuyện gì xảy ra?**

Thu thập các ví dụ về yêu cầu thực ra là sự cố hay thay đổi. Hỏi việc phân loại nhầm tốn bao lâu. Bàn cách bàn dịch vụ nhận ra và phân loại lại, và biểu mẫu yêu cầu có giúp người dùng chọn đúng không. Thống nhất một bước phân loại lại đơn giản.

## Trong thực tế: một ví dụ agile ITIL

Một văn phòng thống kê quốc gia có 3.000 nhân viên và một phòng CNTT 80 người. Nhân viên mới thường chờ mười ngày để có một laptop và tài khoản hoạt động, và các quản lý phàn nàn rằng người mới ngồi không. Bàn dịch vụ xử lý các yêu cầu đón nhân viên mới như những ticket riêng lẻ, mỗi trong năm nhóm thực hiện một bước rồi chuyển ticket đi.

Một trưởng cải tiến vẽ một yêu cầu đón nhân viên. Cô thấy công việc thực sự mất khoảng ba giờ và phần còn lại là chờ: chờ quản lý cung cấp chi tiết, chờ phê duyệt ngân sách cho một laptop chuẩn và chờ mỗi nhóm để ý đến ticket. Nhóm thiết kế một mô hình yêu cầu cho người mới vào làm. Quản lý điền một biểu mẫu ngắn ba tuần trước ngày bắt đầu, với hầu hết các trường được điền từ hệ thống nhân sự. Laptop và tài khoản chuẩn cho vai trò được phê duyệt trước. Một script tạo tài khoản và nhóm; phần cứng được đặt hàng tự động từ danh sách tồn kho; bàn dịch vụ nhận một danh sách tác vụ duy nhất. Quản lý của người mới nhận các cập nhật và một xác nhận.

Sau hai tháng, thời gian trung vị từ yêu cầu đến laptop sẵn sàng giảm xuống ba ngày khi biểu mẫu được nộp đúng hạn. Một số khó khăn còn lại. Khoảng một phần ba số quản lý vẫn nộp biểu mẫu muộn, nên người mới vẫn phải chờ, và script lỗi khi hồ sơ nhân sự thiếu mã phòng ban, tạo ra công việc sửa tay. Nhóm thêm một nhắc nhở vào danh mục kiểm tra đón nhân viên của nhân sự, thiết lập một cảnh báo cho các script lỗi và bắt đầu nói chuyện với nhân sự về việc cải thiện dữ liệu. Họ cũng giữ một đường có người cho các vai trò không khớp danh sách chuẩn.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối thường nhận những yêu cầu thực ra là thay đổi: một trường mới, một báo cáo mới. Hãy giúp bàn dịch vụ nhận ra chúng và định tuyến chúng vào backlog của bạn. Ở nơi yêu cầu cho dịch vụ của bạn thường xuyên, như quyền truy cập, hãy xây một đường tự phục vụ với giới hạn và nhật ký rõ ràng.

### Nhóm dịch vụ và vận hành

Vận hành và bàn dịch vụ sở hữu hầu hết các mô hình yêu cầu. Thiết kế những mô hình phổ biến trước, loại bỏ thời gian chờ và tự động hóa ở nơi an toàn. Bảo vệ thời gian để xây và rà soát mô hình, vì công việc yêu cầu dễ chèn ép công việc cải tiến. Chia sẻ dữ liệu về thời gian chờ với người phê duyệt và quản lý.

### Lãnh đạo và quản trị

Lãnh đạo và người phê duyệt định hình phần lớn thời gian chờ. Hãy hỏi phê duyệt nào thêm kiểm soát và phê duyệt nào thêm chậm trễ, và chấp nhận phê duyệt trước ở nơi rủi ro thấp. Ủng hộ một nền tảng yêu cầu chung giữa các chức năng, và yêu cầu các thước đo thời gian chờ thay vì số lượng ticket.

### Khách hàng và người dùng

Người dùng được lợi từ tên rõ ràng, biểu mẫu ngắn và ước lượng trung thực. Hãy cung cấp thông tin đầy đủ khi bạn xin, và nói khi nào việc khẩn và vì sao. Hãy nói với nhóm khi một yêu cầu không giao được điều bạn cần, vì điều đó cải thiện mô hình cho người tiếp theo.

## Các kiểu thất bại thường gặp

- **Coi yêu cầu là sự cố hoặc ngược lại.** Ưu tiên và báo cáo bị méo. Thay vào đó, tách chúng và dạy cách phân loại lại.
- **Biểu mẫu hỏi quá nhiều.** Người dùng bỏ cổng thông tin. Thay vào đó, chỉ hỏi những gì cần và điền sẵn phần còn lại.
- **Phê duyệt như một nghi lễ.** Mọi yêu cầu chờ một chữ ký không bao giờ từ chối. Thay vào đó, phê duyệt trước các mục thường lệ và giữ phê duyệt thật nhanh.
- **Tự động hóa không có biện pháp bảo vệ.** Một script thực hiện sai thay đổi ở quy mô lớn. Thay vào đó, kiểm thử, giới hạn và ghi nhật ký tự động hóa, và theo dõi lỗi.
- **Tên nội bộ.** Người dùng không tìm được thứ họ cần. Thay vào đó, đặt tên yêu cầu bằng lời của người dùng và thử chúng.
- **Không có đường có người.** Nhu cầu bất thường rơi mất. Thay vào đó, đưa ra sự giúp đỡ và coi các yêu cầu lạ là phản hồi.
- **Chỉ đếm tốc độ.** Yêu cầu bị đóng sớm. Thay vào đó, xác nhận với người yêu cầu và theo dõi yêu cầu lặp lại.
- **Không bao giờ cho ngừng yêu cầu.** Danh sách cũ đi. Thay vào đó, rà soát mức sử dụng định kỳ và bỏ những gì không ai xin.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Mô hình yêu cầu | Mỗi yêu cầu được xử lý tùy hứng | Có mô hình cho một số yêu cầu thường xuyên | Có mô hình cho các yêu cầu hàng đầu với chủ sở hữu và thời gian dự kiến | Hiệu suất mô hình được đo và tinh chỉnh | Mô hình được chia sẻ giữa các chức năng và nhà cung cấp |
| Phê duyệt | Phê duyệt không chính thức hoặc theo thói quen | Một số mục thường lệ được phê duyệt trước | Danh sách phê duyệt trước và đường phê duyệt nhanh là chuẩn | Kết quả và thời gian chờ phê duyệt được rà soát | Quy tắc phê duyệt được căn chỉnh giữa các chức năng dựa trên dữ liệu rủi ro |
| Tự động hóa và tự phục vụ | Yêu cầu được xử lý thủ công qua email | Một số yêu cầu có trong cổng thông tin hoặc được tự động hóa | Yêu cầu thường xuyên, rủi ro thấp được tự động hóa và tự phục vụ là chuẩn | Thành công của tự động hóa và công sức của người dùng được đo | Tự động hóa và tự phục vụ trải rộng CNTT, nhân sự và cơ sở vật chất |
| Học tập và cải tiến | Yêu cầu không được phân tích | Một số số đếm được thu thập | Thời gian chờ và yêu cầu lặp lại được rà soát định kỳ | Cải tiến được lập kế hoạch từ dữ liệu và tác dụng được kiểm tra | Ý tưởng cải tiến đến từ người dùng và các nhóm trong toàn tổ chức |

## Danh mục kiểm tra

- [ ] Chúng ta biết mười yêu cầu phổ biến nhất của mình và mỗi cái mất bao lâu.
- [ ] Mỗi cái có một mô hình yêu cầu: thông tin cần, người phê duyệt, các bước, chủ sở hữu, thời gian dự kiến.
- [ ] Yêu cầu được đặt tên bằng lời của người dùng.
- [ ] Biểu mẫu chỉ hỏi thông tin cần thiết và điền sẵn những gì chúng ta biết.
- [ ] Mục thường lệ được phê duyệt trước, và phê duyệt thật có đường nhanh và người thay thế.
- [ ] Yêu cầu thường xuyên, rủi ro thấp được tự động hóa với kiểm thử và nhật ký.
- [ ] Yêu cầu, sự cố và thay đổi được tách riêng với một bước phân loại lại.
- [ ] Chúng ta đo thời gian chờ cũng như tổng thời gian.
- [ ] Người yêu cầu được hỏi xác nhận hoàn tất.
- [ ] Danh sách yêu cầu được rà soát ít nhất hai lần mỗi năm.

## Lời nhắc AI

**Mục đích: tìm các yêu cầu phổ biến nhất và các lần chờ dài nhất.**

```text
Here is data on service requests from the last [period]: [paste a table with request type, date submitted, date approved if any, date fulfilled, and any notes; remove personal data].

Using only my data, list the ten most common request types with counts, the typical elapsed time for each (give the middle value and the range), and how much of that time was waiting for approval, if the data shows it. Highlight the three requests with the longest waits. Suggest questions to ask the owners. Do not invent numbers or causes. If the data is too thin, tell me what to collect. List what you are unsure of.
```

**Mục đích: viết một mô hình yêu cầu cho một yêu cầu.**

```text
Help me write a request model for [request, e.g. "access to a shared team folder"].

How it is handled today, step by step, with who does each: [paste].
Information the requester must provide today: [list].
Approvals today and who gives them: [list].
Rules we must follow, with source text if available: [paste, or write "none known"].

Produce a one-page model: purpose, who may request, information needed (mark what could be prefilled from existing systems), approval (and a suggestion for pre-approval where low risk), steps with who or what does each, expected time marked as [to be agreed], and how completion is confirmed. Mark assumptions. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: viết lại một biểu mẫu yêu cầu cho ngắn và rõ hơn.**

```text
Here is a request form we use: [paste the fields and instructions].
Here is what we already know about the requester from other systems: [list, such as name, department, manager].

For each field, say whether it is needed, could be prefilled, or could be removed, and give a reason from the text. Rewrite the form with clear labels in plain language. Do not remove any field that I have marked as required by a rule: [list, or write "none known"]. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: quyết định tự động hóa cái gì trước.**

```text
Here is a list of our requests with volume per month, steps, and how risky each step is (my judgment): [paste].
Tools we can automate with: [list, or write "unknown"].
Safeguards we can put in place: [list, such as logs, limits, approvals for exceptions].

Rank the requests as automation candidates, using only my data, and explain each ranking in one sentence. For the top two, list what could go wrong and a safeguard for each. Do not invent volumes. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): dùng để liệt kê các yêu cầu người dùng có thể xin, bằng lời của họ, với chủ sở hữu.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): dùng để tìm các yêu cầu phổ biến nhất và khối lượng của chúng.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): dùng để phân tích các bước và lần chờ trong một yêu cầu.
- [user-story](../../../../skills/user-story/SKILL.md): dùng để mô tả một yêu cầu từ góc nhìn của người dùng với tiêu chí chấp nhận.
- [runbook](../../../../skills/runbook/SKILL.md): dùng để ghi lại các bước cho những yêu cầu vẫn làm thủ công.

## Nguồn chính

- **IT service management** (Wikipedia): định nghĩa yêu cầu dịch vụ, quản lý dịch vụ doanh nghiệp và tự động hóa quy trình CNTT.
- **Help desk** (Wikipedia): bối cảnh về quản lý hàng đợi và định tuyến cho các yêu cầu đến một bàn.
- **Business process automation** (Wikipedia): bối cảnh chung về tự động hóa công việc thường lệ.
- **ITIL** (Wikipedia): bối cảnh cho quản lý yêu cầu dịch vụ trong ITIL.

## Tài liệu tham khảo

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
5. Business process automation — Wikipedia — https://en.wikipedia.org/wiki/Business_process_automation
6. Self-service software — Wikipedia — https://en.wikipedia.org/wiki/Self-service_software
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Access control — Wikipedia — https://en.wikipedia.org/wiki/Access_control
