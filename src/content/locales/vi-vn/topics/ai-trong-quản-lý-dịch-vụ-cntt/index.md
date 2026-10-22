# AI trong quản lý dịch vụ CNTT

**Trí tuệ nhân tạo có thể tăng tốc phát hiện, phân loại và công việc tri thức trong quản lý dịch vụ CNTT, và chỉ an toàn để dùng khi vẫn có một người chịu trách nhiệm, câu trả lời được dựa trên tài liệu của chính bạn, và các rủi ro về sai sót, thiên lệch và lộ dữ liệu được quản lý.**

## Vì sao điều này quan trọng

Quản lý dịch vụ liên quan rất nhiều ngôn ngữ và nhận dạng mẫu hình: đọc ticket, tóm tắt sự cố, tìm kiếm tri thức, soạn trả lời, phát hiện tín hiệu bất thường trong dữ liệu giám sát. Đây là những tác vụ mà các hệ thống AI gần đây có vẻ giỏi nhất, và các nhà cung cấp đã vội vã thêm chúng vào bàn dịch vụ và công cụ vận hành. Các nhóm sẽ được hỏi, nếu chưa được hỏi, có nên dùng chúng không.

Cơ hội là thật, và nguy cơ cũng vậy. Các hệ thống AI có thể nêu điều sai sự thật một cách tự tin, phản ánh thiên lệch trong quá trình huấn luyện và trong dữ liệu được cho chúng, làm lộ thông tin bí mật nếu được nuôi cẩu thả, và khiến mọi người tin vào đầu ra mà họ chưa kiểm tra. Nhiều vụ việc được báo cáo rộng rãi cho thấy cái giá của lòng tin đặt sai chỗ. Một tổ chức dịch vụ áp dụng AI mà không suy nghĩ có thể gây hại cho khách hàng và danh tiếng của chính mình.

Đến năm 2026, AI cũng đã đi vào khung. Trang chứng chỉ công khai của PeopleCert mô tả ITIL mới là "Practical and AI-native by design" và liệt kê một mô-đun ITIL AI Governance (Version 5) bao gồm việc quản trị AI "một cách có trách nhiệm và ở quy mô lớn" (xem Chủ đề 2.2 — ITIL). Cuốn sách này không thể xác minh từ các ấn phẩm của chủ sở hữu ITIL 5 nói gì chi tiết về AI, nên chủ đề này không mô tả lập trường của khung ngoài những phát biểu đó. Nó dựa vào các bài viết Wikipedia về AIOps và về ảo giác AI, vào trang AI Risk Management Framework của NIST và vào lập luận thực tế, và đánh dấu thực hành như vậy.

## Các khái niệm cốt lõi

### AI giúp ích ở đâu trong quản lý dịch vụ

Hầu hết các cách dùng rơi vào vài nhóm. Bảng cho thấy ví dụ và loại rủi ro mỗi nhóm mang, theo cách đọc của cuốn sách này.

| Cách dùng | AI làm gì | Rủi ro chính |
|---|---|---|
| **Phát hiện và tương quan (AIOps)** | Tìm bất thường, nhóm các sự kiện liên quan, gợi ý nguyên nhân có khả năng | Báo động giả, bỏ sót sự kiện, lập luận mờ đục |
| **Hỗ trợ bàn dịch vụ** | Gợi ý câu trả lời, tóm tắt ticket, soạn trả lời, định tuyến yêu cầu | Câu trả lời sai hoặc bịa, giọng điệu, quyền riêng tư |
| **Công việc tri thức** | Soạn và cải thiện bài, tìm kiếm tri thức | Nội dung bịa đặt, nguồn cũ |
| **Phân tích sự cố và vấn đề** | Tóm tắt dòng thời gian, gợi ý giả thuyết, soạn rà soát | Nguyên nhân hợp lý nhưng vô căn cứ |
| **Hỗ trợ thay đổi và phát hành** | Rà soát thay đổi, soạn ghi chú, gợi ý rủi ro | Tự tin quá mức, bỏ sót ngữ cảnh |
| **Mã và tự động hóa** | Viết script và cấu hình | Mã không an toàn hoặc sai, phụ thuộc ẩn |
| **Phân tích và báo cáo** | Tóm tắt dữ liệu, soạn báo cáo | Tính sai, số liệu bịa |

