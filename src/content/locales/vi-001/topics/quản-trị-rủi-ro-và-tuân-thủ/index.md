# Quản trị, rủi ro và tuân thủ

**Quản trị, rủi ro và tuân thủ đặt ra hướng đi, giới hạn và bằng chứng cho công việc của một tổ chức, và trong một tổ chức agile, nó hoạt động tốt nhất như các hàng rào bảo vệ được xây vào cách các nhóm giao hàng, không phải các cổng chắn đặt ở cuối.**

## Vì sao điều này quan trọng

Mọi tổ chức cung cấp dịch vụ đều chịu trách nhiệm với ai đó: khách hàng, một hội đồng, một cơ quan quản lý, công chúng. Trách nhiệm giải trình đó mang vài dạng quen thuộc. Phải có hướng đi và quyền quyết định rõ ràng (quản trị). Phải có cái nhìn trung thực về điều có thể sai và điều đang được làm về nó (rủi ro). Và phải có bằng chứng rằng tổ chức tuân theo các luật, hợp đồng và chính sách áp dụng cho mình (tuân thủ).

Các nhóm agile và các chức năng quản trị thường gặp nhau trong trạng thái nghi kỵ lẫn nhau. Các nhóm thấy hội đồng phê duyệt, biểu mẫu dài và những quy tắc mà họ không thấy lý do. Nhân viên quản trị và kiểm toán thấy các nhóm thay đổi sản xuất nhanh và để lại ít bản ghi. Cả hai bên đều có lý. Con đường đi qua không phải để bên nào thắng, mà là thiết kế một quản trị tương thích với thay đổi thường xuyên: giới hạn rõ ràng, kiểm soát dựa trên rủi ro và bằng chứng do chính công việc tạo ra.

[Bài viết Wikipedia về quản trị, quản lý rủi ro và tuân thủ](https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance) mô tả GRC là một cách tiếp cận toàn diện đối với quản trị, quản lý rủi ro và tuân thủ quy định, được phát triển những năm 2000 để quản lý các yêu cầu tuân thủ tài chính ngày càng phức tạp. Nó không nêu lời chỉ trích nào và không có khung riêng cho CNTT. Chủ đề này kết hợp nó với các bài về quản lý rủi ro và tuân thủ quy định, với các chủ đề trước về thay đổi, an toàn và tính liên tục, và với hướng dẫn của DORA về phê duyệt. Nó không đưa tư vấn pháp lý; các quy tắc áp dụng cho bạn phụ thuộc vào quốc gia, ngành và hợp đồng của bạn, và nguồn đúng là văn bản của quy tắc.

## Các khái niệm cốt lõi

### Quản trị

Bài viết GRC mô tả quản trị doanh nghiệp là các quy trình do hội đồng đặt ra định hình cấu trúc và giao vai trò. Trong CNTT, quản trị là về ai quyết định cái gì, dựa trên cơ sở nào, và các quyết định được kiểm tra thế nào. COBIT, được Wikipedia mô tả là khung của ISACA cho quản lý và quản trị CNTT, là một tham chiếu (xem Chủ đề 2.7 — Các khung và tiêu chuẩn ITSM). Hệ thống giá trị dịch vụ của ITIL gồm quản trị như một thành phần (xem Chủ đề 2.3 — Hệ thống giá trị dịch vụ ITIL).

Quản trị tốt trong một tổ chức agile tường minh về:

- **Hướng đi:** mục tiêu và ưu tiên, và ai đặt chúng.
- **Giới hạn:** điều các nhóm có thể tự quyết, và điều cần chuyển lên cấp trên (xem Chủ đề 1.9 — Quản lý Agile).
- **Trách nhiệm giải trình:** ai chịu trách nhiệm về từng dịch vụ (xem Chủ đề 5.5 — Quyền sở hữu sản phẩm và dịch vụ).
- **Bằng chứng:** tổ chức biết hướng đi và giới hạn của mình đang được theo như thế nào.

### Quản lý rủi ro

