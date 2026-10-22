# Các nguyên tắc Agile

**Mười hai nguyên tắc đằng sau Tuyên ngôn Agile biến bốn câu giá trị thành những thói quen có thể kiểm tra, và mỗi nguyên tắc có thể được đọc như một câu hỏi đặt ra cho một dịch vụ đang chạy cũng như cho một dự án phần mềm.**

## Vì sao điều này quan trọng

Bốn giá trị trong Tuyên ngôn cho một nhóm biết nên nghiêng về hướng nào (xem Chủ đề 1.1 — Tuyên ngôn Agile). Mười hai nguyên tắc nói rằng nghiêng về hướng đó trông như thế nào trong công việc hằng ngày: giao hàng thường xuyên đến đâu, đối xử với yêu cầu thay đổi ra sao, ai nói chuyện với ai, cái gì được tính là tiến bộ, và một nhóm giữ cho mình tiếp tục học như thế nào. Chúng đủ ngắn để thuộc lòng và đủ cụ thể để đối chiếu với những gì nhóm đã làm tuần trước.

Với một nhóm vận hành dịch vụ, các nguyên tắc hữu ích vì chúng cắt ngang sự phân chia quen thuộc giữa xây dựng và vận hành. Một vài nguyên tắc, như nhịp độ đều đặn, sự chú ý đến chất lượng kỹ thuật và việc nhìn lại định kỳ, mô tả điều giữ cho một dịch vụ khỏe mạnh qua nhiều năm, chứ không chỉ điều đưa một tính năng ra cửa. Các nguyên tắc khác lại đi ngược những thói quen mọc lên quanh quản lý dịch vụ CNTT (ITSM), chẳng hạn coi mọi thay đổi là một rủi ro cần kiểm soát trước khi nó xảy ra. Đọc hai bên cạnh nhau cho thấy chỗ nào căng thẳng là thật và chỗ nào xuất phát từ những giả định cũ.

Các nguyên tắc được viết năm 2001 về phát triển phần mềm, nên chúng không nhắc đến sự cố, mức dịch vụ hay lịch trực. Đó là khoảng trống bạn lấp bằng diễn giải, và việc diễn giải là công việc của chủ đề này. Hãy coi các cách đọc dưới đây là đề xuất để thử trong bối cảnh của bạn, không phải quan điểm của các tác giả.

## Các khái niệm cốt lõi

### Các nguyên tắc đến từ đâu

