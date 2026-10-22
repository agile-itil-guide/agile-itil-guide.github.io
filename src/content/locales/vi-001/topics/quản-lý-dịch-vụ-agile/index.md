# Quản lý dịch vụ Agile

**Quản lý dịch vụ agile áp dụng các giá trị và phương pháp agile vào việc thiết kế và cải tiến chính quản lý dịch vụ, coi mỗi quy trình như một sản phẩm có chủ sở hữu, một backlog và những người dùng có thể nói quy trình có hiệu quả hay không.**

## Vì sao điều này quan trọng

Phần lớn cuốn sách này đã xem các nhóm agile có thể dùng các thực hành quản lý dịch vụ thế nào. Chủ đề này đảo câu hỏi: các thực hành quản lý dịch vụ có thể được xây dựng và thay đổi theo cách agile thế nào? Nhiều tổ chức có quy trình cho sự cố, thay đổi và yêu cầu được thiết kế một lần, triển khai trong một dự án rồi bị bỏ mặc. Chúng chậm thay đổi, bị những người phải theo ghét bỏ và lệch nhịp với cách tổ chức nay xây phần mềm. Đó là điều ngược với những gì nguyên tắc chào đón thay đổi của Tuyên ngôn gợi ý (xem Chủ đề 1.2 — Các nguyên tắc Agile).

Cách khắc phục không phải bỏ quy trình mà là coi nó như thứ được thiết kế cùng người dùng, phát hành theo các bước nhỏ và cải tiến từ bằng chứng. Các nguyên tắc dẫn dắt của ITIL 4 nói đúng điều đó: bắt đầu từ nơi bạn đang đứng, tiến bộ lặp lại với phản hồi, cộng tác và thúc đẩy sự minh bạch, và giữ cho đơn giản và thực tế (xem Chủ đề 2.4 — Các nguyên tắc dẫn dắt của ITIL). Bài viết Wikipedia về ITIL nói ITIL 4 được căn chỉnh với cách làm việc agile, DevOps và lean khi nó được phát hành năm 2019. Bài viết về ISO/IEC 20000 liệt kê các phần gần đây của tiêu chuẩn đó, gồm hướng dẫn về agile và DevOps, dù nó không đưa nội dung của chúng.

Có rất ít nghiên cứu chính thức về quản lý dịch vụ agile như vậy, và các bài viết Wikipedia đã tham khảo cho cuốn sách này không bao gồm nó. Vì thế chủ đề này dựa vào mô tả của Scrum Guide về vai trò và artifact, vào các nguyên tắc agile và ITIL, và vào phần còn lại của cuốn sách, và đưa cách tiếp cận của mình như một tổng hợp thực tế để thử, không phải phương pháp đã được xác lập.

## Các khái niệm cốt lõi

### Quy trình như sản phẩm

Một **quy trình**, theo nghĩa này, là bất kỳ cách làm việc lặp lại được nào mà một tổ chức dịch vụ yêu cầu mọi người theo: cách báo một sự cố, cách xin quyền truy cập, cách phê duyệt một thay đổi. Nhìn như một sản phẩm, một quy trình có:

- **Người dùng:** những người theo nó và những người nó phục vụ.
- **Một mục đích:** kết quả nó tồn tại để đạt được.
- **Một chủ sở hữu:** ai đó chịu trách nhiệm về giá trị của nó, như Scrum Guide mô tả Product Owner là một người duy nhất chịu trách nhiệm tối đa hóa giá trị của sản phẩm và sắp xếp backlog của nó (xem Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch).
- **Một backlog:** một danh sách có thứ tự các cải tiến.
- **Các bản phát hành:** thay đổi được giao theo các bước nhỏ, kèm ghi chú.
- **Các thước đo:** bằng chứng về việc nó có hiệu quả không.

Nghĩ theo cách này đổi các câu hỏi. Không phải "chúng ta đã triển khai quy trình thay đổi chưa?" mà là "quy trình thay đổi có giúp mọi người làm việc không, và cải tiến tiếp theo là gì?"