Wikipedia mô tả quản lý rủi ro là việc xác định, đánh giá và ưu tiên rủi ro, tiếp theo là giảm thiểu, giám sát và kiểm soát tác động hoặc xác suất của chúng. Bài viết nêu bốn lựa chọn xử lý:

| Lựa chọn | Ý nghĩa | Ví dụ |
|---|---|---|
| **Tránh** | Không làm hoạt động rủi ro (cũng từ bỏ lợi ích tiềm năng) | Quyết định không lưu một số dữ liệu |
| **Giảm** | Hạ mức nghiêm trọng hoặc khả năng | Kiểm thử tự động, triển khai theo giai đoạn, giám sát thêm |
| **Chia sẻ** | Chuyển gánh nặng hay lợi ích, như qua bảo hiểm hoặc thuê ngoài; bài viết lưu ý "chuyển rủi ro" thường là cách gọi sai, vì bên gốc thường vẫn giữ trách nhiệm pháp lý | Bảo hiểm, ký hợp đồng với nhà cung cấp |
| **Giữ lại** | Chấp nhận tổn thất, thường cho rủi ro nhỏ hoặc không bảo hiểm được | Quyết định sống chung với một rủi ro nhỏ |

Bài viết cũng xử lý cơ hội, các sự kiện bất định tích cực, với các chiến lược song song. Nó lưu ý rằng đánh giá rủi ro cân nhắc mức nghiêm trọng và xác suất, và dữ liệu tỷ lệ thường khan hiếm, đặc biệt với các sự kiện thảm khốc. Nó trích dẫn lời chỉ trích: Douglas Hubbard (2009) được trích là nói một số tiêu chuẩn không cho thấy cải thiện đo được về rủi ro, dù sự tự tin vào quyết định có vẻ tăng; nghiên cứu sau gợi ý lợi ích tài chính phụ thuộc vào tần suất và phương pháp đánh giá rủi ro hơn là công thức được dùng; và sự phân biệt của Benoit Mandelbrot giữa rủi ro "nhẹ" và "hoang dã", với việc đánh giá thấp độ hoang dã là sai lầm phổ biến. Bài viết trích dẫn ISO 31000, "Risk management: Guidelines", và tự nó bị đánh dấu cần thêm trích dẫn.

### Sổ đăng ký rủi ro

Một **sổ đăng ký rủi ro** là bản ghi các rủi ro đã xác định, với mô tả, đánh giá, chủ sở hữu, cách xử lý đã chọn và trạng thái. Đoạn trích bài viết đã đọc cho cuốn sách này không nhắc đến nó, nên đây là thực hành phổ biến. Hãy giữ nó ngắn, có chủ sở hữu và được rà soát. Rủi ro của dịch vụ gồm an toàn, tính sẵn sàng, nhà cung cấp hỏng, phụ thuộc vào một người chủ chốt và tuân thủ (xem Chủ đề 3.13 — Quản lý an toàn thông tin, Chủ đề 3.12 — Quản lý tính liên tục của dịch vụ và Chủ đề 3.14 — Quản lý nhà cung cấp).

### Tuân thủ

Bài viết Wikipedia về tuân thủ quy định mô tả nó là mục tiêu các tổ chức mong đạt được trong việc nắm được và tuân theo các luật, chính sách và quy định liên quan, và lưu ý rằng các tổ chức ngày càng kết hợp các kiểm soát vào các khung chung để giảm công việc trùng lặp. Nó nói định nghĩa của một kế hoạch tuân thủ hiệu quả vẫn khó nắm bắt, và nhắc đến các tiêu chuẩn như ISO 37301 và ISO 19600. Nó nêu các chế độ gồm Đạo luật Sarbanes-Oxley (2002), HIPAA, GDPR, PCI-DSS, Đạo luật Gramm-Leach-Bliley và những cái khác. Nó ghi lại lời chỉ trích: nghiên cứu tâm lý được bài viết trích dẫn lập luận rằng phần thưởng hay tiền phạt có thể làm yếu động lực nội tại và làm suy yếu tuân thủ, các nhà ủng hộ quyền riêng tư đặt câu hỏi về yêu cầu lưu giữ dữ liệu, việc thực thi khác nhau giữa các khu vực pháp lý, và các yêu cầu thay đổi nhanh khó theo dõi.