Các nguyên tắc được công bố trên [agilemanifesto.org](https://agilemanifesto.org/principles.html) dưới tiêu đề "Principles behind the Agile Manifesto", mở đầu bằng câu "We follow these principles". Chúng đi kèm Tuyên ngôn do nhóm gặp nhau ở Snowbird, Utah, vào tháng 2 năm 2001 viết ra. [Bài viết Wikipedia về phát triển phần mềm agile](https://en.wikipedia.org/wiki/Agile_software_development) liệt kê chúng như mười hai nguyên tắc đằng sau Tuyên ngôn.

Chỉ bốn giá trị mang chữ ký của Tuyên ngôn. Các nguyên tắc là phần diễn giải thêm của nhóm về những giá trị đó, và là thứ hầu hết các nhóm trích dẫn khi muốn kiểm tra một thực hành. Nguyên văn từng nguyên tắc có sẵn ở nguồn; chủ đề này tóm tắt từng nguyên tắc bằng lời riêng và chỉ trích những cụm từ ngắn.

### Mười hai nguyên tắc trong một cái nhìn

Bảng nhóm các nguyên tắc theo chủ đề và đưa ra cách diễn đạt đơn giản cho từng nguyên tắc. Số thứ tự theo trật tự trên agilemanifesto.org.

| # | Tóm tắt | Điều đó có thể có nghĩa gì với một nhóm vận hành dịch vụ |
|---|---|---|
| 1 | Làm hài lòng khách hàng bằng việc giao giá trị sớm và liên tục | Phát hành những cải tiến hữu ích cho dịch vụ theo từng bước nhỏ thay vì dồn lại cho một đợt ra mắt lớn. Đánh giá thành công bằng điều người dùng nhận được, không phải bằng điều kế hoạch đã nói. |
| 2 | Chào đón yêu cầu thay đổi, kể cả muộn | Coi sự thay đổi trong nhu cầu của khách hàng là thông tin, không phải sự xúc phạm kế hoạch. Làm cho quy trình thay đổi đủ nhanh để việc chào đón thay đổi là khả thi. |
| 3 | Giao phần mềm chạy được thường xuyên, ưu tiên khoảng thời gian ngắn hơn | Giữ khoảng cách giữa các lần phát hành ngắn, từ vài ngày đến vài tuần. Các bản phát hành nhỏ mỗi bản mang ít rủi ro hơn và dễ hoàn tác hơn. |
| 4 | Người làm kinh doanh và lập trình viên làm việc cùng nhau hằng ngày | Đưa những người hiểu nhu cầu kinh doanh vào cùng các cuộc trò chuyện với những người xây dựng và vận hành dịch vụ, mỗi ngày, không phải ở các buổi rà soát hằng quý. |
| 5 | Xây dựng dự án quanh những cá nhân có động lực, hỗ trợ họ và tin tưởng họ | Cho nhóm quyền truy cập, công cụ và thẩm quyền để giải quyết vấn đề mà không cần chuỗi xin phép. Sự tin tưởng phải đi cùng trách nhiệm giải trình rõ ràng. |
| 6 | Trò chuyện trực tiếp là cách tốt nhất để truyền đạt thông tin | Khi một dịch vụ đang hỏng, hãy nói chuyện. Viết kết quả ra sau đó. Dùng video hoặc cuộc gọi chung nếu mọi người không ở cùng một chỗ. |
| 7 | Phần mềm chạy được là thước đo chính của tiến độ | Đo điều đang chạy và hoạt động cho người dùng, như một tính năng đang được dùng hay một sự cố không còn lặp lại, không phải tài liệu đã tạo ra hay tác vụ đã đóng. |
| 8 | Phát triển bền vững: nhịp độ đều đặn, mãi mãi | Bảo vệ con người khỏi những kỳ tích anh hùng triền miên. Một lịch trực phụ thuộc vào vài người kiệt sức là rủi ro cho dịch vụ. |
| 9 | Liên tục chú ý đến sự xuất sắc kỹ thuật và thiết kế tốt | Sửa nguyên nhân của những hỏng hóc lặp lại và giữ nền tảng dễ bảo trì. Công việc chất lượng hôm nay là điều cho phép bạn thay đổi nhanh sau này. |
| 10 | Đơn giản: tối đa hóa lượng việc không phải làm | Loại bỏ dịch vụ, bước, phê duyệt và tài liệu không còn phục vụ mục đích nào. Mỗi thứ bạn giữ lại đều phải được vận hành, cập nhật và giải thích. |
| 11 | Những thiết kế tốt nhất xuất hiện từ các nhóm tự tổ chức | Để những người gần công việc nhất quyết định cách làm trong các ranh giới rõ ràng. Cung cấp hàng rào bảo vệ, không phải chỉ dẫn chi tiết. |
| 12 | Nhìn lại định kỳ và điều chỉnh | Tổ chức các buổi rà soát cách nhóm làm việc một cách đều đặn, kể cả sau sự cố, và thực hiện ít nhất một thay đổi thật từ mỗi buổi. |

### Bốn chủ đề

Các nguyên tắc rơi vào bốn nhóm hữu ích khi bạn lên kế hoạch cho một cuộc trò chuyện.

- **Giá trị và thay đổi (1, 2, 3):** giao sớm và thường xuyên, và coi thay đổi là bình thường. Đây là những nguyên tắc căng thẳng nhất với kiểm soát thay đổi nặng nề.
- **Con người và giao tiếp (4, 5, 6):** cộng tác hằng ngày, tin tưởng và trò chuyện trực tiếp. Những nguyên tắc này quan trọng nhất trong sự cố và bàn giao.
- **Chất lượng và tính bền vững (7, 8, 9, 10):** kết quả chạy được là thước đo tiến độ, nhịp độ mà con người giữ được, chất lượng kỹ thuật và sự đơn giản. Những nguyên tắc này bảo vệ một dịch vụ qua nhiều năm.
- **Học tập và tự tổ chức (11, 12):** các nhóm tự quyết định cách làm việc và cải thiện cách làm việc. Những nguyên tắc này nối với cải tiến liên tục (xem Chủ đề 3.15 — Cải tiến liên tục).

### Nguyên tắc và thực hành không giống nhau

Một nguyên tắc nêu một hướng đi. Một thực hành là một cách đi theo nó. Scrum, Kanban và Extreme Programming là những gói thực hành mà người dùng chúng nói là tuân theo các nguyên tắc (xem Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch, Chủ đề 1.5 — Kanban và Chủ đề 1.6 — Extreme Programming). Một nhóm có thể làm theo một thực hành mà phá vỡ nguyên tắc đằng sau nó. Một buổi họp đứng hằng ngày biến thành bản báo cáo trạng thái cho quản lý vẫn giữ nghi thức nhưng mất ý nghĩa của nguyên tắc 4 và nguyên tắc 5.

### Nơi các nguyên tắc im lặng hoặc gây tranh cãi

Các nguyên tắc không nói gì về an ninh, kiểm toán, quy định hay chi phí của một sự cố ngừng dịch vụ. Chúng không nói ai trực lúc ba giờ sáng. Một nhóm dịch vụ phải mang tri thức đó từ ITSM và từ bối cảnh của riêng mình. Các nhà phê bình cũng chỉ ra rằng nguyên tắc 6 có thể khó đáp ứng khi các nhóm trải rộng qua nhiều múi giờ, và rằng "phần mềm chạy được là thước đo chính" có thể bị đọc thành bỏ qua tài liệu. Bài viết Wikipedia về phát triển phần mềm agile ghi lại những lời chỉ trích kiểu này và lưu ý rằng bằng chứng về lợi ích của các phương pháp agile còn hạn chế. Hãy kiểm chứng các nguyên tắc với kết quả của chính bạn.

## Thực hành tốt

1. **Dùng các nguyên tắc làm danh mục rà soát.** Mỗi tháng chọn hai hoặc ba nguyên tắc và hỏi, đối với một lần phát hành, sự cố hay dự án gần đây, hành vi của nhóm có khớp hay không. Dùng sự kiện thật, không thảo luận chung chung. Giá trị nằm ở những khoảng trống bạn tìm ra.
2. **Rút ngắn khoảng cách giữa các lần phát hành trước khi tự động hóa.** Nguyên tắc 3 ưu tiên khoảng thời gian ngắn hơn. Hỏi điều gì ngăn bạn phát hành hằng tuần thay vì hằng tháng, liệt kê các vật cản và gỡ chúng theo thứ tự. Khi đó tự động hóa hỗ trợ một nhịp mà bạn đã có.
3. **Mở một đường cho thay đổi muộn.** Nguyên tắc 2 yêu cầu bạn chào đón thay đổi, điều chỉ có hiệu lực nếu có một cách nhanh, an toàn để chấp nhận nó. Định nghĩa một đường nhẹ cho thay đổi rủi ro thấp và giữ một cuộc rà soát đầy đủ hơn cho thay đổi rủi ro cao (xem Chủ đề 3.4 — Kích hoạt thay đổi).
4. **Đưa người làm kinh doanh và người làm kỹ thuật vào cùng một phòng mỗi ngày.** Nguyên tắc 4 đòi làm việc cùng nhau hằng ngày. Trong một nhóm dịch vụ điều này có thể là một chủ sở hữu dịch vụ tham gia cuộc họp hằng ngày, hoặc một đại diện sản phẩm ngồi cùng bàn dịch vụ mỗi tuần một lần.
5. **Đi đôi tin tưởng với trách nhiệm giải trình.** Nguyên tắc 5 yêu cầu bạn tin những người có động lực. Nêu rõ mỗi nhóm sở hữu gì, được tự quyết gì và phải báo lên cấp trên điều gì. Niềm tin lớn lên khi các quyết định và kết quả của chúng được nhìn thấy.
6. **Nói chuyện trước, ghi lại sau.** Trong một sự cố, hãy đưa đúng những người vào một cuộc trò chuyện, trực tiếp hoặc qua cuộc gọi, và nhờ một người ghi các quyết định và thời điểm khi chúng xảy ra. Điều đó phục vụ nguyên tắc 6 và cho bạn một bản ghi để rà soát sau này (xem Chủ đề 3.2 — Quản lý sự cố).
7. **Đếm kết quả, không đếm hoạt động.** Nguyên tắc 7 lấy phần mềm chạy được làm thước đo tiến độ. Với một dịch vụ, hãy chọn các thước đo như thời gian khôi phục dịch vụ, số người dùng một tính năng mới và tần suất một hỏng hóc lặp lại. Tránh những thước đo thưởng cho việc đóng ticket nhanh mà không sửa được gì (xem Chủ đề 5.6 — Chỉ số và đo lường).
8. **Bảo vệ nhịp độ.** Nguyên tắc 8 yêu cầu một nhịp độ mà nhóm có thể giữ mãi. Rà soát tải trực, giờ làm thêm và số lần gián đoạn khẩn cấp, và coi xu hướng tăng là rủi ro cho dịch vụ, không phải khuyết điểm cá nhân.
9. **Trả nợ kỹ thuật theo lịch.** Nguyên tắc 9 nối chất lượng với sự nhanh nhẹn. Dành một phần nhìn thấy được của mỗi chu kỳ cho sửa chữa, nâng cấp và kiểm thử, và gắn nó với các bản ghi vấn đề để công việc dựa trên bằng chứng (xem Chủ đề 3.3 — Quản lý vấn đề).
10. **Xóa bớt đi.** Nguyên tắc 10 đề cao công việc không phải làm. Mỗi quý một lần, liệt kê dịch vụ, báo cáo, biểu mẫu và bước phê duyệt, rồi cho ngừng những thứ không ai dùng hoặc không còn giảm rủi ro.
11. **Cho các nhóm hàng rào bảo vệ, không phải kịch bản.** Nguyên tắc 11 cho rằng thiết kế tốt đến từ các nhóm tự tổ chức. Đặt các ranh giới, như quy tắc an ninh, ngân sách và mức dịch vụ, rồi để nhóm chọn cách đáp ứng chúng.
12. **Kết thúc mỗi lần nhìn lại bằng một thay đổi.** Nguyên tắc 12 yêu cầu nhóm nhìn lại rồi điều chỉnh. Sau mỗi buổi retrospective hay rà soát sau sự cố, hãy thống nhất một thay đổi, chỉ định một người phụ trách và kiểm tra nó ở lần rà soát sau.

## Câu hỏi để thảo luận với nhóm của bạn

**Trong mười hai nguyên tắc, hôm nay chúng ta làm theo nguyên tắc nào tốt nhất, và nguyên tắc nào kém nhất?**

Đưa mỗi người danh sách và nhờ họ đánh dấu một nguyên tắc mà họ nghĩ nhóm làm tốt và một nguyên tắc nhóm làm kém, rồi so sánh. Bất đồng là hữu ích vì nó cho thấy mọi người nhìn công việc khác nhau ở đâu. Hỏi một ví dụ gần đây đằng sau mỗi dấu. Người điều phối nên giữ cuộc nói chuyện trên sự kiện và tránh bàn về tính cách. Kết thúc bằng việc chọn một nguyên tắc để nhóm làm.

**Chúng ta mất bao lâu để đưa một cải tiến nhỏ, hữu ích đến tay người dùng, và điều gì làm chậm nó?**

Câu hỏi này kiểm tra các nguyên tắc 1 và 3. Lần theo một thay đổi nhỏ gần đây từ yêu cầu đến lúc phát hành, ghi lại từng lần chờ. Những câu trả lời điển hình gồm các cuộc họp phê duyệt, kiểm thử thủ công và cửa sổ phát hành. Một số lần chờ này bảo vệ trước rủi ro thật, nên hãy hỏi mỗi lần chờ đang bảo vệ điều gì. Tiếp theo, chọn một lần chờ để rút ngắn.

**Lần nào một thay đổi muộn trong điều khách hàng muốn đã gây hại cho chúng ta, và điều gì lẽ ra cho phép chúng ta chấp nhận nó?**

Hỏi một trường hợp thật và tránh nói chung chung. Mọi người thường nêu điều khoản hợp đồng, phạm vi cố định hoặc một bản phát hành đã bị đóng băng. Tìm điểm mà nói có sẽ tốn ít, và hỏi điều gì đã làm điều đó khả thi. Câu hỏi này nối nguyên tắc 2 với cách nhóm lập kế hoạch.

**Ai trong phía kinh doanh nói chuyện hằng ngày với những người vận hành và xây dựng các dịch vụ của chúng ta, và ai nên làm vậy?**

Vẽ ra những người liên quan đến một dịch vụ: chủ sở hữu, người dùng, nhân viên hỗ trợ, người xây dựng. Đánh dấu tần suất mỗi cặp nói chuyện. Khoảng trống thường xuất hiện giữa nhân viên hỗ trợ và người xây dựng, hoặc giữa người dùng và bất kỳ ai có quyền quyết định. Người điều phối có thể hỏi khoảng trống nào đã gây nhiều rắc rối nhất trong sáu tháng qua và đề xuất một mối liên hệ nhỏ, đều đặn để lấp nó.

**Cần gì để chúng ta làm việc với nhịp độ này thêm năm năm nữa?**

Câu hỏi này kiểm tra nguyên tắc 8. Hỏi về tải trực, làm việc cuối tuần và cảm nhận của nhóm về việc nghỉ phép. Chú ý những câu trả lời coi kỳ tích anh hùng là bình thường. Hỏi dữ kiện, như lịch trực vừa rồi sinh ra bao nhiêu cuộc gọi ngoài giờ, và giữ thảo luận ở hệ thống, không phải cá nhân. Tiếp theo, chọn một thay đổi sẽ giảm tải.

**Chúng ta đang làm gì mà có thể ngừng làm mà không hại khách hàng?**

Câu hỏi này áp dụng nguyên tắc 10. Mời mọi người nêu các báo cáo không ai đọc, các cuộc họp lặp lại nhau và các phê duyệt chưa bao giờ từ chối điều gì. Hỏi ai sẽ nhận ra nếu mỗi thứ bị bỏ. Cần kiểm tra các câu trả lời trước khi hành động, nên giao cho ai đó việc tìm hiểu. Các nhóm thường thấy những thắng lợi nhanh ở đây, và bài tập xây dựng thói quen đặt câu hỏi về những quy tắc cũ.

## Trong thực tế: một ví dụ agile ITIL

Phòng CNTT của một bệnh viện khu vực hỗ trợ khoảng bốn mươi ứng dụng lâm sàng và hành chính, với một bàn dịch vụ sáu người và một nhóm nhỏ lập trình viên bảo trì các công cụ tự phát triển. Nhân viên lâm sàng phàn nàn rằng sửa lỗi công cụ đặt lịch hẹn mất hàng tháng, còn các lập trình viên nói phần lớn thời gian đó là chờ hội đồng thay đổi hằng tháng và chờ một dịp cuối tuần yên tĩnh để triển khai.

Trưởng phòng tổ chức một buổi workshop nửa ngày dùng mười hai nguyên tắc làm danh mục kiểm tra. Nhóm xem sáu thay đổi gần nhất của công cụ đặt lịch. Năm thay đổi là sửa lỗi nhỏ, và mỗi thay đổi chờ trung bình năm tuần cho hội đồng thay đổi. Nhóm nhận ra các nguyên tắc 2 và 3 không được làm theo trong thực tế, và nguyên tắc 4 cũng yếu vì trưởng bộ phận lâm sàng của công cụ đặt lịch chỉ thấy các thay đổi sau khi chúng đã được xây xong.

Phòng đồng ý thử một cách. Các bản sửa chỉ chạm vào một màn hình, có kiểm thử tự động đạt và có thể hoàn tác trong vài phút sẽ được coi là thay đổi tiêu chuẩn và duyệt trước, với trưởng bộ phận lâm sàng được thông báo tự động. Một cuộc họp mười phút hằng tuần giữa trưởng bộ phận lâm sàng, một lập trình viên và một chuyên viên bàn dịch vụ sẽ chọn việc sửa tiếp theo. Nhóm bổ sung một buổi rà soát hằng tháng xem các loại thay đổi đang vận hành thế nào, phục vụ nguyên tắc 12.

Sau ba tháng, các bản sửa nhỏ đến tay người dùng trong khoảng một tuần. Bàn dịch vụ báo ít cuộc gọi lặp lại về các lỗi đã biết hơn. Còn một khó khăn: hai trong số các cuộc họp hằng tuần bị bỏ khi trưởng bộ phận lâm sàng đang ở khu bệnh, và một quyết định cần sự đồng ý của trưởng bộ phận phải chờ một tuần. Phòng đồng ý chỉ định một người thay thế. Họ cũng thấy một số nhân viên hiểu "tin tưởng nhóm" là được phép bỏ bước thông báo, nên họ làm cho việc thông báo tự động thay vì dựa vào việc mọi người gửi.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối có thể dùng các nguyên tắc như một phép thử cho công việc của mình. Hỏi một tính năng có đủ nhỏ để phát hành sớm không, nó có thể được giám sát và hoàn tác không, và nhân viên hỗ trợ có biết về nó không. Các nguyên tắc 3, 7 và 9 là những nguyên tắc thường quyết định một bản phát hành là món quà hay gánh nặng đối với những người phải vận hành nó.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành sẽ nhận ra nhiều nguyên tắc là chân lý cũ: nói chuyện với nhau trong sự cố, giữ nhịp độ bền vững và giữ mọi thứ đơn giản. Hãy dùng chúng để đòi thời gian sửa các vấn đề lặp lại, lịch trực mà mọi người sống được và sự tham gia sớm vào thiết kế. Hãy sẵn sàng giải thích những kiểm soát ITSM nào tồn tại vì lý do chính đáng, để cuộc trò chuyện xoay quanh mục đích chứ không phải khẩu hiệu.

### Lãnh đạo và quản trị

Lãnh đạo định hình mức độ có thể làm theo các nguyên tắc. Chào đón thay đổi nghĩa là chấp nhận rằng kế hoạch dịch chuyển, và tin tưởng các nhóm nghĩa là chấp nhận rằng bạn sẽ không duyệt mọi quyết định. Hãy hỏi bằng chứng nào bạn cần để thấy thoải mái với sự tin tưởng đó, như báo cáo mức dịch vụ, dấu vết kiểm toán hay rà soát sự cố, và bảo đảm nhóm tạo ra được nó mà không cần nhiều việc thủ công nặng nhọc.

### Khách hàng và người dùng

Với khách hàng, các nguyên tắc hứa những thay đổi thường xuyên, hữu ích và tiếng nói về điều gì đến tiếp theo. Chúng cũng đòi một điều đáp lại: liên lạc hằng ngày hoặc ít nhất đều đặn, quyết định nhanh và sẵn lòng thử các bản phát hành nhỏ. Khách hàng chỉ xuất hiện ở đầu và cuối dự án sẽ nhận được dạng chậm nhất của các lợi ích.

## Các kiểu thất bại thường gặp

- **Coi các nguyên tắc là sách luật.** Các nhóm tranh cãi về câu chữ và bỏ lỡ ý định. Thay vào đó, dùng một nguyên tắc để mở cuộc trò chuyện về một sự kiện thật và quyết định thay đổi gì.
- **Đọc "chào đón thay đổi" thành "chấp nhận mọi thứ".** Không có giới hạn, một dịch vụ bị bất ổn bởi mọi yêu cầu. Thay vào đó, chào đón thay đổi qua một đường xác định kiểm tra nhanh rủi ro, chi phí và giá trị.
- **Phát hành thường xuyên mà thiếu chất lượng.** Phát hành thường xuyên với kiểm thử yếu tạo ra sự cố thường xuyên. Thay vào đó, coi nguyên tắc 9 là điều kiện của nguyên tắc 3, và đầu tư vào kiểm thử và hoàn tác trước khi tăng tốc.
- **Nhầm nhịp độ đều với nhịp độ chậm.** Một nhóm dùng "bền vững" để né việc khó sẽ mất lòng tin. Thay vào đó, thống nhất một nhịp độ đều và đầy tham vọng trông như thế nào và đo nó qua nhiều tháng.
- **Thay trò chuyện trực tiếp bằng công cụ.** Kênh chat và ticket đầy chi tiết không ai đọc. Thay vào đó, trò chuyện khi vấn đề khẩn hoặc chưa rõ, và ghi quyết định sau đó.
- **Đo tiến độ bằng hoạt động.** Đếm ticket đã đóng hay bản phát hành đã giao là thưởng cho sự chuyển động. Thay vào đó, theo dõi các kết quả mà người dùng nhìn thấy, như dịch vụ được khôi phục, tính năng được dùng và ít sự cố lặp lại hơn.
- **Tổ chức retrospective mà không thay đổi gì.** Nhóm nói chuyện và chu kỳ sau y như cũ. Thay vào đó, thống nhất một thay đổi ở mỗi buổi retrospective và kiểm tra nó đầu tiên ở buổi sau.
- **Bỏ qua sự im lặng của các nguyên tắc về rủi ro.** Các nhóm bỏ qua an ninh và tuân thủ vì các nguyên tắc không nhắc đến. Thay vào đó, thêm chúng như những ràng buộc rõ ràng và bàn cách đáp ứng từng bước nhỏ.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Nhịp phân phối (nguyên tắc 1-3) | Phát hành hiếm và lớn | Một số nhóm phát hành theo bước nhỏ | Các nhóm chia sẻ một nhịp phát hành ngắn và một đường cho thay đổi muộn | Khoảng cách phát hành và thời gian chờ giao được theo dõi và rà soát | Nhịp phát hành được điều phối giữa các dịch vụ và nhà cung cấp |
| Cộng tác (nguyên tắc 4-6) | Người làm kinh doanh và người làm kỹ thuật gặp nhau ở các cột mốc | Một số nhóm họp hằng ngày với đại diện kinh doanh | Mỗi dịch vụ có chủ sở hữu được nêu tên và liên lạc đều đặn với người dùng | Khoảng trống trong cộng tác được tìm ra qua rà soát và được sửa | Khách hàng và nhà cung cấp tham gia lập kế hoạch và rà soát sự cố |
| Bền vững và chất lượng (nguyên tắc 7-10) | Áp lực được xử lý bằng làm thêm giờ; vấn đề chất lượng được chấp nhận | Một số nhóm theo dõi tải trực và nợ kỹ thuật | Thời gian sửa chữa và lịch trực công bằng được đưa vào kế hoạch | Kết quả, tải và hỏng hóc lặp lại được đo và xử lý | Đơn giản hóa là việc thường lệ trong toàn tổ chức |
| Học tập và tự tổ chức (nguyên tắc 11-12) | Rà soát chỉ diễn ra sau các hỏng hóc nghiêm trọng | Một số nhóm tổ chức retrospective đều đặn | Mỗi nhóm rà soát công việc theo nhịp cố định và ghi lại một thay đổi | Các hành động rà soát được theo dõi đến khi hoàn thành và kiểm tra kết quả | Cải tiến của một nhóm lan sang nhóm khác mà không cần chỉ đạo từ trung tâm |

## Danh mục kiểm tra

- [ ] Mọi thành viên trong nhóm đã đọc mười hai nguyên tắc tại agilemanifesto.org.
- [ ] Chúng ta đã rà soát một lần phát hành hoặc sự cố gần đây đối chiếu với ít nhất ba nguyên tắc.
- [ ] Chúng ta biết khoảng cách phát hành của mình, và đã liệt kê điều gì ngăn ta rút ngắn nó.
- [ ] Thay đổi rủi ro thấp có đường duyệt nhanh, và thay đổi rủi ro cao có đường đầy đủ hơn.
- [ ] Mỗi dịch vụ có chủ sở hữu được nêu tên, người thường xuyên nói chuyện với người dùng của nó.
- [ ] Sự cố đưa đúng những người vào một cuộc trò chuyện, với các quyết định được ghi lại.
- [ ] Chúng ta theo dõi tải trực và rà soát ít nhất mỗi quý một lần.
- [ ] Một phần nhìn thấy được của mỗi chu kỳ dành cho sửa chữa và nợ kỹ thuật.
- [ ] Chúng ta đã cho ngừng ít nhất một báo cáo, bước hoặc dịch vụ trong quý vừa qua.
- [ ] Mỗi buổi retrospective kết thúc bằng một thay đổi được thống nhất, một người phụ trách và một ngày để kiểm tra.

## Lời nhắc AI

**Mục đích: rà soát một lần phát hành hoặc sự cố gần đây đối chiếu với mười hai nguyên tắc.**

```text
You are helping a team review a recent event against the twelve principles behind the Agile Manifesto.

The twelve principles, in short: (1) satisfy the customer through early and continuous delivery; (2) welcome changing requirements; (3) deliver frequently, preferring shorter timescales; (4) business people and developers work together daily; (5) build around motivated individuals and trust them; (6) face-to-face conversation; (7) working software is the primary measure of progress; (8) a sustainable, constant pace; (9) attention to technical excellence and good design; (10) simplicity, maximizing the work not done; (11) self-organizing teams; (12) regular reflection and adjustment.

Event: [paste a factual, blameless description of a release, incident, or delayed change, in the order things happened].

Pick the three principles most relevant to this event. For each, say in two or three sentences whether the team's behavior matched the principle, citing only details from the event text. Then suggest two questions for the team to discuss. Ask me up to three clarifying questions first if the event description is too thin. Mark assumptions, and list what you are unsure of.
```

**Mục đích: tìm điều làm chậm các thay đổi nhỏ, dùng các nguyên tắc 2 và 3.**

```text
I want to understand why small changes take a long time to reach our users. Here is the sequence of steps for one recent small change, with how long each step took: [paste the steps and durations; for example "request raised, 1 day; waiting for change board, 9 days"].

Our change process is described as: [paste a short description of the change approval process, including who approves what].

List the waits in order of length. For each wait, suggest what risk it may be protecting against and one lighter way to manage that risk. Do not claim that any standard or regulation requires a step unless I have pasted its text. Mark where you are guessing, and list what you are unsure of.
```

**Mục đích: biến các nguyên tắc thành câu hỏi cho một buổi retrospective.**

```text
Create a 45-minute retrospective plan for a team of [number and type of people, e.g. "seven people who build and run an internal payroll service"]. The retrospective should use the twelve Agile Manifesto principles to look at the last [period, e.g. "four weeks"].

Context: [paste 3-5 sentences about what happened in the period, including any incident, release, or conflict].

Include a timed agenda, one activity that surfaces facts, one that groups them by principle, and a closing step where the team agrees exactly one change with an owner and a date to review. Keep it free of any specific tool. If information is missing, ask me clarifying questions first, and list what you are unsure of.
```

**Mục đích: kiểm tra một quy trình đề xuất về sự đơn giản (nguyên tắc 10).**

```text
Here is a process we use: [paste the steps, who does them, and the forms or approvals involved].

For each step, ask what purpose it serves, who benefits, and what would happen if it were removed. Then propose a shorter version that keeps the purposes that matter. Flag any step that exists because of an external requirement I have named: [list any laws, contracts, or standards you are certain apply, or write "none known"]. Do not invent requirements. List your assumptions and what you are unsure of.
```

## Kỹ năng AI

- [agile-principles](../../../../skills/agile-principles/SKILL.md): dùng để đối chiếu một thực hành hoặc quyết định của nhóm với các nguyên tắc và để bàn xem mỗi nguyên tắc có nghĩa gì trong bối cảnh.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để tổ chức việc nhìn lại định kỳ mà nguyên tắc 12 yêu cầu và biến nó thành một thay đổi thật.
- [kaizen](../../../../skills/kaizen/SKILL.md): dùng để lập kế hoạch cải tiến nhỏ, liên tục sau một buổi nhìn lại hoặc rà soát.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): dùng để lập kế hoạch các bản phát hành nhỏ, thường xuyên theo các nguyên tắc 1 và 3.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): dùng khi giúp một nhóm chuyển từ làm theo nghi thức sang hiểu các nguyên tắc đằng sau chúng.

## Nguồn chính

- **Principles behind the Agile Manifesto** (agilemanifesto.org): văn bản gốc của mười hai nguyên tắc; hãy đọc trọn vẹn.
- **Manifesto for Agile Software Development** (agilemanifesto.org): bốn giá trị mà các nguyên tắc diễn giải thêm.
- **History: The Agile Manifesto** (agilemanifesto.org): bản tường thuật của các tác giả về cách nhóm gặp nhau và họ muốn thay đổi điều gì.
- **Agile software development** (Wikipedia): một tổng quan với lịch sử, thực hành và các lời chỉ trích, hữu ích để tìm thêm tài liệu đọc.

## Tài liệu tham khảo

1. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
6. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
7. Technical debt — Wikipedia — https://en.wikipedia.org/wiki/Technical_debt
8. Self-organization — Wikipedia — https://en.wikipedia.org/wiki/Self-organization
9. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