### Vai trò

| Vai trò | Trong một nhóm sản phẩm | Với một quy trình quản lý dịch vụ |
|---|---|---|
| **Product Owner** | Sắp xếp backlog và chịu trách nhiệm về giá trị | Chủ sở hữu quy trình, người quyết định cải tiến gì tiếp theo và vì sao |
| **Lập trình viên / nhóm** | Xây increment | Những người thiết kế và vận hành quy trình, lý tưởng là gồm người dùng từ phân phối và vận hành |
| **Scrum Master hoặc người huấn luyện** | Giúp nhóm áp dụng khung và gỡ chướng ngại | Một người huấn luyện giúp nhóm thực hành giao phần mềm liên tục và thu thập phản hồi |
| **Các bên liên quan** | Rà soát increment và đưa phản hồi | Các nhóm phân phối, bàn dịch vụ, kiểm toán viên, khách hàng |

Việc ánh xạ là của cuốn sách này, không phải một tiêu chuẩn. Chủ sở hữu quy trình ở nhiều tổ chức thiếu thẩm quyền hay thời gian, nên bước đầu tiên thường là cho họ cả hai.

### Backlog quy trình

Ý tưởng cải tiến cho một quy trình đến từ nhiều nơi: rà soát sự cố, retrospective, phát hiện kiểm toán, phàn nàn của người dùng và chỉ số (xem Chủ đề 3.15 — Cải tiến liên tục). Một backlog quy trình gom chúng vào một danh sách có thứ tự. Các hạng mục nhỏ và được mô tả từ góc nhìn của người dùng: "Là một lập trình viên, tôi muốn các thay đổi rủi ro thấp được phê duyệt tự động để tôi có thể phát hành khi sẵn sàng." Product Owner sắp xếp danh sách theo giá trị và công sức, và nhóm nhận các hạng mục vào các chu kỳ ngắn.

### Giao hàng liên tục các thay đổi quy trình

Thay vì thiết kế một quy trình đầy đủ và triển khai, hãy thiết kế phiên bản nhỏ nhất có thể hoạt động, thử với vài người dùng và học:

| Bước | Điều xảy ra |
|---|---|
| **Tìm vấn đề** | Quan sát cách mọi người thực sự làm việc và họ gặp khó ở đâu |
| **Thiết kế một thay đổi nhỏ** | Một biểu mẫu mới, một đường phê duyệt ngắn hơn, một danh mục kiểm tra |
| **Thử nó** | Với một nhóm, hoặc một loại công việc, trong một giai đoạn ngắn |
| **Kiểm tra** | So sánh với điều bạn mong đợi, dùng dữ liệu và trò chuyện |
| **Áp dụng, điều chỉnh hoặc bỏ** | Lan truyền điều hiệu quả; sửa hoặc bỏ điều không |

Đây là chu trình lập kế hoạch, thực hiện, kiểm tra, hành động áp dụng cho chính quy trình (xem Chủ đề 3.15 — Cải tiến liên tục).

### Thiết kế cùng người dùng

Người thiết kế quy trình mà không dùng quy trình mắc những sai lầm có thể tránh. Hãy lôi kéo những người theo nó: mời kỹ sư thiết kế quy trình thay đổi, chuyên viên bàn dịch vụ thiết kế biểu mẫu sự cố và khách hàng thiết kế danh mục yêu cầu. Quan sát công việc thật. Thử với các trường hợp thật. Đây là "cộng tác với khách hàng hơn đàm phán hợp đồng" áp dụng bên trong tổ chức (xem Chủ đề 1.1 — Tuyên ngôn Agile).

### Quy trình khả thi tối thiểu