### AIOps

Bài viết Wikipedia mô tả AIOps là việc dùng AI, học máy và phân tích dữ liệu lớn để tự động hóa và cải thiện quản lý trung tâm dữ liệu, nhằm phát hiện, chẩn đoán và giải quyết các vấn đề CNTT hiệu quả hơn các phương pháp truyền thống. Nó nói Gartner định nghĩa AIOps lần đầu năm 2016. Bài viết liệt kê các năng lực gồm tương quan sự kiện, phát hiện bất thường, phân tích nguyên nhân gốc, xác định quan hệ nhân quả, phân tích dự đoán, quản lý sự cố, khắc phục tự động, dự đoán hiệu năng, phân bổ nguồn lực và quản lý năng lực. Nó nói AIOps dựa vào dữ liệu quan sát, như log và giám sát, và dữ liệu tương tác, như ticket, sự kiện và bản ghi sự cố.

Bài viết tuyên bố các lợi ích, như thời gian trung bình để phát hiện cải thiện 15 đến 20 phần trăm và sự cố nghiêm trọng giảm hơn 50 phần trăm, nhưng lưu ý rằng chúng đến từ một bài viết của một công ty tư vấn và không được xác minh độc lập trong văn bản. Nó không nêu lời chỉ trích, trường hợp thất bại hay giới hạn nào. Hãy xử lý tuyên bố của nhà cung cấp tương ứng, và thử bất kỳ công cụ nào với các sự cố của chính bạn (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện).

### AI tạo sinh và ảo giác

Bài viết Wikipedia về ảo giác trong AI định nghĩa nó là một phản hồi chứa thông tin sai hoặc gây hiểu lầm được trình bày như sự thật, và lưu ý rằng thuật ngữ bị chỉ trích vì nhân cách hóa phần mềm. Nó đưa các nguyên nhân: tiền huấn luyện dự đoán từ kế tiếp thưởng cho việc đoán khi mô hình thiếu thông tin, bộ dữ liệu có thể không đầy đủ hoặc không đại diện, và các nhà nghiên cứu OpenAI lập luận rằng huấn luyện và đánh giá thưởng cho việc đoán hơn là thừa nhận sự bất định. Các ví dụ nó ghi lại gồm:

- **Mata v. Avianca (tháng 5/2023):** một luật sư nộp sáu vụ án giả do ChatGPT tạo ra; thẩm phán phạt 5.000 đô la Mỹ ngày 23 tháng 6 năm 2023.
- **Moffatt v. Air Canada (tháng 2/2024):** một hội đồng phán quyết buộc một hãng hàng không phải theo chính sách tang lễ mà chatbot của họ đã bịa ra.
- Các báo cáo của một công ty tư vấn chứa trích dẫn giả, và một nghiên cứu thấy 69 trong 178 tham chiếu GPT-3 có định danh sai hoặc không tồn tại.

Đây là hậu quả của việc tin đầu ra chưa được xác minh: trách nhiệm pháp lý, rủi ro tài chính và lòng tin bị tổn hại. Trong quản lý dịch vụ, một chatbot bịa ra một chính sách hay quy trình tạo ra cùng loại rủi ro.

### Giảm thiểu: dựa trên nguồn và kiểm tra

Bài viết mô tả sinh có tăng cường truy xuất (RAG) là cho phép mô hình truy cập các nguồn bên ngoài trước khi trả lời. Nó cũng liệt kê các phương pháp liên quan đến dữ liệu, các phương pháp mô hình và suy luận, và các đề xuất như phần mềm hàng rào bảo vệ và chấm điểm độ tin cậy, và lưu ý rằng không nguồn nào nó đưa ra định lượng được mỗi cái giảm ảo giác bao nhiêu. Với một nhóm dịch vụ, các biện pháp giảm thiểu thực tế là:

- **Dựa câu trả lời vào tài liệu được duyệt của chính bạn,** như cơ sở tri thức, và cho thấy nguồn.
- **Giữ một người trong vòng** cho bất cứ điều gì ảnh hưởng đến khách hàng, một cam kết hoặc sản xuất.
- **Hỏi điều AI không chắc,** và coi các phát biểu không có căn cứ là chưa được xác minh.
- **Kiểm thử đều đặn** trên các trường hợp thật, gồm cả những trường hợp mà câu trả lời đúng là "tôi không biết".

### Các khung quản lý rủi ro

Viện Tiêu chuẩn và Công nghệ Quốc gia (NIST) đã công bố AI Risk Management Framework (AI RMF 1.0) ngày 26 tháng 1 năm 2023, mà họ mô tả là dành cho sử dụng tự nguyện, để giúp quản lý rủi ro từ AI đối với cá nhân, tổ chức và xã hội và cải thiện khả năng đưa các cân nhắc về độ đáng tin cậy vào thiết kế, phát triển, sử dụng và đánh giá các sản phẩm, dịch vụ và hệ thống AI. Trang của NIST nêu bốn chức năng, Govern (quản trị), Map (vẽ bản đồ), Measure (đo) và Manage (quản lý), nhưng không mô tả chúng. Họ cũng phát hành một Generative Artificial Intelligence Profile (NIST-AI-600-1) ngày 26 tháng 7 năm 2024 để giúp các tổ chức xác định rủi ro riêng của AI tạo sinh, và nói khung đang được sửa đổi. Hãy đọc chính khung để có chi tiết. Các quy tắc khác về AI, như luật và tiêu chuẩn, khác nhau theo quốc gia và ngành; hãy hỏi bộ phận pháp lý và tuân thủ của bạn, và lấy văn bản (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ).

### Bảo vệ dữ liệu và quyền riêng tư

Mọi thứ đưa cho một dịch vụ AI đều có thể được lưu, dùng để huấn luyện hoặc bị lộ, tùy dịch vụ và điều khoản. Ticket, log và bản ghi chat thường chứa dữ liệu cá nhân, thông tin xác thực và thông tin kinh doanh bí mật. Trước khi dùng bất kỳ công cụ AI nào với dữ liệu thật, hãy tìm hiểu dữ liệu đi đâu, ai thấy được, được giữ bao lâu và có dùng để huấn luyện mô hình không, và áp dụng chính sách an toàn thông tin của bạn (xem Chủ đề 3.13 — Quản lý an toàn thông tin). Gỡ hoặc thay dữ liệu cá nhân và bí mật trước khi dán vào một công cụ bạn chưa duyệt.

### Trách nhiệm giải trình và minh bạch

Một người hay một nhóm phải vẫn chịu trách nhiệm về các quyết định mà AI góp phần. Khi AI soạn một trả lời, người gửi chịu trách nhiệm. Khi AI gợi ý một nguyên nhân gốc, người điều tra chịu trách nhiệm kiểm chứng nó. Hãy nói với khách hàng khi họ đang trò chuyện với một hệ thống tự động ở nơi luật, hợp đồng hoặc sự công bằng đòi hỏi, và cung cấp đường đến một người. Giữ bản ghi về điều AI được hỏi và điều nó tạo ra cho các quyết định đáng kể, như bạn làm với các công cụ khác (xem Chủ đề 5.1 — Quản lý dịch vụ Agile về bằng chứng).

### Thiên lệch và sự công bằng

Các hệ thống AI học từ dữ liệu phản ánh các quyết định và khoảng trống trong quá khứ. Một trợ lý phân loại được huấn luyện trên ticket lịch sử có thể coi một số nhóm người dùng hay một số loại vấn đề là ưu tiên thấp hơn. Hãy kiểm tra đầu ra theo các nhóm, lôi kéo những người có góc nhìn khác nhau vào kiểm thử và để ý các mẫu hình. Các nguồn đã đọc cho cuốn sách này không nêu chi tiết thiên lệch, nên đây là một lưu ý chung, không phải một phát hiện.