Một điểm thực tế: tuân thủ không phải một thứ. Mỗi chế độ có phạm vi và yêu cầu riêng. Hãy tìm hiểu chế độ nào áp dụng cho dịch vụ nào của bạn từ bộ phận pháp lý hoặc tuân thủ, và lấy văn bản.

### GRC như một cái nhìn

Bài viết GRC nói GRC bao gồm ba mặt liên quan: quản trị doanh nghiệp, quản lý rủi ro doanh nghiệp và tuân thủ, và nhắc đến các biến thể như GRC tài chính, pháp lý và vận hành. Nó ghi công cho thuật ngữ này thuộc về bài báo năm 2007 của Scott Mitchell và Open Compliance and Ethics Group, và lưu ý rằng phần mềm cho GRC đã có từ 2002 và một số công ty bắt đầu dùng công cụ AI cho GRC năm 2025. Ưu điểm của cái nhìn kết hợp là ba thứ được nối với nhau: quản trị đặt điều gì quan trọng, quản lý rủi ro tìm điều gì đe dọa nó, và tuân thủ cho thấy điều gì đang được làm.

### Hàng rào bảo vệ, không phải cổng chắn

Một **cổng chắn** là một trạm kiểm soát, thường thủ công, nơi công việc chờ phê duyệt. Một **hàng rào bảo vệ** là một giới hạn được xây vào con đường giữ công việc không đi lệch mà không dừng nó. Ví dụ: kiểm thử tự động phải đạt, kiểm tra chính sách trong pipeline chặn các cấu hình không an toàn, ngân sách kèm cảnh báo và kiểm soát truy cập theo vai trò. Hướng dẫn của DORA về phê duyệt thay đổi nói phê duyệt đạt được tốt nhất qua đánh giá đồng cấp và tự động hóa, rằng phê duyệt bên ngoài nặng nề có liên hệ với hiệu suất giao hàng kém hơn, và rằng thêm phê duyệt để đáp lại sự bất ổn có xu hướng làm mọi thứ tệ hơn (xem Chủ đề 3.4 — Kích hoạt thay đổi). Hàng rào bảo vệ áp dụng cùng ý tưởng xuyên quản trị: sự kiểm soát nằm trong hệ thống và tự tạo ra bằng chứng của nó.

### Bằng chứng như sản phẩm phụ

Kiểm toán viên cần bằng chứng rằng các kiểm soát vận hành. Một pipeline ghi ai đã rà soát, cái gì đã kiểm thử và cái gì đã triển khai cho bằng chứng cho mọi thay đổi. Một danh mục dịch vụ (ITIL viết là "service catalogue") có chủ sở hữu cho bằng chứng về trách nhiệm giải trình. Postmortem cho bằng chứng về việc học. Điều này mạnh hơn nhiều so với một tài liệu hằng quý viết cho một cuộc kiểm toán. Hãy bàn sớm với kiểm toán viên họ sẽ chấp nhận gì (xem Chủ đề 5.1 — Quản lý dịch vụ Agile).

### Môi trường được quản lý chặt

Bài viết Wikipedia về phát triển phần mềm agile báo cáo rằng các lĩnh vực được quản lý như thiết bị y tế, dược phẩm, tài chính, hạt nhân, ô tô và hàng không ban đầu bị cho là không phù hợp với agile, và nay đã có những điều chỉnh, với các mối quan tâm về đảm bảo chất lượng, an toàn và an ninh, khả năng truy vết, và xác minh và xác nhận (xem Chủ đề 1.3 — Phát triển phần mềm Agile). Mẫu hình hiệu quả thường là giữ các kiểm soát cần thiết, tự động hóa bằng chứng của chúng và biến chúng thành một phần của định nghĩa hoàn thành, thay vì loại bỏ chúng.

