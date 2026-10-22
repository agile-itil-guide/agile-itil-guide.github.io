# Cải tiến liên tục

**Cải tiến liên tục là thói quen làm cho dịch vụ và cách làm việc tốt hơn một chút, hết lần này đến lần khác, và nó chỉ thành thật khi công việc cải tiến được nhìn thấy, có chủ sở hữu, được lên lịch và được kiểm tra, như mọi công việc khác.**

## Vì sao điều này quan trọng

Mọi thực hành trong cuốn sách này đều kết thúc ở cùng một nơi: học từ điều đã xảy ra và đổi một thứ gì đó. Sự cố dẫn đến vấn đề, vấn đề dẫn đến bản sửa, retrospective dẫn đến thí nghiệm, và các buổi rà soát mức dịch vụ dẫn đến mục tiêu mới. Cải tiến liên tục là thực hành nối chúng lại và giữ cho chúng chuyển động. Không có nó, mỗi thực hành tạo ra sự thấu hiểu mà không ai hành động.

Trong nhiều tổ chức, cải tiến là thứ đầu tiên bị ép. Áp lực phân phối lấp đầy mọi ngày, và các ý tưởng cải tiến chất đống trong một tài liệu không ai mở. Các nhóm agile có lợi thế khởi đầu, vì retrospective được xây sẵn, nhưng các retrospective không tạo ra thay đổi nào là phổ biến. Phép thử của một thực hành cải tiến liên tục rất đơn giản: bạn có nêu được ba điều tốt hơn trong quý này nhờ nó không?