### Đo AI

Hãy đo chất lượng và tác động của bất kỳ bước AI nào, không chỉ khối lượng: con người ghi đè nó bao lâu một lần, nó sai bao lâu một lần, các tác vụ mất bao lâu có và không có nó, và người dùng nói gì (xem Chủ đề 5.6 — Chỉ số và đo lường). Hãy thận trọng với số liệu của nhà cung cấp; các tuyên bố lợi ích của chính bài viết AIOps dựa trên một nguồn.

### Kỹ năng và lời nhắc

Kỹ năng thực tế khi làm việc với AI gồm viết chỉ dẫn rõ ràng, cung cấp đúng tài liệu, hỏi về sự bất định và xác minh đầu ra. Chủ đề 6.3 — Kỹ năng và lời nhắc AI bàn kỹ điều này.

### Giới hạn của các nguồn

Bài viết AIOps không chứa lời chỉ trích và các con số lợi ích đến từ một nguồn; bài viết về ảo giác bị đánh dấu cần cập nhật và được đọc một phần; trang của NIST không mô tả các chức năng của khung; và trang của PeopleCert không giải thích ITIL 5 nói gì về AI. Vì thế chủ đề này đưa một bản tường thuật thận trọng và để chi tiết cho các nguồn gốc.

## Thực hành tốt

1. **Bắt đầu với một cách dùng rủi ro thấp và một câu hỏi rõ ràng.** Chọn một tác vụ mà sai sót rẻ và dễ bắt, như soạn một bản tóm tắt cho dùng nội bộ, và xác định thế nào là thành công.
2. **Giữ một người chịu trách nhiệm.** Nêu ai chịu trách nhiệm về điều AI đóng góp, và yêu cầu rà soát với bất cứ thứ gì đến khách hàng, đổi sản xuất hay đưa ra cam kết.
3. **Dựa câu trả lời vào tài liệu được duyệt.** Khi dùng AI để trả lời, nối nó với cơ sở tri thức của bạn và cho thấy nguồn. Làm nó nói "tôi không biết" khi thiếu nguồn.
4. **Bảo vệ dữ liệu.** Quyết định dữ liệu nào được đưa vào công cụ nào, gỡ dữ liệu cá nhân và bí mật, và dùng các công cụ được duyệt với điều khoản bạn đã đọc. Lôi kéo nhân viên an ninh và pháp lý sớm.
5. **Kiểm thử với các trường hợp thật.** Thu thập một tập ticket và sự cố thật có câu trả lời đã biết, chạy AI trên chúng và ghi nơi nó thất bại. Lặp lại sau bất kỳ thay đổi công cụ hay thiết lập nào.
6. **Xác minh nhận định và tham chiếu.** Kiểm tra tên, số, trích dẫn và quy trình với nguồn, như các vụ trích dẫn tòa án bịa cho thấy. Đừng bao giờ chấp nhận tham chiếu bạn chưa thấy.
7. **Trung thực với khách hàng.** Nói khi một hệ thống tự động đang trả lời ở nơi nó quan trọng, và cung cấp đường dễ đến một người.
8. **Để ý thiên lệch.** Rà soát đầu ra theo các nhóm người dùng và loại vấn đề, và lôi kéo người có thể nhìn ra khoảng trống. Điều chỉnh hoặc dừng việc dùng ở nơi xuất hiện tác hại.
9. **Đo chất lượng và tác động.** Theo dõi tỷ lệ ghi đè, tỷ lệ sai, thời gian tiết kiệm và quan điểm người dùng. So sánh với quy trình không có AI, và hoài nghi số liệu của nhà cung cấp.
10. **Giữ bản ghi.** Với các quyết định đáng kể, giữ điều đã hỏi và đã tạo ra, ai rà soát và điều đã quyết định. Điều này hỗ trợ trách nhiệm giải trình và kiểm toán.
11. **Dùng một khung rủi ro.** Áp dụng một cách tiếp cận được công nhận, như AI RMF của NIST hay một chính sách AI của tổ chức, để cấu trúc các quyết định về nơi AI được phép. Coi nó là hướng dẫn để suy nghĩ.
12. **Đào tạo con người.** Dạy nhân viên các công cụ hoạt động thế nào, chúng thất bại ở đâu và điều gì được phép. Cập nhật đào tạo khi công cụ và quy tắc thay đổi.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta đã dùng AI ở đâu rồi, chính thức hay không?**