Một **quy trình khả thi tối thiểu** là tập nhỏ nhất các bước, bản ghi và vai trò đạt được mục đích. Thêm vào nó cần một lý do. Nguyên tắc dẫn dắt "giữ cho đơn giản và thực tế" ủng hộ điều này. Một phép thử hữu ích cho mỗi bước là hỏi điều gì sẽ xảy ra nếu bỏ nó, và ai sẽ để ý. Các kiểm soát do luật hay hợp đồng yêu cầu được giữ, kèm nguồn được nêu; các kiểm soát khác thì được đặt câu hỏi.

### Bản phát hành quy trình và giao tiếp

Khi một quy trình thay đổi, mọi người cần biết. Hãy coi thay đổi như bản phát hành: một ghi chú ngắn mô tả điều đã đổi, vì sao và phải làm khác đi thế nào, kèm đầu mối cho câu hỏi. Phát hành theo các bước nhỏ, theo nhịp mọi người theo kịp, và tránh làm các nhóm bất ngờ với thay đổi lớn. Giữ một lịch sử thay đổi nhìn thấy được.

### Tiêu chuẩn, kiểm toán và sự nhanh nhẹn

Nhiều tổ chức phải thỏa mãn tiêu chuẩn hoặc kiểm toán viên. ISO/IEC 20000 là một tiêu chuẩn cho các hệ thống quản lý dịch vụ, và Wikipedia liệt kê một phần gần đây của nó với hướng dẫn về agile và DevOps (xem Chủ đề 2.7 — Các khung và tiêu chuẩn ITSM). Một quy trình được xây theo các bước nhỏ có thể thỏa mãn kiểm toán nếu các bản ghi cho thấy nó hoạt động thế nào và thay đổi ra sao: backlog, ghi chú phát hành và thước đo tự chúng là bằng chứng. Hãy bàn sớm với kiểm toán viên họ cần gì, và cho họ thấy cách bạn làm việc.

### Quản lý dịch vụ agile và DevOps

Các thực hành từ DevOps, như tự động hóa và pipeline, là công cụ để triển khai quy trình (xem Chủ đề 5.2 — DevOps). Ở nơi một bước quy trình có thể được tự động hóa, như ghi một thay đổi từ pipeline, hãy làm vậy, và coi tự động hóa là một phần của quy trình. Quản lý dịch vụ agile và DevOps cùng quan tâm đến chu kỳ ngắn và phản hồi nhanh.

### Giới hạn

Cách tiếp cận giả định mọi người có thời gian và thẩm quyền để cải tiến quy trình, điều không phải lúc nào cũng đúng. Nó có thể thất bại khi quyền sở hữu quy trình chỉ trên danh nghĩa, khi các bên liên quan đòi một thiết kế hoàn chỉnh trước khi họ chịu thử bất cứ điều gì, hoặc khi mọi thay đổi cần một phê duyệt dài. Nó cũng có rủi ro thay đổi liên tục nếu các thay đổi quá thường xuyên để mọi người tiếp nhận. Hãy cân bằng giao hàng liên tục thay đổi với sự ổn định: thay đổi theo một nhịp dự đoán được.

## Thực hành tốt

