# Kỹ năng và lời nhắc AI

**Một lời nhắc tốt cho trợ lý AI tài liệu, nhiệm vụ và các kiểm tra nó cần, và một kỹ năng tốt đóng gói know-how đó để nhóm dùng lại, nên các lời nhắc và kỹ năng AI trong cuốn sách này là điểm khởi đầu để bạn điều chỉnh và xác minh.**

## Vì sao điều này quan trọng

Mỗi chủ đề trong cuốn sách này kết thúc bằng các lời nhắc và kỹ năng. Chúng tồn tại vì nhiều tác vụ trong quản lý dịch vụ rất hợp với một trợ lý có thể đọc một đống ticket, soạn một runbook hay biến ghi chú thành kế hoạch. Chúng cũng tồn tại vì một yêu cầu mơ hồ gửi AI cho ra kết quả mơ hồ, đôi khi sai. Sự khác biệt giữa một câu trả lời hữu ích và một câu trả lời hợp lý nhưng rỗng thường nằm ở cách viết yêu cầu và tài liệu đi kèm.

Chủ đề này giải thích cách dùng các lời nhắc và kỹ năng của cuốn sách, vì sao chúng được viết như vậy và cách viết của riêng bạn cho nhóm. Nó nói về thói quen nhiều hơn mẹo: đưa tài liệu thật, nói điều bạn muốn, nhờ trợ lý đánh dấu điều nó không biết và kiểm tra điều trở lại. Nó xây trên các lưu ý của chủ đề trước, vốn mô tả nơi AI giúp ích và nơi nó có thể gây hại (xem Chủ đề 6.2 — AI trong quản lý dịch vụ CNTT).