Hãy hỏi thành thật. Nhân viên thường dùng công cụ công cộng với ticket thật. Mục đích không phải trừng phạt mà là hiểu. Liệt kê các cách dùng và dữ liệu liên quan. Bàn cái nào chấp nhận được và cái nào cần một đường an toàn hơn. Thống nhất một chính sách ngắn.

**Tác vụ nào chúng ta muốn được giúp nhất, và điều gì xảy ra nếu AI làm sai?**

Chọn một tác vụ và đi qua trường hợp thất bại. Nếu câu trả lời là một email xin lỗi, rủi ro nhỏ; nếu đó là một chỉ dẫn sai cho khách hàng, rủi ro cao hơn. Điều này giúp xếp hạng các cách dùng theo rủi ro. Chọn một thử nghiệm đầu tiên với tác hại giới hạn.

**Làm sao chúng ta biết một câu trả lời của AI là sai?**

Hỏi ai kiểm tra câu trả lời và bằng cách nào. Các câu trả lời phổ biến: không ai, hoặc người đã hỏi. Bàn nguồn, kiểm thử và rà soát lần hai. Thống nhất một kiểm tra tối thiểu cho từng loại cách dùng.

**Chúng ta thoải mái đưa dữ liệu nào vào một công cụ AI, và không thoải mái dữ liệu nào?**

Thu thập các loại: ticket, log, tên khách hàng, thông tin xác thực, hợp đồng. Đánh dấu mỗi loại là chấp nhận được, chấp nhận được sau khi gỡ các phần nhạy cảm, hoặc không bao giờ. Kiểm tra với an ninh và pháp lý. Viết nó thành một hướng dẫn một trang.

**Ai chịu trách nhiệm khi một quyết định có AI hỗ trợ đi sai?**

Dùng một ví dụ quá khứ về một quyết định có công cụ hỗ trợ. Hỏi ai đã chịu trách nhiệm. Thống nhất rằng một người có tên vẫn chịu trách nhiệm và họ nên giữ bằng chứng gì. Ghi lại bất kỳ khoảng trống nào nơi không ai chịu.

**Điều gì sẽ thuyết phục chúng ta rằng một công cụ đáng giữ?**

Mời nhóm mô tả bằng chứng họ sẽ chấp nhận: tiết kiệm thời gian với chất lượng bằng hoặc tốt hơn, ít sai sót hơn, mức hài lòng của người dùng. Bàn cách thu thập nó trong một thử nghiệm. Thống nhất một ngày rà soát.

## Trong thực tế: một ví dụ agile ITIL

Bàn dịch vụ CNTT của một cơ quan thuế quốc gia xử lý khoảng 1.200 liên hệ mỗi tuần từ nhân viên, nhiều cái về các câu hỏi thường lệ. Quản lý bàn đề xuất một trợ lý AI gợi ý câu trả lời từ cơ sở tri thức và soạn trả lời. Cán bộ an ninh của cơ quan lo ngại về dữ liệu cá nhân trong ticket và về câu trả lời sai đến tay nhân viên.

