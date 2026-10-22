# Quản lý vấn đề

**Quản lý vấn đề tìm và loại bỏ các nguyên nhân đằng sau những sự cố lặp lại, và dạng agile của nó là một dòng đều đặn các bản sửa nhỏ, dựa trên bằng chứng trong backlog thay vì những cuộc điều tra lớn thỉnh thoảng mới có.**

## Vì sao điều này quan trọng

Một nhóm xử lý sự cố tốt nhưng không bao giờ loại bỏ nguyên nhân của chúng là đang chạy trên máy chạy bộ. Mỗi lần ngừng hoạt động được sửa chữa, cùng một lỗi quay lại, và các kỹ sư trực mệt mỏi. Quản lý vấn đề là thực hành bước ra khỏi cái máy chạy bộ đó: nó hỏi vì sao sự cố xảy ra, liệu nó có xảy ra lần nữa không và điều gì sẽ ngăn nó.

Các nhóm agile ở vị trí tốt để làm việc này. Họ có một backlog trong đó một bản sửa có thể cạnh tranh với một tính năng, họ làm việc theo chu kỳ ngắn khiến các bản sửa nhỏ rẻ, và họ tổ chức retrospective nơi các mẫu hình có thể được nhận ra. Điều họ thường thiếu là thói quen nối các sự cố với nhau và kỷ luật tìm nguyên nhân cho đúng. Quản lý vấn đề cung cấp cả hai.