### Giới hạn của các nguồn

Bài viết GRC không nêu khung hay lời chỉ trích nào và được đọc cho cuốn sách này ở dạng ngắn. Bài viết quản lý rủi ro chỉ được đọc một phần và bị đánh dấu cần trích dẫn. Bài viết tuân thủ không đưa chi phí hay quy trình kiểm toán. Hãy dùng chúng như bản đồ và đến các nguồn gốc để biết chi tiết.

## Thực hành tốt

1. **Viết ra quyền quyết định.** Với mỗi nhóm hay dịch vụ, nêu nó được quyết định gì một mình, cái gì cần tham vấn và cái gì cần phê duyệt. Công bố nó, và rà soát cùng các nhóm.
2. **Đặt hướng đi và giới hạn, không phải chỉ dẫn chi tiết.** Nêu kết quả, ngân sách, giới hạn rủi ro và các quy tắc không thương lượng. Để các nhóm quyết định cách làm trong đó.
3. **Giữ một sổ đăng ký rủi ro ngắn.** Với mỗi dịch vụ quan trọng, liệt kê các rủi ro hàng đầu với chủ sở hữu, cách xử lý và ngày rà soát. Rà soát nó ở một cuộc họp định kỳ, và bỏ những rủi ro đã qua.
4. **Chọn cách xử lý có chủ ý.** Với mỗi rủi ro, quyết định tránh, giảm, chia sẻ hay giữ lại, và ghi ai đã quyết định. Nhớ rằng chia sẻ một rủi ro không gỡ trách nhiệm của chính bạn.
5. **Đánh giá thường xuyên, bằng phương pháp đơn giản.** Bài viết báo cáo lợi ích phụ thuộc vào tần suất và phương pháp hơn là công thức. Rà soát rủi ro đều đặn bằng một phương pháp nhóm hiểu.
6. **Biết quy tắc nào áp dụng cho dịch vụ nào.** Xin bộ phận pháp lý hoặc tuân thủ một danh sách các chế độ áp dụng, kèm văn bản nguồn. Ghi nó vào từng dịch vụ.
7. **Xây hàng rào bảo vệ vào pipeline.** Tự động hóa kiểm thử, quét an ninh, kiểm tra chính sách và giới hạn truy cập để công việc không an toàn bị chặn sớm. Coi các kiểm soát là mã có chủ sở hữu.
8. **Nắm bắt bằng chứng như sản phẩm phụ.** Bảo đảm công cụ ghi các lần rà soát, phê duyệt, kết quả kiểm thử, triển khai và sự cố. Thống nhất với kiểm toán viên họ sẽ chấp nhận gì.
9. **Ánh xạ kiểm soát một lần.** Nếu bạn phải đáp ứng nhiều khung, hãy mô tả kiểm soát của bạn một lần và ánh xạ chúng sang từng yêu cầu, như bài viết về tuân thủ nói các tổ chức ngày càng làm.
10. **Dùng các đường dựa trên rủi ro cho thay đổi.** Làm thay đổi rủi ro thấp nhanh, đánh dấu thay đổi rủi ro cao để rà soát, và giữ một cơ quan trung tâm để điều phối và đánh đổi (xem Chủ đề 3.4 — Kích hoạt thay đổi).
11. **Đưa quản trị vào retrospective.** Định kỳ hỏi kiểm soát nào giúp ích và kiểm soát nào chỉ thêm chậm trễ. Bỏ hoặc thiết kế lại những cái sau, cùng chủ sở hữu và kiểm toán viên.
12. **Lập kế hoạch cho thay đổi trong quy tắc.** Chỉ định ai đó theo dõi các thay đổi về luật, tiêu chuẩn và hợp đồng, và báo cáo điều quan trọng với dịch vụ của bạn.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta cần xin những phê duyệt nào, và mỗi cái bảo vệ chống lại điều gì?**