Họ thống nhất một thử nghiệm giới hạn. Trợ lý chỉ làm việc từ các bài tri thức được duyệt, cho thấy mỗi gợi ý đến từ bài nào, và nói khi nó không tìm thấy gì liên quan. Các chuyên viên rà soát mọi trả lời gợi ý trước khi gửi, và công cụ không thể tự gửi. Ticket được quét tìm dữ liệu cá nhân và thông tin xác thực, được gỡ trước khi trợ lý thấy. Một bộ kiểm thử gồm 200 ticket quá khứ có câu trả lời đã biết được dùng trước khi thử nghiệm, và nhóm ghi lại nơi trợ lý thất bại. Quản lý bàn và cán bộ an ninh thống nhất các thước đo: các chuyên viên chỉnh sửa hoặc từ chối gợi ý bao lâu một lần, thời gian đến phản hồi đầu tiên và một câu hỏi hài lòng ngắn cho nhân viên. Thử nghiệm chạy ba tháng, và quản lý báo cáo cho một buổi rà soát chung gồm một chuyên viên và một đại diện nhân viên.

Cuối cùng, các chuyên viên chấp nhận hầu hết gợi ý cho các câu hỏi phổ biến và thời gian phản hồi cho chúng giảm. Bộ kiểm thử cho thấy trợ lý đưa một câu trả lời tự tin nhưng sai cho các câu hỏi về một chính sách mới đổi, vì bài tri thức đã lỗi thời. Một số vấn đề vẫn còn. Hai chuyên viên bắt đầu gửi gợi ý với ít kiểm tra khi bận, một nhân viên có câu hỏi không chuẩn nhận một trả lời nhạt nhẽo lạc đề, và điều khoản của nhà cung cấp về lưu giữ dữ liệu không rõ. Quản lý thêm một quy tắc rằng thay đổi chính sách phải cập nhật bài tri thức trước khi có hiệu lực, dùng kiểm tra lấy mẫu các trả lời đã gửi do một chuyên viên cao cấp thực hiện, và nhờ bộ phận mua sắm và cán bộ an ninh làm rõ điều khoản trước khi mở rộng thử nghiệm.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối có thể thêm tính năng AI vào sản phẩm và dùng AI để viết mã và kiểm thử. Hãy kiểm tra mã được tạo về tính đúng đắn và an toàn, giữ bí mật ngoài các lời nhắc và nói rõ với người dùng khi AI tham gia. Xây giám sát hành vi AI vào dịch vụ của bạn.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành sẽ gặp AI trong giám sát, công cụ bàn dịch vụ và phân tích. Hãy coi gợi ý của AI là giả thuyết, kiểm chứng chúng và giữ bản ghi. Giúp xác định dữ liệu nào được dùng, và đưa phản hồi để cải thiện tài liệu nền.

### Lãnh đạo và quản trị

Lãnh đạo đặt chính sách, khẩu vị rủi ro và trách nhiệm giải trình cho AI. Hãy yêu cầu một bản kiểm kê cách dùng, một khung rủi ro và bằng chứng từ các thử nghiệm, không phải tuyên bố của nhà cung cấp. Bảo đảm nhân viên pháp lý, an ninh và quyền riêng tư tham gia từ đầu.

### Khách hàng và người dùng

Khách hàng và người dùng nên được nói khi họ đang làm việc với một hệ thống tự động ở nơi nó quan trọng, và có đường đến một người. Hãy báo các câu trả lời sai hoặc lạ, vì chúng là bằng chứng. Hãy hỏi nhà cung cấp họ bảo vệ dữ liệu của bạn và kiểm tra đầu ra AI thế nào.

## Các kiểu thất bại thường gặp