1. **Chỉ định một chủ sở hữu cho mỗi quy trình.** Chọn ai đó có thẩm quyền thay đổi nó và thời gian để làm. Làm rõ vai trò của họ: họ chịu trách nhiệm về việc quy trình phục vụ mục đích của nó tốt đến đâu.
2. **Viết mục đích trong một câu.** Nêu quy trình để làm gì và phục vụ ai. Nếu bạn không viết được, quy trình có thể là ứng viên để loại bỏ.
3. **Giữ một backlog quy trình.** Gom ý tưởng từ các buổi rà soát, kiểm toán, phản hồi và dữ liệu vào một danh sách có thứ tự. Cho những người theo quy trình thấy nó.
4. **Lôi kéo người dùng vào thiết kế.** Gồm kỹ sư, chuyên viên bàn dịch vụ và khách hàng trong các workshop và thử nghiệm. Quan sát công việc thật trước khi đổi nó.
5. **Bắt đầu với quy trình khả thi tối thiểu.** Thiết kế phiên bản nhỏ nhất đáp ứng mục đích và nhu cầu pháp lý. Chỉ thêm bước khi một vấn đề biện minh cho nó.
6. **Thử trước khi triển khai.** Chạy thử với một nhóm hoặc một loại công việc trong một giai đoạn ngắn, xác định. Thống nhất bạn sẽ xem gì trước khi bắt đầu.
7. **Phát hành thay đổi theo bước nhỏ và theo nhịp.** Công bố một ghi chú ngắn cho mỗi bản phát hành của quy trình, kèm đầu mối liên hệ. Tránh thay đổi lớn, bất ngờ.
8. **Đo quy trình.** Chọn vài thước đo cho thấy nó có hiệu quả không, như thời gian, làm lại và mức hài lòng của người dùng (xem Chủ đề 5.6 — Chỉ số và đo lường). Rà soát chúng cùng người dùng.
9. **Tự động hóa ở nơi nó giúp.** Nắm bắt bản ghi từ công cụ, không phải từ biểu mẫu; làm cho đường dễ là đường đúng. Kiểm tra rằng tự động hóa không che giấu phán đoán mà con người nên đưa ra.
10. **Giữ bằng chứng cho kiểm toán viên.** Lưu backlog, quyết định, ghi chú phát hành và thước đo nơi kiểm toán viên thấy được. Mời họ dự một buổi rà soát về cách quy trình thay đổi.
11. **Cho ngừng quy trình.** Bỏ các bước, biểu mẫu và bản ghi không còn phục vụ mục đích. Coi việc xóa là một cải tiến.
12. **Rà soát quyền sở hữu quy trình hằng năm.** Kiểm tra mỗi quy trình vẫn còn một chủ sở hữu tích cực, một backlog cập nhật và người dùng có thể tiếp cận họ.

## Câu hỏi để thảo luận với nhóm của bạn

**Ai sở hữu từng quy trình của chúng ta, và họ có thẩm quyền gì để thay đổi nó?**

Liệt kê các quy trình chính và nêu chủ sở hữu của mỗi cái. Hỏi chủ sở hữu có thể đổi gì mà không cần hỏi ai. Thường câu trả lời là "rất ít". Người điều phối có thể hỏi cần gì để chủ sở hữu có thể thực hiện các thay đổi nhỏ nhanh chóng. Thống nhất một quy trình để bắt đầu.

**Quy trình thay đổi của chúng ta để làm gì? Chúng ta nói được trong một câu không?**

Mời mỗi người viết một mục đích. So sánh. Khác biệt cho thấy sự nhầm lẫn về lý do quy trình tồn tại. Dùng phát biểu chung để đánh giá từng bước. Bỏ hoặc đặt câu hỏi về các bước không phục vụ nó.

**Lần cuối chúng ta đổi một quy trình vì người dùng yêu cầu là khi nào, và chúng ta biết bằng cách nào?**

Xin ví dụ. Nếu không có, hỏi phàn nàn đi đâu. Bàn cách phản hồi có thể đến chủ sở hữu: một kênh, một buổi rà soát định kỳ, một khảo sát ngắn. Chọn một đường để thử.

**Một thử nghiệm một tháng của một quy trình đơn giản hơn sẽ trông thế nào?**

Chọn một quy trình có ma sát đã biết. Mô tả một phiên bản nhẹ hơn, ai sẽ thử, bạn sẽ đo gì và điều gì sẽ khiến bạn dừng. Điều này biến một cuộc tranh cãi thành một thí nghiệm. Thống nhất chi tiết và ngày.

**Kiểm toán viên của chúng ta sẽ chấp nhận bằng chứng nào từ một quy trình giao phần mềm liên tục?**