Liệt kê các phê duyệt trên một thay đổi hay lần mua điển hình. Với mỗi cái, hỏi nó xử lý rủi ro nào và đã bao giờ từ chối điều gì chưa. Các phê duyệt không bảo vệ gì là ứng viên để bỏ. Các phê duyệt bảo vệ chống rủi ro thật có thể được đáp ứng nhẹ hơn. Người điều phối có thể hỏi người phê duyệt sẽ chấp nhận bằng chứng nào thay chữ ký.

**Năm rủi ro hàng đầu của dịch vụ chính là gì, và ai sở hữu từng cái?**

Mời mọi người liệt kê rủi ro độc lập, rồi so sánh. Khác biệt cho thấy nhóm thấy gì. Kiểm tra mỗi cái có chủ sở hữu và cách xử lý. Bàn cái nào đang được chấp nhận theo mặc định, không phải theo quyết định.

**Quy tắc nào áp dụng cho chúng ta, và văn bản ở đâu?**

Xin danh sách luật, tiêu chuẩn và hợp đồng áp dụng. Nếu không ai nói được, hãy tìm ai nói được. Kiểm tra bộ phận kỹ thuật biết mỗi cái đòi hỏi gì ở mình. Thống nhất một cách giữ danh sách luôn mới.

**Công cụ của chúng ta đã tạo ra bằng chứng nào mà kiểm toán viên có thể dùng?**

Liệt kê các bản ghi: rà soát, kết quả kiểm thử, lịch sử triển khai, rà soát sự cố. Hỏi kiểm toán viên gần đây đã yêu cầu gì và công cụ có thể cung cấp không. Xác định một bản ghi để tự động hóa. Mời một kiểm toán viên xem.

**Chúng ta đã thêm một kiểm soát sau một vấn đề ở đâu, và nó có giúp không?**

Xin các ví dụ. So sánh với cảnh báo của DORA rằng thêm phê duyệt để đáp lại sự bất ổn có xu hướng làm mọi thứ tệ hơn. Hỏi một cách đáp khác, như kiểm thử tốt hơn hoặc thay đổi nhỏ hơn, có hiệu quả không. Ghi lại một bài học.

**Một hàng rào bảo vệ sẽ trông thế nào cho thứ chúng ta hiện đang chặn bằng cổng?**

Chọn một cổng. Hỏi cổng định ngăn điều gì và điều đó có thể được ngăn tự động thế nào. Ví dụ, một kiểm tra chính sách chặn một cấu hình rủi ro. Thống nhất một thử nghiệm với chủ sở hữu của cổng.

## Trong thực tế: một ví dụ agile ITIL

Một quỹ hưu trí quốc gia vận hành một máy tính quyền lợi trực tuyến và một dịch vụ thanh toán. Nó bị quản lý chặt, kiểm toán hằng năm và chịu các quy tắc nghiêm ngặt về xử lý dữ liệu. Văn phòng quản trị của quỹ yêu cầu mọi thay đổi sản xuất phải được một hội đồng thay đổi họp hằng tuần rà soát, và mọi dự án phải hoàn tất một đánh giá rủi ro 30 trang trước khi phát hành. Lập trình viên phát hành hiếm và theo lô lớn. Một bản phát hành gần đây gây ra một phép tính sai cho một nhóm nhỏ thành viên, và phản ứng của hội đồng là thêm một phê duyệt nữa.