Các nguồn mang tính thực hành. Kỹ năng `skills/prompt-engineering` của chính cuốn sách mô tả viết lời nhắc là thực hành có chủ đích thiết kế và lặp lại các chỉ dẫn đưa cho một mô hình ngôn ngữ, coi lời nhắc như một phần mềm nhỏ được viết, kiểm thử trên các trường hợp thật và sửa. Tài liệu Claude Code mô tả cách các kỹ năng được cấu trúc như các thư mục có một tệp `SKILL.md`. [Bài viết Wikipedia về mô hình ngôn ngữ lớn](https://en.wikipedia.org/wiki/Large_language_model) cho nền tảng. Không nguồn nào đã đọc cho cuốn sách này đưa bằng chứng về kỹ thuật lời nhắc nào hiệu quả nhất; hãy coi các kỹ thuật ở đây là thói quen để thử.

## Các khái niệm cốt lõi

### Lời nhắc, kỹ năng và chúng dùng để làm gì

Một **lời nhắc** là chỉ dẫn và tài liệu bạn đưa cho trợ lý AI cho một tác vụ. Một **kỹ năng**, theo định dạng dùng trong thư mục `skills/` của cuốn sách này, là một gói know-how dùng lại được cho một loại tác vụ: một thư mục chứa tệp `SKILL.md` nói khi nào dùng nó và làm việc thế nào. Trong tài liệu của Claude Code, một kỹ năng là một thư mục có tệp `SKILL.md` bắt buộc với phần frontmatter có tên và mô tả, và phần thân đưa chỉ dẫn; trợ lý dùng mô tả để quyết định khi nào áp dụng kỹ năng, và chỉ nạp toàn bộ phần thân khi nó được dùng.

| | Lời nhắc | Kỹ năng |
|---|---|---|
| **Phạm vi** | Một tác vụ, bây giờ | Một loại tác vụ, dùng lại |
| **Nằm ở** | Trong một cuộc chat hay một tài liệu | Trong một thư mục, như `skills/` hay thư mục kỹ năng của một dự án |
| **Được đổi bởi** | Bạn, mỗi lần | Nhóm, có rà soát |
| **Tốt nhất cho** | Phân tích cụ thể tài liệu của chính bạn | Các phương pháp lặp lại như chạy một retrospective |

### Các lời nhắc của cuốn sách được xây thế nào

Các lời nhắc trong cuốn sách này theo một mẫu đơn giản, được nêu trong hướng dẫn văn phong:

1. **Một dòng mục đích in đậm** nói lời nhắc để làm gì.
2. **Một khối có rào** chứa văn bản bạn có thể sao chép và dán.
3. **Chỗ giữ chỗ trong ngoặc vuông** đánh dấu điều bạn phải cung cấp, kèm gợi ý nên đặt gì.
4. **Một nhiệm vụ** nêu đầu ra mong muốn.
5. **Ranh giới**: đừng bịa số, nguồn, trích dẫn hay tuyên bố tuân thủ; chỉ dùng tài liệu đã dán.
6. **Một yêu cầu hỏi trước** khi thiếu thông tin, và đánh dấu các giả định.
7. **Một kiểm tra cuối**: "List what you are unsure of."

Các phần này tồn tại có lý do. Chỗ giữ chỗ buộc bạn mang tài liệu thật. Ranh giới ngăn trợ lý lấp khoảng trống bằng sự bịa đặt. Yêu cầu câu hỏi làm rõ biến một lần đoán thành một cuộc trò chuyện ngắn. Dòng cuối làm trợ lý tự đánh dấu điểm yếu của nó, giúp bạn quyết định cần kiểm tra gì.

### Các mẫu hình có ích

Kỹ năng `prompt-engineering` của cuốn sách liệt kê các kỹ thuật, mà cuốn sách tóm tắt bằng lời của mình:

- **Cụ thể về đầu ra bạn muốn,** như một bảng có các cột có tên, hay một danh sách đánh số tối đa năm mục, để trợ lý không phải đoán hình dạng.
- **Đưa ví dụ khi chỉ dẫn mơ hồ,** cho thấy mẫu bạn muốn trong một mẫu ngắn.
- **Cung cấp ngữ cảnh mà trợ lý không thể biết,** như thuật ngữ, ràng buộc và tài liệu đang bàn của bạn, và nói nó không nên giả định gì.
- **Lặp lại trên các trường hợp thử nghiệm thật,** chạy lời nhắc trên nhiều đầu vào thật và sửa nơi nó thất bại, thay vì đánh giá nó bằng một ví dụ tốt.

Một lời nhắc được tinh chỉnh trên một đầu vào có thể thất bại trên các đầu vào khác. Kỹ năng nêu rõ rằng một đầu vào ngắn, diễn đạt lạ hoặc thiếu một trường có thể làm hỏng một lời nhắc đã xử lý được ví dụ ban đầu.

### Thói quen xác minh

Mọi đầu ra cần được kiểm tra tương xứng với cái giá của việc sai. Các thói quen có ích:

- **Kiểm tra sự thật với nguồn bạn đã dán.** Nhờ trợ lý trích phần tài liệu của bạn hỗ trợ mỗi phát biểu.
- **Đừng bao giờ chấp nhận tham chiếu bạn chưa thấy.** Các vụ việc mô tả ở chủ đề trước gồm trích dẫn tòa án bịa; đừng lặp lại chúng.
- **Tách điều trợ lý đã thấy khỏi điều nó giả định.** Các lời nhắc của cuốn sách yêu cầu điều này.
- **Tự kiểm tra các phép tính,** hoặc nhờ xem các bước và kiểm tra chúng.
- **Dùng một lần xem thứ hai cho bất cứ thứ gì rời khỏi nhóm,** như trả lời khách hàng hay một chính sách.
- **Giữ bản ghi các cách dùng đáng kể,** như mô tả ở Chủ đề 6.2 — AI trong quản lý dịch vụ CNTT.

### Bảo vệ dữ liệu

Trước khi dán bất cứ thứ gì vào một lời nhắc, hãy hỏi nó chứa gì và sẽ đi đâu. Gỡ dữ liệu cá nhân, thông tin xác thực và chi tiết thương mại bí mật trừ khi công cụ và điều khoản của nó đã được duyệt cho chúng (xem Chủ đề 3.13 — Quản lý an toàn thông tin). Các lời nhắc của cuốn sách yêu cầu bạn ẩn danh, nhưng trách nhiệm là của bạn. Khi nghi ngờ, hãy mô tả tình huống bằng thuật ngữ chung.

### Một kỹ năng trông thế nào

Theo tài liệu Claude Code và các kỹ năng trong cuốn sách này, một kỹ năng là một thư mục như `skills/runbook/` chứa `SKILL.md`. Tệp bắt đầu bằng frontmatter YAML giữa các dấu `---`, chứa ít nhất một `name` và một `description`. Tài liệu nói mô tả cho trợ lý biết kỹ năng làm gì và khi nào dùng, và khuyên đặt trường hợp dùng chính lên đầu. Phần thân đưa phương pháp bằng markdown. Các tệp khác, như tài liệu tham chiếu hay script, có thể nằm cạnh và được nạp khi cần; tài liệu khuyên giữ chính `SKILL.md` ngắn, dưới 500 dòng.

Các kỹ năng được sao chép trong cuốn sách này theo cùng hình dạng. Mô tả của chúng bắt đầu bằng "Use when asked to…", làm rõ khi nào mỗi cái áp dụng.

### Kỹ năng nằm ở đâu

Tài liệu mô tả các kỹ năng cá nhân trong thư mục kỹ năng ở thư mục home của người dùng, các kỹ năng dự án trong thư mục kỹ năng của một kho mã có thể được commit và chia sẻ với một nhóm, và các nơi khác như plugin. Với một nhóm, một thư mục dự án dưới kiểm soát phiên bản là nơi tự nhiên: các kỹ năng được rà soát, đổi qua cùng quy trình như công việc khác, và sẵn có cho mọi người.

### Viết kỹ năng nhóm của riêng bạn

Một kỹ năng nhóm ghi lại một thực hành nhóm lặp lại và muốn làm nhất quán. Ví dụ cho quản lý dịch vụ: cách viết postmortem theo văn phong của bạn, cách phân loại một loại ticket nhất định, cách chuẩn bị một yêu cầu thay đổi, cách chạy buổi rà soát thứ Sáu. Để viết một cái:

1. **Chọn một tác vụ bạn lặp lại** và có một cách làm tốt đã biết.
2. **Viết mô tả trước,** bắt đầu bằng "Use when…" và trường hợp dùng chính, để trợ lý và đồng nghiệp biết khi nào nó áp dụng.
3. **Viết phương pháp** thành các bước ngắn, kèm định dạng đầu ra, kiểm tra và điều cần tránh.
4. **Thêm ví dụ** về một kết quả tốt, đã gỡ các chi tiết nhạy cảm.
5. **Nói nó không được làm gì,** như bịa số liệu hay gửi bất cứ thứ gì mà không rà soát.
6. **Thử nó trên các trường hợp thật** và sửa.
7. **Cho nó một chủ sở hữu và một ngày rà soát,** như mọi tài liệu chung khác.

### Các kỹ năng trong cuốn sách này

Thư mục `skills/` trong kho này giữ các bản sao kỹ năng từ bộ sưu tập skills-on-ai, được liệt kê trong `skills/README.md`, và hai kỹ năng viết cho cuốn sách này: một cho độc giả và một cho người bảo trì. Mỗi chủ đề liên kết đến các kỹ năng hữu ích nhất cho chủ đề của nó, kèm một câu về khi nào dùng mỗi cái. Các kỹ năng được sao chép là chung, không riêng cho nội dung của cuốn sách này, nên hãy dùng chúng làm điểm khởi đầu và điều chỉnh đầu ra theo ngữ cảnh của bạn.

### Giới hạn

Không nguồn nào đã đọc cho cuốn sách này đo kỹ thuật lời nhắc nào hiệu quả đến đâu, và các công cụ AI đổi nhanh. Tài liệu Claude Code đã đọc dài và chỉ được đọc một phần. Điều theo sau là lời khuyên thực tế đã đứng vững trong sử dụng chung, được đưa ra như thói quen để thử, không phải bảo đảm.

## Thực hành tốt

1. **Bắt đầu từ một tác vụ thật và tài liệu thật.** Chọn việc bạn cần làm, và dán các sự thật thật, không phải mô tả về chúng. Điền mọi chỗ giữ chỗ bằng chi tiết cụ thể.
2. **Nêu mục đích trong một dòng.** Nói đầu ra để làm gì và ai sẽ dùng. Điều này giúp trợ lý chọn đúng mức chi tiết.
3. **Chỉ định đầu ra.** Nêu định dạng, độ dài và cấu trúc bạn muốn. Xin một bảng khi muốn so sánh, một danh sách khi muốn các bước.
4. **Đặt ranh giới.** Nói trợ lý không được làm gì: bịa số, nguồn hay trích dẫn; giả định sự thật không được cho; tuyên bố một quy tắc áp dụng mà không có văn bản.
5. **Nhờ câu hỏi làm rõ trước.** Bảo trợ lý hỏi điều nó cần trước khi trả lời. Trả lời ngắn, rồi nhờ nó tiếp tục.
6. **Nhờ nó tách sự thật khỏi giả định.** Bảo nó đánh dấu điều nó lấy từ tài liệu của bạn và điều nó suy đoán. Các lời nhắc của cuốn sách này kết thúc bằng "List what you are unsure of."
7. **Yêu cầu bằng chứng.** Nhờ trích dẫn từ tài liệu của bạn hỗ trợ mỗi nhận định, để bạn kiểm tra nhanh.
8. **Lặp lại.** Coi câu trả lời đầu là bản nháp. Nói điều gì sai và nhờ sửa, hoặc đổi lời nhắc và thử lại.
9. **Thử lời nhắc trên nhiều trường hợp.** Trước khi dựa vào một lời nhắc, chạy nó trên ba hoặc bốn đầu vào thật, gồm một cái lạ. Ghi nơi nó thất bại.
10. **Bảo vệ dữ liệu.** Gỡ chi tiết cá nhân và bí mật trước khi dán. Dùng công cụ được duyệt. Theo chính sách của tổ chức bạn.
11. **Kiểm tra trước khi dùng.** Xác minh sự thật, con số và tham chiếu. Nhờ một người rà soát bất cứ thứ gì đến khách hàng hay đổi một hệ thống.
12. **Chia sẻ điều hiệu quả.** Đưa các lời nhắc tỏ ra hữu ích, kèm ghi chú, vào một kỹ năng nhóm hoặc tài liệu dưới kiểm soát phiên bản, có chủ sở hữu.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta lặp lại những tác vụ nào mà một trợ lý có thể giúp, và chúng ta cần kiểm tra gì?**

Mời mỗi người liệt kê các tác vụ, và đánh dấu rủi ro nếu đầu ra sai. Nhóm chúng thành rủi ro thấp, vừa và cao. Bắt đầu với một cái rủi ro thấp. Người điều phối có thể hỏi bước kiểm tra sẽ là gì. Chọn một tác vụ để thử.

**Hôm nay chúng ta dán gì vào các công cụ AI, và có nên không?**

Hãy thành thật và không phán xét. Liệt kê các ví dụ. So với chính sách dữ liệu và các công cụ được duyệt. Thống nhất một kiểm tra nhanh mọi người áp dụng trước khi dán: "cái này có chứa dữ liệu cá nhân, bí mật hay chi tiết mật không?"

**Chúng ta sẽ thử lời nhắc nào của cuốn sách trước, với tài liệu thật nào?**

Cùng duyệt các lời nhắc và chọn một cái. Xác định tài liệu thật để dán, gỡ chi tiết nhạy cảm và chạy. So sánh kết quả và bàn điều cần đổi trong lời nhắc. Đây là cách nhanh để học mẫu hình.

**Làm sao chúng ta biết một lời nhắc hiệu quả?**

Hỏi một bộ kiểm thử: vài đầu vào thật có đầu ra tốt đã biết. Bàn cách chấm điểm câu trả lời và ai quyết định. Một lời nhắc không có bộ kiểm thử là một hy vọng. Thống nhất một bộ nhỏ cho một lời nhắc.

**Thực hành nào chúng ta lặp lại xứng đáng thành một kỹ năng nhóm?**

Liệt kê các ứng viên: một định dạng rà soát, một thói quen phân loại, một mẫu báo cáo. Chọn một, và cùng soạn mô tả và các bước. Quyết định ai sở hữu nó và khi nào nó được rà soát.

**Chúng ta không bao giờ muốn AI tự làm điều gì?**

Liệt kê các hành động: gửi cho khách hàng, đổi sản xuất, phê duyệt quyền truy cập, quyết định một mức ưu tiên. Bàn vì sao. Các câu trả lời là ranh giới để viết vào lời nhắc và kỹ năng của bạn. Thống nhất một danh sách ngắn.

## Trong thực tế: một ví dụ agile ITIL

Bàn dịch vụ CNTT của một bệnh viện khu vực có mười bốn chuyên viên. Trưởng bàn nhận thấy đồng nghiệp dùng trợ lý AI theo những cách khác nhau: một người dán cả ticket, gồm tên bệnh nhân, vào một chatbot công cộng; một người khác viết các lời nhắc công phu và nhận bản tóm tắt hữu ích; hầu hết không dùng gì cả. Một bài tri thức gần đây, do một trợ lý soạn, chứa một bước thủ tục không tồn tại.

Trưởng bàn tổ chức một buổi một giờ theo cách tiếp cận của cuốn sách này. Chị bắt đầu bằng dữ liệu: nhóm thống nhất một quy tắc rằng không chi tiết bệnh nhân hay thông tin xác thực nào được đưa vào bất kỳ công cụ nào, và trợ lý được duyệt, mà bệnh viện đã cấp phép với điều khoản phù hợp, là công cụ duy nhất dùng với văn bản ticket. Chị chọn một tác vụ, soạn bài tri thức từ một ticket đã giải quyết, và dùng mẫu hình từ các lời nhắc của cuốn sách: một mục đích một dòng, một chỗ giữ chỗ cho ticket đã ẩn danh, chỉ dẫn chỉ dùng nội dung của ticket, đánh dấu bất kỳ bước suy ra nào bằng một thẻ, và liệt kê điều nó không chắc. Hai chuyên viên chạy lời nhắc trên năm ticket cũ, và nhóm cùng đọc kết quả. Lời nhắc bịa một bước trong một trường hợp; họ thêm một dòng yêu cầu một trích dẫn từ ticket cho mỗi bước.

Trưởng bàn viết lời nhắc đã cải thiện thành một kỹ năng nhóm trong thư mục chung của bàn, với mô tả bắt đầu bằng "Use when…", một chủ sở hữu và một ngày rà soát, và thêm quy tắc rằng mọi bài được soạn đều được một chuyên viên thứ hai kiểm tra trước khi xuất bản. Sau hai tháng, số bài soạn mỗi tuần đã gấp đôi và người rà soát thấy ít lỗi hơn trước. Một số vấn đề vẫn còn. Hai chuyên viên vẫn dán chi tiết vào công cụ công cộng khi bị thúc ép, kỹ năng tạo ra cách diễn đạt quá trang trọng mà các chuyên viên viết lại, và một người rà soát thừa nhận chỉ đọc lướt. Trưởng bàn nhắc lại quy tắc dữ liệu ở mỗi cuộc họp nhóm, thêm một ví dụ văn phong vào kỹ năng và nhờ người rà soát đánh dấu một danh mục kiểm tra ngắn.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối dùng trợ lý cho mã, kiểm thử và tài liệu. Hãy áp dụng cùng các thói quen: tài liệu thật, ranh giới rõ ràng, xác minh và rà soát. Giữ bí mật ngoài các lời nhắc, và lưu các lời nhắc và kỹ năng hữu ích cùng với mã.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành có thể dùng lời nhắc để phân tích ticket, soạn runbook và chuẩn bị rà soát. Giữ dữ liệu cá nhân ra ngoài, kiểm tra đầu ra với log và bản ghi, và viết kỹ năng cho các thói quen nhóm lặp lại, như postmortem và bàn giao ca.

### Lãnh đạo và quản trị

Lãnh đạo đặt quy tắc về điều được dùng, với dữ liệu nào, và ai chịu trách nhiệm. Hãy yêu cầu một bản kiểm kê, một chính sách dữ liệu và bằng chứng từ các thử nghiệm. Ủng hộ thời gian để các nhóm viết và thử lời nhắc và kỹ năng, và bảo đảm các kỹ năng chung có chủ sở hữu.

### Khách hàng và người dùng

Khách hàng và người dùng có thể thấy kết quả của lời nhắc và kỹ năng trong các trả lời, bài viết và bản tóm tắt. Hãy mong nhà cung cấp kiểm tra chúng và nói với bạn khi họ dùng công cụ tự động ở nơi nó quan trọng. Báo lỗi, vì chúng giúp cải thiện tài liệu nền.

## Các kiểu thất bại thường gặp

- **Yêu cầu mơ hồ.** Trợ lý đoán. Thay vào đó, cung cấp tài liệu, mục đích và đầu ra bạn muốn.
- **Dán dữ liệu nhạy cảm.** Chi tiết cá nhân hay bí mật rời tổ chức. Thay vào đó, gỡ chúng và dùng công cụ được duyệt.
- **Chấp nhận nội dung bịa.** Các bước, số hay tham chiếu bịa được dùng. Thay vào đó, đặt ranh giới, yêu cầu trích dẫn và xác minh.
- **Tinh chỉnh theo một ví dụ.** Một lời nhắc hiệu quả một lần và thất bại ở nơi khác. Thay vào đó, thử trên nhiều đầu vào thật.
- **Kỹ năng không có chủ sở hữu.** Các lời nhắc chung bị cũ. Thay vào đó, giao chủ sở hữu và ngày rà soát, và giữ chúng dưới kiểm soát phiên bản.
- **Quá tin lời nhắc sao chép.** Một lời nhắc từ internet hoặc từ cuốn sách này được dùng nguyên. Thay vào đó, điều chỉnh theo ngữ cảnh và kiểm tra kết quả.
- **Không có lần xem thứ hai.** Đầu ra AI đi thẳng đến khách hàng. Thay vào đó, nhờ một người rà soát bất cứ thứ gì rời khỏi nhóm.
- **Coi trợ lý là thẩm quyền.** Sự tự tin của nó bị coi là đúng. Thay vào đó, hỏi điều nó không chắc và kiểm tra.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Thực hành lời nhắc | Mọi người viết lời nhắc tùy hứng | Một số người chia sẻ lời nhắc | Các nhóm dùng một mẫu chung với mục đích, tài liệu, ranh giới và kiểm tra | Chất lượng lời nhắc được kiểm thử trên các bộ trường hợp thật | Lời nhắc được cải thiện giữa các nhóm từ kết quả kiểm thử chung |
| Kỹ năng | Không có kỹ năng chung | Có một số kỹ năng cá nhân | Kỹ năng nhóm có chủ sở hữu và ngày rà soát nằm trong kiểm soát phiên bản | Việc dùng và kết quả của kỹ năng được rà soát | Kỹ năng được chia sẻ và bảo trì giữa các nhóm và đối tác |
| Xác minh và dữ liệu | Đầu ra được tin; dữ liệu được dán tự do | Có một số kiểm tra và quy tắc dữ liệu | Thói quen xác minh và chính sách dữ liệu là thường lệ | Lỗi và sự cố dữ liệu được theo dõi và hành động theo | Xác minh và thực hành dữ liệu được điều phối trong toàn tổ chức |
| Học tập | Học tập mang tính cá nhân | Một số mẹo được chia sẻ | Các nhóm tổ chức buổi định kỳ để cải thiện lời nhắc và kỹ năng | Các cải tiến được theo dõi và đo | Việc học lan liên tục giữa các nhóm |

## Danh mục kiểm tra

- [ ] Nhóm có một quy tắc ngắn về dữ liệu nào được đưa vào công cụ AI nào.
- [ ] Các lời nhắc chúng ta dựa vào có mục đích rõ, tài liệu thật, ranh giới và yêu cầu trợ lý nêu điều nó không chắc.
- [ ] Mỗi lời nhắc chúng ta dựa vào đã được thử trên ít nhất ba đầu vào thật.
- [ ] Đầu ra đi ra ngoài nhóm được một người rà soát.
- [ ] Tham chiếu và con số từ đầu ra AI được kiểm tra với nguồn.
- [ ] Các lời nhắc hữu ích được lưu kèm ghi chú ở một nơi chung dưới kiểm soát phiên bản.
- [ ] Kỹ năng nhóm có mô tả "Use when…" rõ ràng, một chủ sở hữu và một ngày rà soát.
- [ ] Nhóm đã liệt kê các hành động AI không bao giờ được tự làm.
- [ ] Nhân viên biết những công cụ nào được duyệt.
- [ ] Chúng ta rà soát lời nhắc và kỹ năng ít nhất hai lần một năm.

## Lời nhắc AI

**Mục đích: cải thiện một lời nhắc bạn đang dùng.**

```text
Here is a prompt I use: [paste it].
Here is an example of an input I give it, with sensitive details removed: [paste].
Here is what I got: [paste].
Here is what I wanted: [describe].

Diagnose why the output fell short, using only the text above. Suggest a revised prompt that: states the purpose, names the output format, sets boundaries (no invented facts, numbers, or sources), asks for clarifying questions first, requests quotes from the supplied material as evidence, and ends by asking you to list what you are unsure of. Keep placeholders in [square brackets]. Do not change the task. List what you are unsure of.
```

**Mục đích: biến một tác vụ lặp lại thành bản nháp kỹ năng nhóm.**

```text
Help me draft a team skill in SKILL.md format for this task: [name and describe the task].

How we do it today, step by step: [paste].
What a good result looks like (an example with sensitive details removed): [paste].
What must never happen (for example inventing figures or sending without review): [list].

Write a SKILL.md with YAML frontmatter containing a name and a description that starts with "Use when" and puts the key use case first, then a body with the purpose, short method steps, output format, checks, and things to avoid. Keep it under 150 lines. Mark every item you added as an assumption. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: xây một bộ kiểm thử nhỏ cho một lời nhắc.**

```text
I have a prompt that [describe what it does]: [paste it].

Help me design a test set of 5 to 10 inputs: typical cases, an unusual case, a case with a missing field, and a case where the right answer is "not enough information." Tell me what to collect from real examples (with sensitive details removed), how to record the expected output, and how to score results (correct, partly correct, wrong, confidently wrong, correctly declined). Do not invent test content; give me the categories and what to look for. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: kiểm tra một bản nháp do AI viết với nguồn của nó.**

```text
Here is the source material: [paste].
Here is a draft produced by an AI tool from that material: [paste].

List every statement in the draft, say whether the source supports it (quote the supporting text), contradicts it, or does not mention it, and suggest edits to remove unsupported statements. Do not add facts of your own. Give a short summary of how reliable the draft is. List what you are unsure of.
```

## Kỹ năng AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): dùng để viết, thử và cải thiện lời nhắc để chúng cho kết quả đáng tin cậy.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): dùng để ghi một mô hình dùng để làm gì và giới hạn của nó khi nhóm bạn dựa vào một mô hình.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): dùng khi giúp một nhóm xây thói quen quanh lời nhắc và kỹ năng theo thời gian.
- [agile-itil-guide-skill](../../../../skills/agile-itil-guide-skill/SKILL.md): dùng để tìm các chủ đề trong cuốn sách này, chạy một cuộc trò chuyện của nhóm từ các câu hỏi của nó, hoặc điều chỉnh một lời nhắc của nó.
- [agile-itil-guide-maintainer-skill](../../../../skills/agile-itil-guide-maintainer-skill/SKILL.md): dùng khi viết hay kiểm tra một chủ đề, lời nhắc hoặc liên kết kỹ năng của cuốn sách này.

## Nguồn chính

- **Claude Code skills documentation** (code.claude.com): mô tả cách các kỹ năng được cấu trúc như các thư mục có tệp `SKILL.md`.
- **Prompt engineering** (`skills/prompt-engineering/SKILL.md` của cuốn sách này): một phát biểu ngắn về các kỹ thuật và lý lẽ cho việc thử lời nhắc trên đầu vào thật.
- **Large language model** (Wikipedia): nền tảng về cách các hệ thống này được xây và nơi chúng có thể thất bại.
- **AI Risk Management Framework** (NIST): khung tự nguyện để quản lý rủi ro AI, hữu ích cho chính sách nhóm.

## Tài liệu tham khảo

1. Skills (Claude Code documentation) — Anthropic — https://code.claude.com/docs/en/skills
2. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
3. Prompt engineering — Wikipedia — https://en.wikipedia.org/wiki/Prompt_engineering
4. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
5. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
6. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
7. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
8. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
9. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