[Bài viết Wikipedia về quy trình cải tiến liên tục](https://en.wikipedia.org/wiki/Continual_improvement_process) mô tả nó là một nỗ lực liên tục để cải thiện sản phẩm, dịch vụ hay quy trình, dù tăng dần hay đột phá, với phản hồi, hiệu quả và sự tiến hóa qua các bước nhỏ là các đặc điểm chính. [Bài viết về PDCA](https://en.wikipedia.org/wiki/PDCA) mô tả chu trình lập kế hoạch, thực hiện, kiểm tra, hành động đứng sau nhiều phương pháp cải tiến. Cả hai đều mang tính chung. ITIL coi cải tiến liên tục là một thành phần của hệ thống giá trị dịch vụ (xem Chủ đề 2.3 — Hệ thống giá trị dịch vụ ITIL) và là một thực hành, nhưng văn bản của chủ sở hữu khung không có sẵn cho cuốn sách này, nên chủ đề này không mô tả chi tiết mô hình cải tiến của ITIL.

## Các khái niệm cốt lõi

### Nó là gì

Theo Wikipedia, một quy trình cải tiến liên tục (CIP), còn gọi là cải tiến không ngừng, là một nỗ lực liên tục để cải thiện sản phẩm, dịch vụ hay quy trình. Bài viết mô tả nó là một siêu quy trình cho các hệ thống quản lý như quản lý chất lượng, dự án và chương trình, với ba đặc điểm chính: phản hồi, hiệu quả và sự tiến hóa qua các bước nhỏ, tăng dần. Nó ghi công cho W. Edwards Deming là người tiên phong, người coi CIP là một phần của hệ thống đánh giá quy trình và phản hồi của khách hàng đối chiếu với mục tiêu của tổ chức.

### "Continual" hay "continuous"

Bài viết lưu ý một điểm thuật ngữ: vào cuối những năm 1990, những người phát triển ISO 9001:2000 đã đổi "continuous" (liên tục không ngắt quãng) thành "continual" (liên tục theo từng bước), được cho là vì ủy ban ưa thích cải tiến từng bước và nghĩ "continuous" có thể ngụ ý thay đổi từng phút. ITIL dùng "continual". Trong thực tế hai thuật ngữ được dùng thay thế nhau. Điều quan trọng là cải tiến đều đặn, lặp đi lặp lại.

### Kaizen

**Kaizen** là một thuật ngữ tiếng Nhật có nghĩa đại khái là "thay đổi để tốt hơn". Theo bài viết, cuốn sách năm 1986 *Kaizen: The Key to Japan's Competitive Success* của Masaaki Imai đã phổ biến nó, và các đặc điểm của nó gồm nhiều thay đổi nhỏ, ý tưởng từ các công nhân hiện có, chi phí thấp và nhân viên làm chủ. Điều này khớp với các nhóm agile, nơi những người làm việc ở vị trí tốt nhất để thấy cần cải tiến gì (xem Chủ đề 1.7 — Phát triển phần mềm Lean).

### Chu trình PDCA

PDCA (lập kế hoạch, thực hiện, kiểm tra, hành động) là, theo lời Wikipedia, một phương pháp lặp để kiểm soát và liên tục cải tiến quy trình và sản phẩm. Nó còn gọi là chu trình Shewhart, theo Walter Shewhart tại Bell Telephone Laboratories vào những năm 1920; W. Edwards Deming sửa đổi nó vào những năm 1940 và áp dụng nó cho quản lý ở Nhật vào những năm 1950. Các bước:

| Bước | Bạn làm gì |
|---|---|
| **Lập kế hoạch** | Thiết lập mục tiêu và các quy trình cần để cho ra kết quả bạn muốn |
| **Thực hiện** | Thực thi kế hoạch, tốt nhất ở quy mô nhỏ |
| **Kiểm tra** | So sánh dữ liệu bạn thu thập với kết quả mong đợi và tìm xu hướng |
| **Hành động** | Điều tra nguyên nhân gốc của vấn đề, điều chỉnh quy trình và bắt đầu chu trình tiếp theo |

Bài viết gắn PDCA với phương pháp khoa học và mẫu hình giả thuyết, thí nghiệm, đánh giá của nó. Một biến thể, PDSA, thay "kiểm tra" bằng "nghiên cứu", điều Deming ưa hơn. Bài viết nói sự lặp là trung tâm: mỗi chu trình tinh chỉnh tri thức. Các nhóm gọi một thay đổi là "thí nghiệm" với một kỳ vọng được nêu và một lần kiểm tra đang dùng mẫu hình này.

### Cải tiến đến từ đâu

Ý tưởng cải tiến đến từ nhiều nơi trong một tổ chức dịch vụ:

| Nguồn | Ví dụ | Được bàn ở đâu |
|---|---|---|
| Sự cố và postmortem | Một lỗi cho thấy thiếu một cảnh báo | Chủ đề 3.2 — Quản lý sự cố |
| Điều tra vấn đề | Các lần ngừng hoạt động lặp lại cho thấy một lỗi thiết kế | Chủ đề 3.3 — Quản lý vấn đề |
| Chủ đề của bàn dịch vụ | Cùng một câu hỏi xuất hiện hằng tuần | Chủ đề 3.1 — Bàn dịch vụ |
| Retrospective | Nhóm thấy bàn giao của mình chậm | Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch |
| Dữ liệu dòng chảy | Một hàng đợi dài ra ở một bước | Chủ đề 1.5 — Kanban |
| Phản hồi của khách hàng | Người dùng thấy một biểu mẫu gây nhầm lẫn | Chủ đề 3.6 — Quản lý yêu cầu dịch vụ |
| Rà soát mức dịch vụ | Một mục tiêu liên tục bị trượt | Chủ đề 3.7 — Quản lý mức dịch vụ |
| Kiểm toán và rà soát rủi ro | Một kiểm soát được thấy là yếu | Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ |

Thực hành cải tiến liên tục gom những thứ này vào một danh sách nhìn thấy được, chọn việc làm và kiểm tra kết quả.

### Cải tiến như công việc

Kỷ luật trung tâm là coi cải tiến như công việc: các hạng mục trong backlog với chủ sở hữu, lợi ích dự kiến và ngày. Không có nó, cải tiến phụ thuộc vào nhiệt tình và thời gian rảnh. Điều này cũng nghĩa là đưa ra đánh đổi với công việc phân phối một cách công khai, để năng lực được bảo vệ có chủ ý. Một sắp xếp phổ biến là dành một phần mỗi chu kỳ cho cải tiến, hoặc chạy các chu kỳ cải tiến ngắn song song với phân phối.

### Đo cải tiến

Để biết một thứ đã cải thiện, bạn cần trước và sau. Chọn một thước đo liên quan đến thay đổi, như thời gian khôi phục dịch vụ, sự cố lặp lại hay thời gian chờ, và xem nó trước và sau. Tránh các thước đo dễ dịch chuyển mà không cải thiện gì. Dùng nhiều thước đo và bàn các con số có nghĩa gì (xem Chủ đề 5.6 — Chỉ số và đo lường). Các bài viết đã tham khảo không đưa bằng chứng về hiệu quả của các chương trình cải tiến, nên kết quả của chính các nhóm là bằng chứng.

### Phương pháp

Nhiều phương pháp hỗ trợ cải tiến: phân tích nguyên nhân gốc, Six Sigma và DMAIC để giảm lỗi dựa trên dữ liệu, vẽ bản đồ luồng giá trị và các sự kiện kaizen. Bài viết Wikipedia về cải tiến liên tục không nhắc đến Six Sigma, DMAIC hay mô hình cải tiến của ITIL, nên cuốn sách này không gán chúng cho nó. Chọn phương pháp phù hợp với quy mô vấn đề: một hành động retrospective cho một ma sát nhỏ, một dự án dựa trên dữ liệu cho một lỗi dai dẳng.

### Giới hạn

Bài viết không ghi lời chỉ trích nào về cải tiến liên tục, và một số nguồn của nó yếu hoặc cũ. Các rủi ro thực tế thì đã biết rõ: mệt mỏi vì cải tiến khi quá nhiều thay đổi đến, màn kịch cải tiến khi danh sách dài ra mà không có gì đổi, và tối ưu hóa cục bộ khi một nhóm cải thiện phần của mình và làm tổng thể tệ đi. Hãy phòng ngừa bằng một danh sách ngắn, nhìn thấy được và một lần kiểm tra kết quả đều đặn.

## Thực hành tốt

1. **Giữ một danh sách cải tiến nhìn thấy được.** Gom ý tưởng từ sự cố, retrospective, phản hồi và rà soát vào một nơi. Cho mỗi hạng mục một chủ sở hữu, vấn đề nó xử lý và lợi ích dự kiến.
2. **Coi hạng mục cải tiến là công việc.** Đặt chúng vào backlog cạnh các hạng mục phân phối, và quyết định trong lập kế hoạch chúng nhận bao nhiêu năng lực. Bảo vệ phần đó khi áp lực tăng.
3. **Chọn ít và hoàn thành.** Làm một đến ba hạng mục giá trị nhất mỗi lúc. Một danh sách dài các hạng mục đã bắt đầu là dấu hiệu của màn kịch cải tiến.
4. **Dùng chu trình.** Với mỗi thay đổi, nêu kế hoạch và kết quả dự kiến, thực hiện thay đổi ở quy mô nhỏ, kiểm tra dữ liệu và quyết định áp dụng, điều chỉnh hay bỏ. Viết quyết định ra.
5. **Định nghĩa thành công trước khi bắt đầu.** Chọn thước đo và điều bạn mong thấy, trước thay đổi. Điều này ngăn việc giải thích mọi kết quả là thành công về sau.
6. **Bắt đầu nhỏ và cục bộ.** Để các nhóm cải thiện công việc của chính họ mà không chờ cho phép, trong giới hạn rõ ràng. Dành các chương trình lớn hơn cho các vấn đề xuyên nhóm.
7. **Chia sẻ điều bạn học.** Công bố các ghi chú ngắn về điều đã đổi và điều đã xảy ra, kể cả thất bại. Các nhóm khác có thể tái sử dụng hoặc tránh nó.
8. **Nhìn vào cả hệ thống.** Trước khi áp dụng một cải tiến, hỏi nó ảnh hưởng đến ai. Một lợi ích cục bộ thêm việc cho nhóm khác không phải là cải tiến tổng thể (xem Chủ đề 2.4 — Các nguyên tắc dẫn dắt của ITIL về suy nghĩ toàn diện).
9. **Rà soát danh sách đều đặn.** Mỗi tháng một lần, xem danh sách cùng nhóm và chủ sở hữu dịch vụ: cái gì đã xong, cái gì bị kẹt, cái gì nên bỏ. Gỡ các hạng mục đã mất ý nghĩa.
10. **Ăn mừng kết quả, không phải hoạt động.** Ghi nhận các cải tiến làm mọi thứ tốt hơn cho người dùng hay nhân viên, kèm bằng chứng. Đừng thưởng cho số lượng ý tưởng hay cuộc họp.
11. **Khớp phương pháp với vấn đề.** Dùng thí nghiệm nhanh cho vấn đề nhỏ, phương pháp dựa trên dữ liệu cho lỗi dai dẳng, và nhờ chuyên gia giúp cho vấn đề phức tạp.
12. **Lôi kéo người dùng và nhà cung cấp.** Hỏi họ nên cải thiện gì, và mời họ rà soát kết quả ở nơi họ bị ảnh hưởng (xem Chủ đề 3.14 — Quản lý nhà cung cấp).

## Câu hỏi để thảo luận với nhóm của bạn

**Điều gì đã tốt hơn trong quý vừa qua nhờ một thứ chúng ta quyết định thay đổi?**

Xin các ví dụ cụ thể kèm bằng chứng. Nếu mọi người chật vật, đó là phát hiện. Nếu có ví dụ, hỏi điều gì làm chúng hiệu quả: một chủ sở hữu, thời gian, một thước đo rõ ràng. So sánh với các cải tiến bị đình trệ. Người điều phối có thể hỏi mẫu hình nào phổ biến hơn trong nhóm của bạn.

**Ý tưởng cải tiến của chúng ta đi đâu?**

Lần theo vài ý tưởng gần đây: từ một buổi rà soát sự cố, một retrospective, một bình luận của khách hàng. Tìm xem mỗi cái kết thúc ở đâu. Thường chúng rải rác trong các tài liệu và ticket. Bàn một danh sách duy nhất, ai duy trì nó và nó được rà soát thế nào. Tạo phiên bản đầu tiên ngay trong buổi họp.

**Bao nhiêu năng lực của chúng ta dành cho cải tiến, và ai đã quyết định?**

Xem vài chu kỳ gần nhất và ước lượng tỷ lệ. Thường nó nhỏ hơn nhiều so với mọi người tin, và không ai chọn nó. Hỏi nhóm và các quản lý nghĩ nó nên là bao nhiêu. Thống nhất một tỷ lệ khởi đầu và một cách bảo vệ nó.

**Thay đổi nào của chúng ta đã được kiểm tra sau đó?**

Hỏi về ba thay đổi gần nhất và bằng chứng nào cho thấy chúng hiệu quả. Nhiều cái chưa bao giờ được kiểm tra. Bàn một thói quen đơn giản: trước thay đổi, nêu bạn mong thấy gì và khi nào bạn sẽ xem. Chọn một thay đổi hiện tại để áp dụng.

**Cải tiến nào đã giúp chúng ta mà làm hại người khác?**

Thu thập các ví dụ về cải tiến cục bộ đẩy một vấn đề sang nơi khác. Chúng thường đến từ thay đổi bàn giao hay phê duyệt. Bàn cách hỏi những người bị ảnh hưởng sớm hơn. Mục đích là một câu hỏi đơn giản để hỏi trước một thay đổi.

**Hạng mục cũ nhất trong danh sách cải tiến của chúng ta là gì, và vì sao nó vẫn còn đó?**

Chọn hạng mục cũ nhất và lần theo lịch sử của nó. Các lý do gồm không có chủ sở hữu, không có thời gian, bất đồng hoặc bị sự việc vượt qua. Quyết định làm nó, lên lịch hoặc bỏ nó một cách công khai. Bỏ một hạng mục có chủ ý là dấu hiệu của một danh sách lành mạnh.

## Trong thực tế: một ví dụ agile ITIL

Một công ty cấp nước khu vực có nền tảng tính hóa đơn khách hàng và đọc đồng hồ do một nhóm mười một người vận hành. Retrospective được tổ chức hai tuần một lần và tạo ra danh sách hành động, nhưng ít cái được hoàn thành. Sự cố được rà soát, và các hành động từ những buổi đó được ghi vào một hệ thống riêng. Cơ quan quản lý của công ty đã yêu cầu bằng chứng về cách công ty học từ các lỗi dịch vụ.

Chủ sở hữu dịch vụ và trưởng nhóm quyết định làm cho cải tiến nhìn thấy được. Họ tạo một danh sách cải tiến duy nhất gom các hành động từ retrospective, rà soát sự cố và phản hồi của khách hàng. Mỗi hạng mục có một chủ sở hữu, một phát biểu vấn đề, lợi ích dự kiến và một thước đo. Họ dành 15 phần trăm mỗi chu kỳ hai tuần cho các hạng mục cải tiến, và giới hạn số đang tiến hành ở ba. Với mỗi cái, họ theo lập kế hoạch, thực hiện, kiểm tra và hành động: họ viết điều họ mong thấy, thử thay đổi trên một tập con, xem các con số sau một khoảng đặt trước và ghi lại quyết định. Một buổi rà soát hằng tháng với chủ sở hữu dịch vụ và một đại diện chăm sóc khách hàng xem điều đã làm và điều đã học.

Sau sáu tháng, nhóm đã hoàn thành chín hạng mục, gồm một bản sửa cho lỗi nhập dữ liệu đồng hồ lặp lại làm giảm sự cố lặp lại do nguyên nhân đó gần về không, và một giải thích hóa đơn rõ ràng hơn làm giảm các cuộc gọi về chủ đề đó. Nhóm cũng có bằng chứng cho cơ quan quản lý dưới dạng danh sách và các lần kiểm tra. Một số khó khăn còn lại. Hai hạng mục được hoàn thành mà không được kiểm tra vì chu kỳ đã chuyển đi, và một cải tiến cho quy trình nhập làm công việc của một nhóm báo cáo phía sau chậm hơn, điều chỉ lộ ra một tháng sau. Nhóm thêm một câu hỏi "ai khác bị ảnh hưởng" vào mẫu danh sách và một nhắc lịch cho mỗi lần kiểm tra.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối sở hữu phần lớn danh sách cải tiến. Hãy đưa ý tưởng từ retrospective và sự cố vào một nơi, hoàn thành những gì bạn bắt đầu và kiểm tra kết quả. Sẵn lòng dành năng lực cho cải tiến thay vì chỉ cho tính năng mới.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thấy ma sát đầu tiên. Hãy đưa các chủ đề sự cố, liên hệ của bàn dịch vụ và dữ liệu dòng chảy vào danh sách, và tham gia kiểm tra kết quả. Biện hộ cho các cải tiến giảm toil và sự cố lặp lại.

### Lãnh đạo và quản trị

Lãnh đạo bảo vệ năng lực cho cải tiến và hỏi về kết quả. Hãy hỏi điều gì đã cải thiện và nó được kiểm tra thế nào, không phải có bao nhiêu ý tưởng. Gỡ các chướng ngại mà các nhóm nêu và cho thấy bạn đã làm vậy. Ủng hộ các cải tiến xuyên ranh giới nhóm.

### Khách hàng và người dùng

Khách hàng và người dùng cung cấp một số ý tưởng tốt nhất. Hãy nói với nhóm điều gì làm bạn bực và xin được nghe điều đã đổi nhờ đó. Tham gia các buổi rà soát nơi dịch vụ của bạn liên quan. Phản hồi của bạn về việc một thay đổi có giúp ích không là kiểm tra trực tiếp nhất.

## Các kiểu thất bại thường gặp

- **Ý tưởng không có chủ sở hữu.** Danh sách dài ra và không có gì được làm. Thay vào đó, yêu cầu mỗi hạng mục có một chủ sở hữu và lợi ích dự kiến.
- **Cải tiến như thời gian rảnh.** Phân phối chèn ép nó. Thay vào đó, dành năng lực và bảo vệ nó.
- **Quá nhiều cùng lúc.** Mọi thứ được bắt đầu và ít cái hoàn thành. Thay vào đó, giới hạn công việc đang làm dở cho các hạng mục cải tiến.
- **Không kiểm tra.** Thay đổi được áp dụng chỉ vì đã được lên kế hoạch. Thay vào đó, nêu kết quả dự kiến trước và xem dữ liệu.
- **Tối ưu hóa cục bộ.** Một nhóm cải thiện và nhóm khác chịu khổ. Thay vào đó, hỏi ai khác bị ảnh hưởng trước và sau.
- **Màn kịch cải tiến.** Workshop và áp phích thay cho kết quả. Thay vào đó, đếm các cải tiến đã hoàn thành và được xác minh.
- **Thước đo có thể bị gian lận.** Con số dịch chuyển mà không có gì cải thiện. Thay vào đó, dùng nhiều thước đo và nhìn vào công việc bên dưới.
- **Quên chia sẻ.** Bài học ở lại với nhóm. Thay vào đó, công bố ghi chú ngắn và mời người khác tái sử dụng.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Thu thập và ưu tiên | Ý tưởng rải rác và không được ưu tiên | Một số nhóm giữ danh sách | Một danh sách nhìn thấy được cho mỗi nhóm với chủ sở hữu và lợi ích dự kiến | Ưu tiên dùng dữ liệu về tác động và công sức | Danh sách cải tiến được căn chỉnh giữa các nhóm và với khách hàng |
| Năng lực và dòng chảy | Cải tiến làm vào thời gian rảnh | Một số năng lực được dành riêng | Một phần năng lực được bảo vệ và có giới hạn công việc đang làm dở | Năng lực và thông lượng của cải tiến được rà soát | Năng lực được chia sẻ giữa các nhóm cho các cải tiến xuyên suốt |
| Kiểm tra kết quả | Kết quả không được kiểm tra | Một số thay đổi được rà soát | Mỗi thay đổi có một kỳ vọng được nêu và một lần kiểm tra | Kết quả được đo và gắn với quyết định | Bằng chứng được chia sẻ giữa các nhóm và dùng để dẫn dắt tổ chức |
| Học tập và lan truyền | Bài học ở lại cục bộ | Một số ghi chú được chia sẻ | Bài học được công bố và rà soát | Việc tái sử dụng cải tiến được theo dõi | Cải tiến lan giữa các nhóm và nhà cung cấp một cách thường quy |

## Danh mục kiểm tra

- [ ] Chúng ta có một danh sách cải tiến nhìn thấy được với chủ sở hữu và lợi ích dự kiến.
- [ ] Ý tưởng từ retrospective, rà soát sự cố, chủ đề của bàn dịch vụ và phản hồi đều nuôi nó.
- [ ] Một phần được bảo vệ của mỗi chu kỳ dành cho các hạng mục cải tiến.
- [ ] Chúng ta giới hạn số hạng mục cải tiến đang tiến hành.
- [ ] Mỗi thay đổi nêu một kết quả dự kiến và thời điểm kiểm tra.
- [ ] Chúng ta kiểm tra kết quả và ghi lại quyết định áp dụng, điều chỉnh hay bỏ.
- [ ] Chúng ta hỏi ai khác bị ảnh hưởng trước khi thực hiện một thay đổi.
- [ ] Danh sách được rà soát ít nhất mỗi tháng.
- [ ] Chúng ta chia sẻ ghi chú ngắn về điều đã đổi và điều chúng ta học.
- [ ] Chúng ta nêu được ba điều tốt hơn trong quý này nhờ công việc cải tiến.

## Lời nhắc AI

**Mục đích: hợp nhất các ý tưởng cải tiến thành một danh sách ưu tiên duy nhất.**

```text
Here are improvement ideas from several sources over the last [period]: [paste items from retrospectives, incident reviews, desk themes, and feedback, one per line, with their source].

Merge duplicates, group related items, and produce a list with: a one-line problem statement for each, the source, what benefit it might bring (use only what the text implies, otherwise write "unknown"), and a question about effort. Do not rank by guesswork; instead propose a way to rank (for example by repeat count and user impact) and apply it only to data I gave. List what you are unsure of.
```

**Mục đích: biến một ý tưởng cải tiến thành một thí nghiệm nhỏ.**

```text
Help me turn this improvement idea into a small experiment using plan, do, check, act.

The idea: [describe].
The problem it addresses, with evidence: [paste facts].
Who is affected: [list teams and users].
Measures we already have: [list].

Write: a hypothesis in one sentence, the smallest change that could test it, how long to run it, what we will measure before and after (leave targets as [to be agreed]), who else to ask before we start, and what decision rule we will use at the end. Do not invent baseline data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: rà soát tình trạng của một danh sách cải tiến.**

```text
Here is our improvement list with status, owner, age, and expected benefit: [paste].

Using only this text, identify: items with no owner; items older than [period] with no progress; items whose expected benefit is unclear; and items that look related and could be combined. For each, suggest a question to ask at the monthly review. Do not decide for us what to drop. List what you are unsure of.
```

**Mục đích: kiểm tra một cải tiến có hiệu quả không.**

```text
We made this change: [describe] on [date].

Measure before the change, with dates and values: [paste real data].
Measure after, with dates and values: [paste real data].
What else changed in the same period: [list, or write "unknown"].

Describe in plain words what the data shows, without claiming the change caused it if other changes could explain it. Suggest additional checks, and say whether the data is enough to decide to adopt, adjust, or drop. Do not invent numbers or statistics. List what you are unsure of.
```

## Kỹ năng AI

- [kaizen](../../../../skills/kaizen/SKILL.md): dùng để lập kế hoạch và rà soát các cải tiến nhỏ, liên tục.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để chạy các retrospective tạo ra hành động có chủ sở hữu.
- [dmaic](../../../../skills/dmaic/SKILL.md): dùng để cải tiến dựa trên dữ liệu các lỗi dai dẳng, qua xác định, đo, phân tích, cải tiến và kiểm soát.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): dùng khi biến thiên và lỗi là vấn đề chính và bạn cần một cách tiếp cận thống kê.
- [futurespective](../../../../skills/futurespective/SKILL.md): dùng để cùng nhìn về phía trước và thống nhất các cải tiến cho giai đoạn tiếp theo.

## Nguồn chính

- **Continual improvement process** (Wikipedia): định nghĩa, kaizen, PDCA và thuật ngữ continual so với continuous.
- **PDCA** (Wikipedia): chu trình lập kế hoạch, thực hiện, kiểm tra, hành động, nguồn gốc của nó và các biến thể như PDSA.
- **Kaizen** (Wikipedia): bối cảnh về cải tiến nhỏ, liên tục và nguồn gốc của nó trong ngành công nghiệp Nhật.
- **Lean software development** (Wikipedia): các ý tưởng lean đứng sau cải tiến liên tục trong công việc phần mềm.

## Tài liệu tham khảo

1. Continual improvement process — Wikipedia — https://en.wikipedia.org/wiki/Continual_improvement_process
2. PDCA — Wikipedia — https://en.wikipedia.org/wiki/PDCA
3. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
4. W. Edwards Deming — Wikipedia — https://en.wikipedia.org/wiki/W._Edwards_Deming
5. Walter A. Shewhart — Wikipedia — https://en.wikipedia.org/wiki/Walter_A._Shewhart
6. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
7. Six Sigma — Wikipedia — https://en.wikipedia.org/wiki/Six_Sigma
8. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
9. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