Trưởng bộ phận rủi ro và trưởng bộ phận kỹ thuật quyết định thử cách khác. Họ bắt đầu với danh sách các chế độ áp dụng cho máy tính và dịch vụ thanh toán, lấy từ nhóm pháp lý của quỹ kèm văn bản của từng cái, và ánh xạ các kiểm soát của quỹ sang chúng một lần. Vai trò của hội đồng thay đổi: các thay đổi thường lệ, được kiểm thử tốt với kiểm thử tự động và đánh giá đồng cấp tiến hành mà không cần nó, các thay đổi rủi ro cao (những thay đổi chạm vào quy tắc tính toán hoặc thanh toán) được đánh dấu bởi một danh sách ngắn các tín hiệu và được một chuyên gia rủi ro rà soát trong hai ngày, và hội đồng họp để điều phối và xử lý ngoại lệ. Pipeline ghi ai đã rà soát và kiểm thử nào đạt, và một kiểm tra chính sách chặn các bản phát hành không qua bộ kiểm thử tính toán. Đánh giá rủi ro được thay bằng một mục sổ đăng ký một trang cho mỗi dịch vụ, rà soát hằng tháng.

Một kiểm toán viên nội bộ thấy các bản ghi pipeline và sổ đăng ký, và yêu cầu một mẫu các lần rà soát để kiểm tra đánh giá đồng cấp có thật không; trưởng bộ phận kỹ thuật sắp xếp lấy mẫu hằng quý bởi một kỹ sư cao cấp. Sau sáu tháng, bản phát hành là hằng tuần, tỷ lệ thay đổi thất bại thấp hơn, và kiểm toán thấy bằng chứng đủ. Một số khó khăn còn lại. Hai nhóm áp dụng các tín hiệu rủi ro cao không nhất quán, hướng dẫn của một cơ quan quản lý đòi một xác nhận tường minh cho một số thay đổi tính toán mà con đường mới không nắm bắt, và các mục sổ đăng ký ở một số nhóm được viết thiếu cẩn thận. Trưởng bộ phận rủi ro thêm bước xác nhận cho những thay đổi đó, ban hành các ví dụ về tín hiệu, và nhờ các nhóm mang một mục sổ đăng ký đến buổi rà soát hằng tháng.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối thực hiện kiểm soát qua pipeline và thực hành của mình. Hãy tìm hiểu quy tắc nào áp dụng cho dịch vụ của bạn và vì sao, đề xuất các cách tạo bằng chứng tự động, và đưa rủi ro vào lập kế hoạch. Coi hàng rào bảo vệ là một phần của sản phẩm.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành sở hữu nhiều kiểm soát: truy cập, giám sát, liên tục và bản ghi. Giữ bằng chứng trong công cụ, nói với bộ phận quản trị điều gì hiệu quả trong thực tế, và giúp thiết kế lại các cổng chỉ thêm chậm trễ. Tham gia các buổi rà soát rủi ro với dữ liệu sự cố thật.

### Lãnh đạo và quản trị

Lãnh đạo đặt hướng đi, giới hạn và trách nhiệm giải trình, và quyết định chấp nhận rủi ro nào. Hãy yêu cầu cái nhìn về rủi ro bằng ngôn ngữ đơn giản và bằng chứng, không phải khối lượng tài liệu. Sẵn lòng thay một cổng bằng một hàng rào bảo vệ khi mục đích có thể được đáp ứng. Giữ vai trò của hội đồng tập trung vào điều phối và các đánh đổi thật.

### Khách hàng và người dùng

Khách hàng và người dùng dựa vào tổ chức để xử lý dữ liệu và tiền của họ đúng đắn. Hãy hỏi nhà cung cấp họ theo tiêu chuẩn và quy tắc nào và họ chứng tỏ bằng cách nào. Hãy mong thông tin trung thực sau một thất bại. Nếu bạn có yêu cầu đặc biệt, như quy tắc của một cơ quan quản lý, hãy nói với nhà cung cấp sớm.

## Các kiểu thất bại thường gặp