Hỏi một kiểm toán viên hoặc đồng nghiệp tuân thủ. Liệt kê những gì quy trình tạo ra: một backlog, ghi chú phát hành, thước đo, bản ghi. Bàn các khoảng trống. Các nhóm thường ngạc nhiên về mức sẵn lòng của kiểm toán viên chấp nhận bằng chứng rõ ràng về thay đổi được kiểm soát.

**Mọi người biết một quy trình đã đổi bằng cách nào?**

Lần theo thay đổi gần nhất. Nhiều người biết từ một đồng nghiệp hoặc bằng cách vấp phải nó. Bàn ghi chú phát hành và một nhật ký thay đổi nhìn thấy được. Thống nhất một cách đơn giản để thông báo thay đổi và chúng nằm ở đâu.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan an toàn giao thông quốc gia có phòng CNTT 90 người hỗ trợ một ứng dụng do cảnh sát và tòa án dùng. Quy trình sự cố của phòng được viết tám năm trước: một biểu mẫu 14 trường, ba phê duyệt để đóng một sự cố ưu tiên cao và một báo cáo hằng tháng mà không ai đọc. Các nhóm phân phối bỏ qua biểu mẫu trong lúc ngừng hoạt động và điền sau, nên bản ghi của nó kém. Một phát hiện kiểm toán nói rằng bản ghi sự cố không đầy đủ.

Trưởng bộ phận quản lý dịch vụ tự nêu mình là chủ sở hữu quy trình sự cố và lập một nhóm làm việc nhỏ: hai chuyên viên từ bàn dịch vụ, một kỹ sư từ mỗi trong hai nhóm phân phối và một cán bộ chất lượng từ đơn vị quản trị của cơ quan. Cô viết một mục đích cho quy trình: khôi phục dịch vụ nhanh và học từ điều đã xảy ra. Nhóm quan sát ba sự cố thật. Họ thấy biểu mẫu được điền sau sự việc, chủ yếu với cùng vài giá trị, và các phê duyệt thêm chậm trễ mà không bao giờ đổi một kết quả nào. Họ dựng một backlog và bắt đầu với các thay đổi nhỏ nhất. Một thử nghiệm với hai nhóm giảm biểu mẫu xuống sáu trường được điền tự động từ công cụ giám sát khi có thể, bỏ hai trong ba phê duyệt, và thêm một buổi rà soát không đổ lỗi ngắn cho mọi sự cố ưu tiên cao.

Sau sáu tuần, các nhóm thử nghiệm ghi sự cố trong lúc ngừng hoạt động thay vì sau đó, và cán bộ chất lượng thấy bản ghi đầy đủ hơn trước. Nhóm công bố một ghi chú phát hành một trang, mở rộng thay đổi cho mọi nhóm và cho kiểm toán viên xem backlog, kết quả thử nghiệm và các thước đo. Một số khó khăn còn lại. Một nhóm phân phối chưa bao giờ tham gia thử nghiệm và vẫn dùng biểu mẫu cũ, hợp đồng của một nhà cung cấp đòi một trường mà biểu mẫu mới bỏ, và cán bộ chất lượng lo rằng bỏ phê duyệt sẽ bị đặt câu hỏi trong kiểm toán tới. Trưởng bộ phận quản lý dịch vụ thêm một trường cho trường hợp nhà cung cấp, mời nhóm còn lại tham gia vòng tiếp theo và thống nhất với kiểm toán viên rà soát bản ghi sự cố ở cuộc họp quý tới.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối là người dùng của nhiều quy trình quản lý dịch vụ. Hãy tham gia thiết kế những quy trình ảnh hưởng đến bạn, cung cấp dữ liệu về cách chúng hoạt động trong thực tế và thử nghiệm. Ở nơi một bước quy trình có thể được tự động hóa trong pipeline của bạn, hãy đề nghị xây nó.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thường sở hữu các quy trình. Hãy coi mỗi quy trình là một sản phẩm: viết một mục đích, giữ một backlog, hỏi người dùng và phát hành các thay đổi nhỏ. Dành thời gian cho cải tiến quy trình và bảo vệ nó, vì công việc phân phối sẽ chèn ép.