[Bài viết Wikipedia về phân tích nguyên nhân gốc](https://en.wikipedia.org/wiki/Root_cause_analysis) là nguồn chính đã đọc cho chủ đề này, vì Wikipedia tiếng Anh không có bài nào tên "Problem management" tại địa chỉ đã kiểm tra. Bài viết đó mô tả phân tích nguyên nhân gốc (RCA) là một phương pháp giải quyết vấn đề được dùng trong vận hành CNTT và các lĩnh vực khác, và mang các thẻ bảo trì về thiếu trích dẫn. Từ vựng ITIL dùng ở đây, như lỗi đã biết và biện pháp tạm thời, đến từ các mô tả được xuất bản rộng rãi về thực hành, mà cuốn sách này không thể xác nhận với văn bản của chủ sở hữu khung. Hãy đọc các ấn phẩm hiện hành của chủ sở hữu khi các định nghĩa chính xác quan trọng (xem Chủ đề 2.2 — ITIL).

## Các khái niệm cốt lõi

### Sự cố, vấn đề, lỗi đã biết

Ba thuật ngữ được dùng cùng nhau, và sự phân biệt là quan trọng:

| Thuật ngữ | Ý nghĩa, như được dùng rộng rãi trong ITSM | Ví dụ |
|---|---|---|
| **Sự cố** | Một sự gián đoạn ngoài kế hoạch đối với một dịch vụ hoặc sự suy giảm chất lượng của nó | Trang đặt chỗ ngừng hoạt động hai mươi phút |
| **Vấn đề** | Nguyên nhân gốc, hoặc nguyên nhân bị nghi ngờ, của một hay nhiều sự cố | Một lỗi rò rỉ bộ nhớ trong dịch vụ đặt chỗ |
| **Lỗi đã biết** | Một vấn đề đã xác định được nguyên nhân, thường có một biện pháp tạm thời được ghi lại | Lỗi rò rỉ bộ nhớ đã được hiểu; khởi động lại dịch vụ mỗi đêm ngăn ngừng hoạt động cho đến khi nó được sửa |

Một **biện pháp tạm thời** (workaround) là cách giảm hoặc tránh tác động của một sự cố hay vấn đề mà không loại bỏ nguyên nhân của nó. Quản lý vấn đề là về việc loại bỏ nguyên nhân, và quản lý sự cố là về việc khôi phục dịch vụ (xem Chủ đề 3.2 — Quản lý sự cố).

### Phản ứng và chủ động

Bài viết về phân tích nguyên nhân gốc phân biệt các cách tiếp cận phản ứng và chủ động nói chung. Công việc phản ứng xử lý triệu chứng nhanh chóng. Công việc chủ động nhằm ngăn ngừa vấn đề và đặt độ chính xác chẩn đoán lên trên tốc độ. Trong thực hành ITSM, cả hai đều tồn tại: quản lý vấn đề phản ứng điều tra vấn đề sau các sự cố, và quản lý vấn đề chủ động tìm các mẫu hình và điểm yếu trước khi chúng gây ra sự cố.

### Nguyên nhân gốc là gì

Bài viết định nghĩa nguyên nhân gốc bằng một phép thử thực tế: một yếu tố là nguyên nhân gốc của một vấn đề nếu loại bỏ nó ngăn vấn đề tái diễn. Nó phân biệt nguyên nhân gốc với các yếu tố nhân quả khác. Đây là một quy tắc hữu ích. Nếu bạn loại bỏ một yếu tố mà vấn đề vẫn có thể quay lại, bạn đã tìm thấy một yếu tố góp phần, không phải gốc.

Bài viết cũng cảnh báo về các giới hạn. Nó nói rằng thiếu dữ liệu giám sát, khối lượng sự kiện rất cao, nhiều nguyên nhân gốc và những điều tra viên dừng ở một cái gốc hời hợt đều làm phân tích phức tạp. Trong CNTT, nó lưu ý, RCA thường thiếu cây lỗi hay đặc tả thiết kế, nên "không có nguyên nhân gốc" đã thành một câu nói phổ biến. Với các hệ thống phức tạp, hãy chờ đợi nhiều nguyên nhân góp phần chứ không phải một thủ phạm duy nhất.

### Các nguyên tắc của phân tích nguyên nhân gốc

Bài viết liệt kê các bước chung:

1. Mô tả vấn đề rõ ràng.
2. Dựng một dòng thời gian từ vận hành bình thường đến lúc hỏng.
3. Tách nguyên nhân gốc khỏi các yếu tố nhân quả khác.
4. Vẽ một đồ thị nhân quả nối nguyên nhân gốc với vấn đề.

Nó thêm rằng điều tra viên nên xem các tuyến phòng thủ đã hỏng hoặc còn thiếu (phân tích rào chắn), tránh thiên lệch trong các hướng điều tra, quyết định các hành động khắc phục và rà soát xem các hành động đó có hiệu quả không.

### Các phương pháp

Bài viết nói rằng, theo ISO/IEC 31010, RCA có thể dùng năm câu hỏi vì sao, phân tích dạng lỗi và tác động (FMEA), phân tích cây lỗi, sơ đồ Ishikawa (xương cá) và phân tích Pareto. Nó ghi công cho Kaoru Ishikawa về sơ đồ nhân quả mang tên ông. Nó cũng gọi các phương pháp xương cá và năm câu hỏi vì sao là "chưa đủ chặt chẽ", một ý kiến mà nó không dẫn nguồn. Cách đọc thực tế: các phương pháp đơn giản là điểm khởi đầu tốt cho thảo luận nhóm, và các lỗi phức tạp hoặc rủi ro cao có thể cần phương pháp chặt chẽ hơn.

| Phương pháp | Nó làm gì | Khi nào nó giúp |
|---|---|---|
| **Năm câu hỏi vì sao** | Hỏi "vì sao" lặp lại để đi từ một triệu chứng về phía một nguyên nhân | Thảo luận nhanh ở cấp nhóm về các chuỗi nguyên nhân đơn giản |
| **Sơ đồ Ishikawa (xương cá)** | Nhóm các nguyên nhân có thể theo danh mục | Động não nhiều nguyên nhân có thể |
| **Phân tích Pareto** | Xếp hạng nguyên nhân theo tần suất hay tác động | Chọn vấn đề lặp lại nào cần xử lý trước |
| **Phân tích cây lỗi** | Vẽ các tổ hợp hỏng dẫn đến một kết quả | Các lỗi quan trọng về an toàn hoặc phức tạp |
| **FMEA** | Nhìn trước các bộ phận có thể hỏng thế nào và tác động sẽ ra sao | Rà soát thiết kế chủ động |

### Các hành động khắc phục hiệu quả

Bài viết nói các hành động khắc phục chỉ thêm giấy tờ hay đào tạo thì kém hiệu quả hơn. Trong thực tế, điều này gợi ý ưu tiên các hành động thay đổi hệ thống: tự động hóa một kiểm tra, loại bỏ một dạng hỏng, thêm một biện pháp bảo vệ, cải thiện giám sát. Một hành động như "nhắc các kỹ sư cẩn thận" là yếu.

### Nguyên tắc không đổ lỗi

Điều tra vấn đề chia sẻ nguyên tắc không đổ lỗi được mô tả cho postmortem trong cuốn SRE của Google: xác định các nguyên nhân góp phần mà không đổ lỗi cho cá nhân, vì con người có thể được dạy còn hệ thống có thể được sửa (xem Chủ đề 3.2 — Quản lý sự cố). Một cuộc điều tra tìm ra "lỗi con người" rồi dừng thường đã dừng quá sớm. Hãy hỏi điều gì làm cho sai sót có thể xảy ra và điều gì sẽ làm nó khó hơn.

### Quản lý vấn đề trong một dòng chảy agile

Một cách tiếp cận agile thực tế trông như sau:

- Sự cố và postmortem tạo ra các vấn đề ứng viên.
- Một buổi rà soát ngắn, định kỳ nhóm các sự cố lặp lại và xếp hạng vấn đề theo tác động và tần suất.
- Các vấn đề được chọn đi vào backlog như các hạng mục thông thường, với người chịu trách nhiệm, một giả thuyết và giới hạn thời gian điều tra.
- Biện pháp tạm thời được ghi thành lỗi đã biết để bàn dịch vụ và kỹ sư trực có thể dùng (xem Chủ đề 3.9 — Quản lý tri thức).
- Các bản sửa nhỏ và được kiểm thử, phát hành theo cách thông thường, và được kiểm tra sau đó để xem các sự cố đã dừng chưa.

## Thực hành tốt

1. **Nối sự cố với vấn đề.** Ghi lại những sự cố nào có vẻ cùng nguyên nhân. Không có liên kết bạn không thấy được mẫu hình, và không có mẫu hình bạn không thể biện hộ cho một bản sửa.
2. **Rà soát sự cố để tìm mẫu hình theo lịch.** Mỗi tháng một lần, nhóm các sự cố gần đây theo dịch vụ và nguyên nhân có khả năng và chọn vài nhóm đầu. Dùng tư duy Pareto: một vài nguyên nhân thường chiếm phần lớn nỗi đau.
3. **Coi vấn đề là hạng mục backlog.** Cho mỗi vấn đề được chọn một người chịu trách nhiệm, một phát biểu và một giới hạn thời gian điều tra, và để nó cạnh tranh với công việc khác. Một hàng đợi "vấn đề" riêng mà không ai lên lịch là một nghĩa địa.
4. **Bắt đầu với một phát biểu vấn đề rõ ràng.** Viết điều gì xảy ra, ở đâu, bao lâu một lần và tác động là gì, dùng sự thật. Phát biểu mơ hồ dẫn đến bản sửa mơ hồ.
5. **Dựng một dòng thời gian.** Thu thập log, thay đổi và sự kiện từ vận hành bình thường đến lúc hỏng. Bài viết liệt kê dòng thời gian là một bước cốt lõi, và nhiều bất ngờ đến từ những thay đổi mà không ai nối lại.
6. **Hỏi nguyên nhân mà nếu loại bỏ sẽ ngăn tái diễn.** Dùng phép thử của bài viết. Khi nhóm đề xuất một nguyên nhân, hãy hỏi loại bỏ nó có ngăn vấn đề quay lại không.
7. **Chờ đợi nhiều hơn một nguyên nhân.** Tìm các yếu tố góp phần trong thiết kế, giám sát, quy trình và tri thức của con người. Đừng dừng ở nguyên nhân hợp lý đầu tiên.
8. **Chọn phương pháp phù hợp với vấn đề.** Dùng năm câu hỏi vì sao hoặc xương cá cho thảo luận nhóm nhanh, và các công cụ chặt chẽ hơn cho các lỗi nghiêm trọng hay phức tạp.
9. **Ưu tiên các hành động thay đổi hệ thống.** Ưu tiên tự động hóa, biện pháp bảo vệ và giám sát tốt hơn thay vì lời nhắc và đào tạo. Ghi lại tác động dự kiến để bạn kiểm tra được.
10. **Ghi biện pháp tạm thời thành lỗi đã biết.** Viết triệu chứng trông thế nào, biện pháp tạm thời và ai sở hữu bản sửa. Chia sẻ bản ghi với bàn dịch vụ và nhân viên trực.
11. **Kiểm tra bản sửa có hiệu quả không.** Sau một bản sửa, theo dõi sự tái diễn trong một khoảng thời gian đã thống nhất và báo cáo kết quả. Một bản sửa không bao giờ được kiểm tra chỉ là một niềm hy vọng.
12. **Chia sẻ điều bạn tìm ra.** Công bố các tóm tắt ngắn về vấn đề và bản sửa để các nhóm khác nhận ra các mẫu hình tương tự.

## Câu hỏi để thảo luận với nhóm của bạn

**Sự cố nào cứ quay lại, và chúng ta nghĩ nguyên nhân là gì?**

Mời mọi người nêu sự cố họ mệt mỏi nhất. So sánh các câu trả lời. Rồi hỏi mỗi người tin nguyên nhân là gì, và họ biết bằng cách nào. Niềm tin thường khác nhau, điều này cho thấy có rất ít bằng chứng chung. Người điều phối có thể hỏi dữ liệu nào sẽ giải quyết được. Chọn một cái để điều tra với giới hạn thời gian.

**Làm sao chúng ta biết hai sự cố có cùng nguyên nhân hay không?**

Xem cách các sự cố được ghi lại và hỏi có ai tìm nhanh được các sự cố liên quan không. Các câu trả lời điển hình là văn bản tự do, trí nhớ hay may mắn. Hỏi thay đổi nhỏ nào ở bản ghi sẽ giúp, như một trường cho dịch vụ và nguyên nhân có khả năng. Thống nhất một thay đổi.

**Chúng ta làm gì khi tìm thấy "lỗi con người" trong một buổi rà soát?**

Xin một ví dụ gần đây. Câu hỏi là buổi rà soát có dừng ở đó không. Bàn xem điều gì trong hệ thống làm cho sai sót có thể xảy ra: hướng dẫn không rõ, một công cụ gây nhầm lẫn, áp lực thời gian. So sánh với ý tưởng rằng bạn không thể sửa con người, nhưng bạn có thể sửa hệ thống. Thống nhất một câu hỏi để hỏi mỗi lần, như "Điều gì làm việc này dễ xảy ra?"

**Hành động nào từ các buổi rà soát trước thực sự đã thay đổi hệ thống, và hành động nào chỉ thêm một lời nhắc?**

Liệt kê các hành động từ năm buổi rà soát gần nhất và đánh dấu mỗi cái là thay đổi hệ thống hay lời nhắc. Bài viết nói lời nhắc và giấy tờ kém hiệu quả hơn. Hỏi vì sao lời nhắc phổ biến thế: chúng nhanh, rẻ và có cảm giác như hành động. Chọn một lời nhắc để thay bằng một bản sửa mạnh hơn.

**Chúng ta có những biện pháp tạm thời nào mà chưa ai ghi lại?**

Hỏi các kỹ sư trực và chuyên viên bàn dịch vụ họ dùng thủ thuật gì. Mỗi biện pháp tạm thời chưa ghi là một rủi ro. Ghi chúng thành lỗi đã biết với triệu chứng, biện pháp tạm thời và người chịu trách nhiệm. Người điều phối có thể hỏi ai được lợi từ mỗi bản ghi. Làm một danh sách ngắn trong tuần này.

**Làm sao chúng ta biết một bản sửa đã có hiệu quả?**

Chọn một bản sửa gần đây và hỏi bằng chứng nào đã cho thấy điều đó. Nếu câu trả lời là "không còn phàn nàn nữa", hãy hỏi bạn đã chờ bao lâu và đã đo gì. Bàn một kiểm tra đơn giản: theo dõi triệu chứng cụ thể trong một khoảng thời gian đặt trước. Thống nhất ghi lại kiểm tra với mỗi bản sửa.

## Trong thực tế: một ví dụ agile ITIL

Một công ty hậu cần cỡ trung vận hành một dịch vụ lập lộ trình mà các tài xế và điều phối viên của họ dùng. Nhóm nền tảng chín người đã xử lý cùng một sự cố khoảng hai tuần một lần: việc tính lộ trình hết thời gian chờ trong mười đến mười lăm phút vào buổi sáng rồi phục hồi. Mỗi lần, kỹ sư trực khởi động lại một tiến trình worker, và sự cố được đóng. Các điều phối viên phàn nàn rằng không thể tin cậy việc lập kế hoạch buổi sáng.

Trưởng nhóm bắt đầu một buổi rà soát sự cố hằng tháng, nhóm chúng theo dịch vụ và nguyên nhân có khả năng. Các lần hết thời gian chờ buổi sáng đứng đầu danh sách. Cô viết một phát biểu vấn đề từ các bản ghi sự cố: tình trạng hết thời gian chờ xảy ra vào các ngày trong tuần từ 7:00 đến 7:30, kéo dài mười đến mười lăm phút và ảnh hưởng đến mọi điều phối viên. Nhóm dựng một dòng thời gian gồm một lần nhập dữ liệu theo lịch lúc 7:00 và một thay đổi gần đây làm tăng kích thước lần nhập. Một buổi thảo luận năm câu hỏi vì sao gợi ý rằng lần nhập làm bão hòa cơ sở dữ liệu. Họ thử cách sửa hiển nhiên là thêm năng lực, nhưng sự cố vẫn tiếp diễn với tần suất thấp hơn, nên họ kết luận rằng năng lực là yếu tố góp phần chứ không phải gốc.

Một lần xem xét thứ hai thấy rằng lần nhập khóa một bảng mà các phép tính lộ trình cũng đọc. Nhóm chuyển lần nhập sang một bản sao riêng và thêm một cảnh báo cho các lần chờ khóa. Họ ghi việc khởi động lại là một lỗi đã biết với triệu chứng và biện pháp tạm thời cho đến khi bản sửa hoạt động, và họ thống nhất theo dõi triệu chứng trong sáu tuần. Các sự cố dừng lại. Một số vấn đề vẫn còn: một lần nhập khác từ một đối tác vẫn chạy vào giờ cao điểm, và nhóm chưa thuyết phục được đối tác đổi lịch. Họ đặt lịch của đối tác lên chương trình lập kế hoạch tiếp theo, và giữ cảnh báo khóa.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối nắm tri thức để sửa nguyên nhân. Hãy đưa các vấn đề hàng đầu vào backlog của bạn, và coi chúng là công việc tạo lòng tin. Thêm giám sát và kiểm thử lẽ ra đã phát hiện nguyên nhân, và viết lỗi đã biết bằng ngôn ngữ mà bàn dịch vụ dùng được.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thấy các sự cố và giữ các bản ghi. Nối các sự cố, chạy buổi rà soát hằng tháng và ghi biện pháp tạm thời thành lỗi đã biết. Đẩy bằng chứng đến các nhóm phân phối dưới dạng làm nên lập luận, với tần suất, tác động và dòng thời gian.

### Lãnh đạo và quản trị

Lãnh đạo quyết định việc sửa vấn đề có được dành thời gian không. Hãy hỏi các vấn đề lặp lại hàng đầu và đang làm gì về chúng. Cưỡng lại việc đếm số sự cố đã đóng như một thước đo thành công, vì nó thưởng cho sửa chữa. Ủng hộ những bản sửa tốn công nhưng loại bỏ nỗi đau.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi khi các lỗi lặp lại dừng. Hãy báo các vấn đề lặp lại kèm ngày và tác động, vì mẫu hình giúp nhóm. Hãy hỏi nhà cung cấp họ đã làm gì về nguyên nhân của các lần ngừng hoạt động lặp lại, và mong một câu trả lời vượt quá "chúng tôi đã khởi động lại nó".

## Các kiểu thất bại thường gặp

- **Sửa chữa mà không loại bỏ.** Sự cố được đóng và quay lại. Thay vào đó, nối các lần lặp với một vấn đề và sửa nguyên nhân.
- **Một hàng đợi vấn đề không ai lên lịch.** Vấn đề chờ mãi. Thay vào đó, đưa các vấn đề được chọn vào backlog với người chịu trách nhiệm và giới hạn thời gian.
- **Dừng ở lỗi con người.** Buổi rà soát kết thúc với một người để đổ lỗi. Thay vào đó, hỏi điều gì làm cho sai sót có thể xảy ra và sửa hệ thống.
- **Hành động yếu.** Lời nhắc và đào tạo thay cho thay đổi hệ thống. Thay vào đó, ưu tiên tự động hóa, biện pháp bảo vệ và giám sát tốt hơn.
- **Tìm một nguyên nhân gốc duy nhất.** Nhóm khăng khăng có một thủ phạm. Thay vào đó, chấp nhận nhiều nguyên nhân góp phần và xử lý những cái hiệu quả nhất.
- **Không kiểm tra bản sửa có hiệu quả.** Vấn đề được đóng khi phát hành. Thay vào đó, định nghĩa một cách để thấy triệu chứng có quay lại không.
- **Biện pháp tạm thời không được ghi.** Tri thức nằm ở các cá nhân. Thay vào đó, ghi lỗi đã biết và chia sẻ chúng.
- **Sùng bái phương pháp.** Các nhóm tranh cãi về kỹ thuật. Thay vào đó, chọn phương pháp phù hợp với vấn đề và dồn công sức vào bằng chứng.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Liên kết và ưu tiên | Sự cố không được nối | Một số nhóm ghi nhận các lần lặp | Sự cố được nối với vấn đề và rà soát mẫu hình theo lịch | Vấn đề được xếp hạng theo tác động và tần suất đã đo | Ưu tiên vấn đề được chia sẻ giữa các nhóm và nhà cung cấp |
| Điều tra | Điều tra không chính thức | Một số nhóm dùng phương pháp đơn giản | Một cách tiếp cận bằng văn bản với dòng thời gian và bằng chứng được dùng | Chất lượng và thời gian điều tra được rà soát | Điều tra trải qua các nhóm và nhà cung cấp với dữ liệu chung |
| Hành động khắc phục | Bản sửa tùy hứng hoặc là lời nhắc | Một số bản sửa thay đổi hệ thống | Hành động được chọn theo tác dụng, với người chịu trách nhiệm và ngày | Tác dụng được kiểm tra và sự tái diễn được đo | Bản sửa lan sang các hệ thống tương tự trong tổ chức |
| Lỗi đã biết và tri thức | Biện pháp tạm thời không được ghi | Một số được cá nhân ghi lại | Lỗi đã biết được ghi và chia sẻ với bàn dịch vụ và nhân viên trực | Việc dùng và độ chính xác của lỗi đã biết được theo dõi | Lỗi đã biết được chia sẻ với người dùng, nhà cung cấp và đối tác |

## Danh mục kiểm tra

- [ ] Các sự cố có vẻ cùng nguyên nhân được nối với nhau.
- [ ] Một buổi rà soát định kỳ nhóm các sự cố và chọn các vấn đề lặp lại hàng đầu.
- [ ] Các vấn đề được chọn nằm trong backlog với người chịu trách nhiệm và giới hạn thời gian.
- [ ] Mỗi vấn đề có một phát biểu bằng văn bản với sự thật.
- [ ] Một dòng thời gian được dựng cho mỗi cuộc điều tra.
- [ ] Các buổi rà soát hỏi điều gì trong hệ thống đã cho phép bất kỳ lỗi con người nào.
- [ ] Hành động ưu tiên thay đổi hệ thống hơn lời nhắc, với tác dụng dự kiến được ghi lại.
- [ ] Biện pháp tạm thời được ghi thành lỗi đã biết và chia sẻ với bàn dịch vụ và nhân viên trực.
- [ ] Mỗi bản sửa có một kiểm tra tái diễn trong một khoảng thời gian đã thống nhất.
- [ ] Tóm tắt về vấn đề và bản sửa được chia sẻ với các nhóm khác.

## Lời nhắc AI

**Mục đích: tìm các sự cố lặp lại và các vấn đề ứng viên trong bản ghi của bạn.**

```text
Below are descriptions of [number] incidents from the last [period], with dates and the service affected: [paste anonymized descriptions, one per line].

Group the incidents that look as if they might share a cause, based only on what is written. For each group, list the incidents, give a one-sentence description of the common symptom, and say how confident you are and why (low, medium, high). List incidents that do not fit any group. Do not guess at technical causes beyond the text. Suggest three questions for the team to ask to test each group. List what you are unsure of.
```

**Mục đích: viết một phát biểu vấn đề rõ ràng từ bằng chứng.**

```text
Help me write a problem statement.

What we observe, with dates and counts: [paste facts].
What is affected and who is affected: [describe].
What we know about when it started and what changed around then: [paste, or write "unknown"].
What we have already tried: [paste].

Write a problem statement of three to five sentences that describes what happens, where, how often, and the impact, without naming a cause. Then list the facts we still need and where to find them. Mark anything that is an assumption. Do not suggest causes as facts. List what you are unsure of.
```

**Mục đích: chuẩn bị một buổi năm câu hỏi vì sao và ghi lại chuỗi lập luận.**

```text
Help me prepare a five whys discussion for this problem: [paste the problem statement].

Facts we have: [list evidence such as logs, timelines, and changes].

Prepare: a first "why" question grounded in the evidence, a template where each answer records the evidence for it, and a reminder to branch when there is more than one possible answer. Warn me against stopping at human error. After the session I will paste the notes: do not invent answers yourself. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: đánh giá các hành động khắc phục đề xuất có thay đổi hệ thống không.**

```text
Here are the actions proposed after our review: [paste a list].

For each, say whether it changes the system (for example automates a check, removes a failure mode, adds a safeguard, improves monitoring) or relies on people remembering or on training, and give one sentence of reasoning from the text only. For each reminder-type action, suggest a stronger alternative as a question for the team. Suggest how we could check whether each action worked, without inventing numbers. List what you are unsure of.
```

## Kỹ năng AI

- [root-cause-analysis](../../../../skills/root-cause-analysis/SKILL.md): dùng để hướng dẫn một cuộc điều tra từ một phát biểu vấn đề rõ ràng đến một nguyên nhân đã được kiểm chứng.
- [fishbone-diagram](../../../../skills/fishbone-diagram/SKILL.md): dùng để động não các nguyên nhân có thể theo danh mục cùng một nhóm.
- [cause-and-effect-diagram](../../../../skills/cause-and-effect-diagram/SKILL.md): dùng để vẽ cách nguyên nhân và hệ quả nối với nhau trong một lỗi phức tạp.
- [postmortem](../../../../skills/postmortem/SKILL.md): dùng để chạy buổi rà soát xác định các vấn đề ứng viên.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): dùng khi bạn cần các phương pháp dựa trên dữ liệu để phân tích biến thiên hoặc lỗi lặp lại.

## Nguồn chính

- **Root cause analysis** (Wikipedia): một tổng quan chung về phương pháp, nguyên tắc và giới hạn, với ISO/IEC 31010 được nêu cho các phương pháp.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): cách tiếp cận không đổ lỗi để học từ thất bại.
- **Managing Incidents** (*Site Reliability Engineering*, Google, sre.google): cách xử lý sự cố nuôi phân tích về sau.
- **Ishikawa diagram** và **Five whys** (Wikipedia): bối cảnh về hai phương pháp đơn giản phổ biến.

## Tài liệu tham khảo

1. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Managing Incidents — Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
4. Five whys — Wikipedia — https://en.wikipedia.org/wiki/Five_whys
5. Ishikawa diagram — Wikipedia — https://en.wikipedia.org/wiki/Ishikawa_diagram
6. Failure mode and effects analysis — Wikipedia — https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis
7. Fault tree analysis — Wikipedia — https://en.wikipedia.org/wiki/Fault_tree_analysis
8. Pareto analysis — Wikipedia — https://en.wikipedia.org/wiki/Pareto_analysis
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
10. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