- **Quản trị như một cổng chắn cuối.** Các lần rà soát đến ở cuối và làm chậm mọi thứ. Thay vào đó, xây hàng rào bảo vệ vào công việc và rà soát theo rủi ro.
- **Tài liệu như bằng chứng.** Báo cáo được viết cho kiểm toán viên. Thay vào đó, tạo bằng chứng từ các công cụ dùng trong công việc.
- **Một đường cho mọi thay đổi.** Thay đổi thường lệ chờ cùng thay đổi rủi ro. Thay vào đó, phân loại theo rủi ro.
- **Một sổ đăng ký rủi ro không ai đọc.** Nó thành một danh sách dài. Thay vào đó, giữ nó ngắn, có chủ sở hữu và được rà soát.
- **Coi chuyển rủi ro là loại bỏ rủi ro.** Bảo hiểm hay thuê ngoài được giả định chấm dứt trách nhiệm. Thay vào đó, nhớ rằng bên gốc thường vẫn giữ trách nhiệm.
- **Quy tắc không rõ.** Các nhóm không biết luật và tiêu chuẩn nào áp dụng. Thay vào đó, lấy danh sách và văn bản từ pháp lý hoặc tuân thủ.
- **Thêm kiểm soát sau mỗi sự cố.** Quy trình phình ra và tốc độ giảm. Thay vào đó, tìm nguyên nhân và sửa bằng kiểm thử, thay đổi nhỏ hơn hoặc phục hồi nhanh hơn.
- **Tuân thủ như hình phạt.** Tiền phạt và nỗi sợ chi phối. Thay vào đó, giải thích mục đích của quy tắc và làm cho đường an toàn thành đường dễ.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Quản trị và quyền quyết định | Quyết định theo thói quen và thứ bậc | Một số nhóm có giới hạn bằng văn bản | Quyền quyết định, giới hạn và chủ sở hữu được viết ra và chia sẻ | Hiệu quả quản trị được rà soát theo kết quả | Quản trị được căn chỉnh giữa các nhóm, nhà cung cấp và đối tác |
| Quản lý rủi ro | Rủi ro được bàn không chính thức | Một số dịch vụ có danh sách rủi ro | Sổ đăng ký rủi ro ngắn có chủ sở hữu với cách xử lý được rà soát đều đặn | Thước đo và sự kiện rủi ro cung cấp thông tin cho đánh giá và xử lý | Cái nhìn về rủi ro được chia sẻ và hợp nhất trong toàn tổ chức |
| Tuân thủ và bằng chứng | Bằng chứng được tập hợp cho kiểm toán | Một số bằng chứng do công cụ tạo ra | Quy tắc áp dụng được liệt kê; kiểm soát được ánh xạ một lần; bằng chứng đến từ công cụ | Hoạt động kiểm soát và chất lượng bằng chứng được đo | Bằng chứng được chia sẻ liên tục với kiểm toán viên và đối tác |
| Hàng rào bảo vệ và đường thay đổi | Kiểm soát là cổng chắn thủ công | Có một số kiểm tra tự động | Đường dựa trên rủi ro và hàng rào bảo vệ pipeline là chuẩn | Hiệu quả hàng rào bảo vệ và chặn nhầm được theo dõi và tinh chỉnh | Hàng rào bảo vệ được chia sẻ và cải thiện giữa các nhóm |

## Danh mục kiểm tra

- [ ] Quyền quyết định và giới hạn được viết cho mỗi nhóm hay dịch vụ.
- [ ] Mỗi dịch vụ quan trọng có một sổ đăng ký rủi ro ngắn với chủ sở hữu, cách xử lý và ngày rà soát.
- [ ] Chúng ta có danh sách các luật, tiêu chuẩn và hợp đồng áp dụng cho từng dịch vụ, kèm văn bản nguồn.
- [ ] Kiểm soát của chúng ta được mô tả một lần và ánh xạ sang từng yêu cầu.
- [ ] Pipeline ghi các lần rà soát, kiểm thử và triển khai làm bằng chứng.
- [ ] Kiểm toán viên đã nói họ chấp nhận bằng chứng nào thay chữ ký.
- [ ] Thay đổi thường lệ và rủi ro theo các đường khác nhau với tiêu chí rõ ràng.
- [ ] Mỗi phê duyệt có mục đích được nêu, và những phê duyệt không bao giờ từ chối được rà soát.
- [ ] Các kiểm soát thêm sau sự cố được rà soát về tác dụng.
- [ ] Có người theo dõi thay đổi trong quy tắc áp dụng và báo cáo chúng.