- **Tin đầu ra chưa xác minh.** Sự thật bịa đặt đến tay khách hàng. Thay vào đó, dựa câu trả lời vào tài liệu được duyệt và xác minh trước khi gửi.
- **AI bóng.** Nhân viên dán dữ liệu thật vào công cụ công cộng. Thay vào đó, cung cấp công cụ được duyệt và một chính sách dữ liệu rõ ràng.
- **Không có người chịu trách nhiệm.** Không ai chịu trách nhiệm về các quyết định có AI hỗ trợ. Thay vào đó, chỉ định chủ sở hữu và yêu cầu rà soát.
- **Tin số liệu của nhà cung cấp.** Tuyên bố lợi ích không được kiểm tra. Thay vào đó, thử trên các trường hợp của chính bạn và đo.
- **Tài liệu nền cũ.** Cơ sở tri thức sai và AI lặp lại nó. Thay vào đó, giữ các bài luôn mới và có chủ sở hữu.
- **Thiên lệch ẩn.** Một số người dùng hay vấn đề bị đối xử tệ hơn. Thay vào đó, kiểm thử giữa các nhóm và rà soát đầu ra.
- **Tự động hóa trước khi hiểu.** AI hành động lên sản xuất mà không kiểm tra. Thay vào đó, bắt đầu với gợi ý và rà soát, và chỉ chuyển sang hành động với biện pháp bảo vệ mạnh.
- **Không có bản ghi.** Quyết định không kiểm toán được. Thay vào đó, giữ nhật ký về điều đã hỏi, đã tạo ra và đã quyết định.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Chính sách và trách nhiệm giải trình | Việc dùng tùy hứng và không được ghi | Một số nhóm có quy tắc | Một chính sách bằng văn bản, bản kiểm kê cách dùng và chủ sở hữu có tên | Sự tuân thủ chính sách và sự cố được rà soát | Chính sách được căn chỉnh giữa các nhóm, nhà cung cấp và cơ quan quản lý |
| Chất lượng và dựa trên nguồn | Đầu ra được tin theo mặc định | Một số kiểm tra cho các cách dùng quan trọng | Câu trả lời dựa vào nguồn được duyệt và được kiểm thử trên các trường hợp thật | Tỷ lệ sai và ghi đè được đo và hành động theo | Việc dựa trên nguồn và kiểm thử được chia sẻ và cải thiện giữa các nhóm |
| Bảo vệ dữ liệu và công bằng | Dữ liệu được dán tự do | Có một số quy tắc dữ liệu | Quy tắc xử lý dữ liệu và kiểm tra thiên lệch là thường lệ | Sự cố dữ liệu và phát hiện về công bằng được theo dõi và sửa | Thực hành dữ liệu và công bằng được điều phối giữa tổ chức và nhà cung cấp |
| Giá trị và học tập | Giá trị được giả định | Một số thử nghiệm được chạy | Thử nghiệm có thước đo và quyết định đã thống nhất | Lợi ích và chi phí được đo so với đường cơ sở | Việc học từ dùng AI lan liên tục giữa các dịch vụ |

## Danh mục kiểm tra

- [ ] Chúng ta có một bản kiểm kê nơi AI được dùng trong hoặc quanh dịch vụ của mình, gồm cả cách dùng không chính thức.
- [ ] Một người có tên chịu trách nhiệm về mỗi cách dùng có AI hỗ trợ.
- [ ] Một chính sách bằng văn bản nói dữ liệu nào được đưa vào công cụ nào.
- [ ] Dữ liệu cá nhân và bí mật được gỡ hoặc che trước khi dùng với các công cụ chưa được duyệt cho chúng.
- [ ] Câu trả lời cho khách hàng hoặc dùng trong quyết định được dựa vào tài liệu được duyệt và được rà soát.
- [ ] Chúng ta có một bộ kiểm thử các trường hợp thật và chạy lại sau các thay đổi.
- [ ] Khách hàng được nói khi một hệ thống tự động trả lời, ở nơi nó quan trọng, và có đường đến một người.
- [ ] Chúng ta đo tỷ lệ ghi đè, tỷ lệ sai, thời gian tiết kiệm và quan điểm người dùng.
- [ ] Bản ghi được giữ cho các quyết định đáng kể có AI hỗ trợ.
- [ ] Nhân viên pháp lý, an ninh và quyền riêng tư đã rà soát cách dùng của chúng ta và điều khoản của công cụ.

## Lời nhắc AI

**Mục đích: soạn một bản kiểm kê cách dùng AI từ những gì mọi người nói với bạn.**