### Lãnh đạo và quản trị

Lãnh đạo cho chủ sở hữu quy trình thẩm quyền và thời gian, và đặt kỳ vọng rằng quy trình thay đổi từ bằng chứng. Hãy yêu cầu mục đích và thước đo của từng quy trình, và backlog. Ủng hộ các thử nghiệm và sẵn lòng chấp nhận bằng chứng ở dạng mới.

### Khách hàng và người dùng

Khách hàng và người dùng dịch vụ cũng theo các quy trình, như yêu cầu và phê duyệt. Hãy nói với chủ sở hữu điều gì gây nhầm lẫn hoặc chậm. Đề nghị tham gia một thử nghiệm. Hãy mong các thay đổi được thông báo và giải thích.

## Các kiểu thất bại thường gặp

- **Quy trình không có chủ sở hữu.** Không ai thay đổi được nó. Thay vào đó, chỉ định chủ sở hữu có thẩm quyền và thời gian.
- **Thiết kế lại bùng nổ.** Cả quy trình mới được triển khai cùng lúc và bị từ chối. Thay vào đó, thay đổi theo bước nhỏ và chạy thử.
- **Thiết kế bởi ủy ban xa người dùng.** Quy trình hợp với người thiết kế. Thay vào đó, lôi kéo những người theo nó và quan sát công việc thật.
- **Thay đổi liên tục.** Thay đổi đến quá thường xuyên để tiếp nhận. Thay vào đó, phát hành theo một nhịp dự đoán được.
- **Quên yêu cầu pháp lý.** Một kiểm soát cần thiết bị bỏ. Thay vào đó, kiểm tra mỗi bước được yêu cầu vì lý do gì và nêu nguồn.
- **Thay đổi không được thông báo.** Mọi người phát hiện chúng tình cờ. Thay vào đó, công bố ghi chú phát hành ngắn.
- **Bằng chứng không được giữ.** Kiểm toán không thấy quy trình thay đổi thế nào. Thay vào đó, giữ backlog, quyết định và thước đo.
- **Không bao giờ bỏ bớt.** Các bước tích tụ. Thay vào đó, coi việc xóa là một cải tiến.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Quyền sở hữu và mục đích | Quy trình không có chủ sở hữu hay mục đích rõ ràng | Một số quy trình có chủ sở hữu | Mọi quy trình có chủ sở hữu có thẩm quyền và mục đích bằng văn bản | Chủ sở hữu được rà soát hiệu quả và được hỗ trợ | Chủ sở hữu làm việc cùng nhau giữa các nhóm để căn chỉnh quy trình từ đầu đến cuối |
| Backlog và thay đổi | Thay đổi là dự án, hiếm và lớn | Một số chủ sở hữu giữ danh sách ý tưởng | Mỗi quy trình có backlog có thứ tự và phát hành thay đổi theo bước nhỏ | Dòng chảy backlog và tác động của bản phát hành được đo | Thay đổi quy trình được điều phối giữa các quy trình và với nhà cung cấp |
| Lôi kéo người dùng | Người thiết kế hiếm khi tham vấn người dùng | Một số thử nghiệm được chạy với người dùng | Người dùng tham gia thiết kế và thử nghiệm như chuẩn | Phản hồi và mức hài lòng của người dùng được đo và hành động theo | Khách hàng và nhà cung cấp tham gia thiết kế quy trình |
| Bằng chứng và kiểm toán | Bản ghi kém và thay đổi không được ghi | Một số thay đổi quy trình được ghi | Backlog, ghi chú phát hành và thước đo đóng vai trò bằng chứng kiểm toán | Kiểm toán viên rà soát bản ghi thay đổi đều đặn | Bằng chứng được chia sẻ liên tục với kiểm toán viên và đối tác |

## Danh mục kiểm tra