## Lời nhắc AI

**Mục đích: biến một chuỗi phê duyệt thành các lựa chọn hàng rào bảo vệ.**

```text
Here is an approval chain we use for [type of change or purchase]: [list each approval, who gives it, what they check, how long it takes, and how many times it has refused something in the last year (use real figures or write "unknown")].
Rules we know require some of it, with source text: [paste, or write "none known"].

For each approval, state the purpose as best you can from the text, suggest what evidence or automated check could meet the same purpose, and say what risk would remain. Do not remove anything required by the pasted rules. Do not claim any law or standard requires something unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: soạn một mục sổ đăng ký rủi ro.**

```text
Help me write a risk register entry for [service].

The risk, in my words: [describe].
What could cause it and what could result: [describe].
What controls exist: [list].
What I know about likelihood and impact (facts only): [paste, or write "unknown"].

Produce an entry with: a clear statement ("If … then … resulting in …"), causes, consequences, existing controls, a proposed treatment option (avoid, reduce, share, or retain) with reasoning, a suggested owner role, and review date placeholder. Do not invent likelihoods or numbers. Mark assumptions. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: liệt kê bằng chứng mà công cụ của bạn đã tạo ra cho một kiểm soát.**

```text
An auditor will ask us about this control: [describe the control and how it is described in the requirement; paste the text].

Our tools and records for the activity: [list version control, pipeline, ticketing, monitoring, and what each records].
How the activity works: [describe].

Make a table of what evidence each tool produces for the control, where it is stored, who can alter it, and the gaps. Suggest three lightweight ways to close the gaps. Do not claim the requirement demands anything beyond the pasted text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị một cuộc trò chuyện về quản trị giữa các nhóm phân phối và kiểm toán.**

```text
Plan a 60-minute conversation between [number] delivery team members and [number] audit or governance colleagues about how an agile team shows control.

Concerns from audit, in their words: [paste].
Concerns from teams, in their words: [paste].
Evidence the teams produce today: [list].

Provide a timed agenda, questions for each side, a template to record what evidence is acceptable for each control, and a closing step that records actions with owners and dates. Keep it free of any particular tool. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi và rà soát rủi ro, cách xử lý và chủ sở hữu.
- [risks-actions-issues-decisions](../../../../skills/risks-actions-issues-decisions/SKILL.md): dùng để giữ một nhật ký nhẹ về rủi ro, hành động, vấn đề và quyết định.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): dùng để chọn các thước đo cảnh báo sớm cho rủi ro.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): dùng để chuẩn bị cho kiểm toán và tổ chức bằng chứng.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để làm quyền quyết định và trách nhiệm giải trình tường minh.

## Nguồn chính

- **Governance, risk management, and compliance** (Wikipedia): một tổng quan ngắn về GRC, các thành phần và lịch sử của nó.
- **Risk management** (Wikipedia): định nghĩa, các lựa chọn xử lý và lưu ý về đánh giá rủi ro.
- **Regulatory compliance** (Wikipedia): định nghĩa, các chế độ được nêu và lời chỉ trích.
- **Streamlining change approval** (DORA, dora.dev): hướng dẫn dựa trên nghiên cứu về thay phê duyệt nặng nề bằng đánh giá đồng cấp và tự động hóa.

## Tài liệu tham khảo

1. Governance, risk management, and compliance — Wikipedia — https://en.wikipedia.org/wiki/Governance,_risk_management,_and_compliance
2. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
3. Regulatory compliance — Wikipedia — https://en.wikipedia.org/wiki/Regulatory_compliance
4. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
5. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. ISO 31000 — Wikipedia — https://en.wikipedia.org/wiki/ISO_31000
8. Sarbanes–Oxley Act — Wikipedia — https://en.wikipedia.org/wiki/Sarbanes%E2%80%93Oxley_Act
9. Internal control — Wikipedia — https://en.wikipedia.org/wiki/Internal_control