```text
Help me structure an inventory of AI use in our service organization.

What people have told us they use AI for (paste notes; remove names): [paste].
Tools mentioned: [list].
Types of data involved, as far as we know: [list].

Produce a table with: use, tool, data involved, who is accountable (use "unknown" if not given), risk if wrong (low, medium, high with a one-sentence reason from my notes), and one question to ask. Do not guess about tools or terms I did not mention. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: thiết kế một bộ kiểm thử cho một trợ lý AI.**

```text
Design a test set for an AI assistant that suggests answers to service desk questions.

The knowledge sources it will use: [describe].
Types of question we get: [list with rough share if you know].
Cases where the right answer is "not in the knowledge base" or "escalate": [describe].

Propose a structure for 100-200 test cases (categories, how to choose real examples, how to record the correct answer and its source), how to score answers (correct, partly correct, wrong, confidently wrong, correctly declined), and how to repeat after changes. Do not invent test content; tell me what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: viết chính sách dùng AI một trang cho một nhóm.**

```text
Draft a one-page AI use policy for [team].

Tools approved: [list, or write "none yet"].
Data we handle (types and sensitivity): [list].
Rules we must follow, with source text from legal, security, or contracts: [paste, or write "none known"].
Roles: [list].

Write plain-language sections: what AI may be used for, what data may and may not be put into tools, what must be checked by a person before use, who is accountable, how to record significant uses, how to report problems. Mark every item that is an assumption. Do not state that any law requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: rà soát một câu trả lời do AI tạo ra trước khi nó đến người dùng.**

```text
Here is a draft answer that an AI tool produced for a user question.

The user's question: [paste, with personal data removed].
The knowledge article(s) the answer should be based on: [paste].
The draft answer: [paste].

Check the draft against the article only. List statements that are supported by the article (quote the part), statements that are not supported, anything missing that the user would need, and the tone. Suggest a corrected version that uses only the article. Do not add facts. List what you are unsure of.
```

## Kỹ năng AI

- [prompt-engineering](../../../../skills/prompt-engineering/SKILL.md): dùng để viết các lời nhắc rõ ràng cung cấp đúng tài liệu và hỏi về sự bất định.
- [machine-learning-model-card](../../../../skills/machine-learning-model-card/SKILL.md): dùng để ghi một mô hình dùng để làm gì, được kiểm thử thế nào và giới hạn của nó.
- [data-governance](../../../../skills/data-governance/SKILL.md): dùng để quyết định dữ liệu nào được dùng với công cụ nào.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): dùng để chuẩn bị câu hỏi cho nhân viên pháp lý và quyền riêng tư về việc dùng AI.
- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi rủi ro liên quan đến AI, chủ sở hữu và cách xử lý.

## Nguồn chính

- **AIOps** (Wikipedia): một mô tả ngắn về AI cho vận hành CNTT, các năng lực và lợi ích được tuyên bố, không có lời chỉ trích.
- **Hallucination (artificial intelligence)** (Wikipedia): nguyên nhân, ví dụ và ý tưởng giảm thiểu cho đầu ra sai.
- **AI Risk Management Framework** (NIST): khung tự nguyện và hồ sơ AI tạo sinh của nó; hãy đọc chính khung để biết chi tiết.
- **ITIL certifications** (PeopleCert): các phát biểu công khai của chủ sở hữu về ITIL mới và mô-đun quản trị AI của nó.

## Tài liệu tham khảo

1. AIOps — Wikipedia — https://en.wikipedia.org/wiki/AIOps
2. Hallucination (artificial intelligence) — Wikipedia — https://en.wikipedia.org/wiki/Hallucination_(artificial_intelligence)
3. AI Risk Management Framework — NIST — https://www.nist.gov/itl/ai-risk-management-framework
4. ITIL certifications — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1
5. Retrieval-augmented generation — Wikipedia — https://en.wikipedia.org/wiki/Retrieval-augmented_generation
6. Artificial intelligence — Wikipedia — https://en.wikipedia.org/wiki/Artificial_intelligence
7. Large language model — Wikipedia — https://en.wikipedia.org/wiki/Large_language_model
8. Algorithmic bias — Wikipedia — https://en.wikipedia.org/wiki/Algorithmic_bias
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