- [ ] Mỗi quy trình chính có một chủ sở hữu có tên với thẩm quyền và thời gian.
- [ ] Mỗi quy trình có mục đích một câu và một tập người dùng xác định.
- [ ] Mỗi quy trình có một backlog cải tiến nhìn thấy được, có thứ tự.
- [ ] Người dùng từ phân phối và vận hành tham gia thiết kế và thử nghiệm.
- [ ] Thay đổi được chạy thử trước khi triển khai, với một lần kiểm tra xác định.
- [ ] Thay đổi quy trình được phát hành theo nhịp kèm ghi chú ngắn.
- [ ] Vài thước đo cho thấy mỗi quy trình có hiệu quả không.
- [ ] Các kiểm soát pháp lý và hợp đồng được xác định kèm nguồn của chúng.
- [ ] Kiểm toán viên đã thấy backlog, ghi chú phát hành và thước đo.
- [ ] Các bước không còn phục vụ mục đích được bỏ.

## Lời nhắc AI

**Mục đích: soạn phát biểu mục đích và danh sách người dùng cho một quy trình.**

```text
Help me write a purpose statement for this process: [name and brief description].

Who follows it: [roles].
Who it serves: [roles].
What goes wrong today: [examples].
Rules or contracts that require parts of it, with source text: [paste, or write "none known"].

Write three alternative one-sentence purpose statements, each focused on an outcome and not on the steps. Then list questions for the users to test which is closest. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: biến phản hồi và rà soát sự cố thành backlog quy trình.**

```text
Here are comments, complaints, audit findings, and review actions about [process]: [paste one per line, with source].

Group related items. For each group, write a backlog item in the form "As a [role], I want [change] so that [outcome]," using only what the text says. Add a note on who is affected and a question about evidence. Leave priority blank. List items that look like requirements from law or contract, quoting the text, and items that conflict. List what you are unsure of.
```

**Mục đích: thiết kế một thử nghiệm một tháng cho một quy trình nhẹ hơn.**

```text
Design a one-month trial of a lighter version of [process].

Current steps and where people struggle: [describe].
Proposed change: [describe].
Teams that could take part: [list].
Controls that must stay, with source: [list, or write "none known"].

Give: the trial scope, what we expect to see, what to measure before and during (leave targets as [to be agreed]), how to gather user feedback, conditions to stop, and what evidence to keep for auditors. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: viết ghi chú phát hành cho một thay đổi quy trình.**

```text
Write a short release note for a change to [process].

What changed: [describe].
Why: [describe].
Who is affected and from what date: [describe].
What people should do differently: [describe].
Where to ask questions: [contact].

Write under 150 words in plain language, with a heading, a short list of changes, and what to do. Use only my information. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

## Kỹ năng AI

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để làm rõ ai sở hữu từng quy trình và ai được tham vấn.
- [user-story](../../../../skills/user-story/SKILL.md): dùng để viết các hạng mục backlog quy trình từ góc nhìn của người dùng.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): dùng để nghiên cứu một quy trình thực sự chạy thế nào và gặp khó ở đâu.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để rà soát một quy trình đang hoạt động ra sao cùng người dùng của nó.
- [kaizen](../../../../skills/kaizen/SKILL.md): dùng để lập kế hoạch các cải tiến nhỏ, liên tục cho một quy trình.

## Nguồn chính

- **The Scrum Guide** (Ken Schwaber và Jeff Sutherland, scrumguides.org): nguồn cho các vai trò và artifact được dùng ở đây như một phép loại suy cho quyền sở hữu quy trình và backlog.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): phía agile của cách tiếp cận thiết kế.
- **ITIL** (Wikipedia): lịch sử về việc ITIL 4 căn chỉnh với cách làm việc agile, DevOps và lean.
- **ISO/IEC 20000** (Wikipedia): danh sách các phần, gồm hướng dẫn gần đây về agile và DevOps.

## Tài liệu tham khảo

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
