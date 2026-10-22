# Quản lý an toàn thông tin

**Quản lý an toàn thông tin bảo vệ tính bảo mật, tính toàn vẹn và tính sẵn sàng của thông tin bằng các kiểm soát dựa trên rủi ro, và trong một tổ chức agile, các kiểm soát hoạt động tốt nhất khi được xây vào pipeline phân phối và thói quen hằng ngày của các nhóm thay vì thêm vào như một cổng chắn ở cuối.**

## Vì sao điều này quan trọng

Mọi dịch vụ đều giữ thông tin mà ai đó quan tâm: chi tiết của khách hàng, hồ sơ thanh toán, dữ liệu sức khỏe, kế hoạch nội bộ. Một thất bại về an toàn làm hại những người mà thông tin mô tả, làm tổn hại danh tiếng của tổ chức và có thể kéo theo hình phạt pháp lý và tài chính. Các nhóm quản lý dịch vụ thường là những người thấy thất bại đầu tiên, dưới dạng một sự cố, và là những người phải khôi phục hoạt động bình thường sau đó.

An toàn và giao hàng liên tục thường bị đặt thành đối lập: an toàn nói hãy chậm lại, giao hàng nói hãy nhanh lên. Cách nhìn đó không giúp ích. An toàn chỉ đến ở cuối một bản phát hành tạo ra bất ngờ muộn và các ngoại lệ vội vàng. An toàn được xây vào công việc, với các kiểm tra chạy tự động và rủi ro được bàn sớm, bảo vệ dịch vụ mà không làm nó đình trệ. Điều tương tự đúng với quản lý dịch vụ: các thực hành làm cho thay đổi được an toàn cũng làm cho những thay đổi về bảo mật được an toàn.

Chủ đề này dùng [bài viết Wikipedia về an toàn thông tin](https://en.wikipedia.org/wiki/Information_security) và [bài viết về ISO/IEC 27001](https://en.wikipedia.org/wiki/ISO/IEC_27001) làm nguồn chính. Cả hai đều mang tính chung. Bài đầu là một bài dài, và cuốn sách này chỉ đọc 100.000 ký tự đầu trong khoảng 243.000 ký tự của nó. Chủ đề này không đưa tư vấn pháp lý; luật, quy định và nghĩa vụ hợp đồng khác nhau theo quốc gia và ngành, và nguồn đúng là văn bản của quy tắc áp dụng cho bạn.

## Các khái niệm cốt lõi

### An toàn thông tin là gì

Wikipedia định nghĩa an toàn thông tin là bảo vệ thông tin bằng cách giảm thiểu rủi ro thông tin, nhằm ngăn ngừa hoặc giảm truy cập, sử dụng, tiết lộ, gián đoạn, xóa, làm hỏng, sửa đổi hay làm mất giá trị thông tin trái phép, và giảm tác động của sự cố. Nó áp dụng cho thông tin điện tử, vật lý và vô hình, và là một phần của quản lý rủi ro thông tin.

### Bộ ba CIA

Các mục tiêu cốt lõi là **tính bảo mật**, **tính toàn vẹn** và **tính sẵn sàng**, cân bằng với hiệu quả chính sách và năng suất của tổ chức. Bài viết mô tả chúng như sau:

| Mục tiêu | Ý nghĩa | Ví dụ trong một dịch vụ |
|---|---|---|
| **Tính bảo mật** | Thông tin được bảo vệ khỏi tiết lộ trái phép | Chỉ nhân viên được ủy quyền xem được hồ sơ bệnh nhân |
| **Tính toàn vẹn** | Thông tin chính xác và đầy đủ và không thể bị thay đổi theo cách trái phép hoặc không bị phát hiện | Một số tiền thanh toán không thể bị sửa mà không để lại dấu vết |
| **Tính sẵn sàng** | Thông tin truy cập được khi cần | Dịch vụ luôn hoạt động và chống được các cuộc tấn công từ chối dịch vụ |

Bài viết lưu ý rằng tính bảo mật khác quyền riêng tư, mà nó gọi là một khái niệm rộng hơn. Nó cũng lưu ý rằng các tổ chức có thể thêm các mục tiêu như tính xác thực, trách nhiệm giải trình, không thể chối bỏ và độ tin cậy, và rằng Parkerian Hexad, một mô hình mở rộng, có những ưu điểm còn tranh luận. Tính sẵn sàng nối trực tiếp với quản lý dịch vụ (xem Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng).

### Quản lý rủi ro

Bài viết mô tả rủi ro là khả năng gây hại cho một tài sản thông tin. **Lỗ hổng** là điểm yếu, **mối đe dọa** là nguyên nhân tiềm tàng gây hại, và **tác động** là tổn thất kết quả. Quản lý rủi ro là một quy trình liên tục, lặp lại, trong đó ban quản lý có thể chấp nhận, giảm thiểu, chuyển giao (chẳng hạn qua bảo hiểm) hoặc tránh một rủi ro. Phần còn lại được gọi là **rủi ro tồn dư**. Bài viết liệt kê sáu bước: xác định tài sản, đánh giá mối đe dọa, đánh giá lỗ hổng, tính tác động, chọn và triển khai kiểm soát, và đánh giá các kiểm soát đó.

### Kiểm soát và phòng thủ nhiều lớp

Các kiểm soát bảo vệ tính bảo mật, toàn vẹn hay sẵn sàng. Bài viết mô tả **phòng thủ nhiều lớp**, việc xếp lớp các kiểm soát chồng lấn, với các loại kiểm soát được mô tả là hành chính (chính sách, quy trình), logic (biện pháp kỹ thuật như kiểm soát truy cập và mã hóa) và vật lý (khóa, cơ sở). Không kiểm soát đơn lẻ nào là đủ; các lớp che cho lỗi của nhau.

### Sự cố an toàn

Bài viết mô tả quản lý sự cố an ninh máy tính là giám sát, phát hiện và ứng phó với các sự kiện an ninh, với các kế hoạch ứng phó sự cố được kích hoạt khi phát hiện vi phạm, thường do một nhóm ứng phó sự cố thực hiện. Sự cố an toàn là một loại sự cố và được lợi từ cùng các vai trò, giao tiếp và việc học không đổ lỗi (xem Chủ đề 3.2 — Quản lý sự cố), cộng với các bước riêng như bảo toàn bằng chứng và thông báo cho cơ quan quản lý hoặc những người bị ảnh hưởng khi được yêu cầu.

### ISO/IEC 27001 và 27002

Theo Wikipedia, **ISO/IEC 27001** đặt ra các yêu cầu để thiết lập, triển khai, duy trì và liên tục cải tiến một hệ thống quản lý an toàn thông tin (ISMS), gồm đánh giá và xử lý các rủi ro an toàn thông tin. Các yêu cầu của nó mang tính chung và dành cho các tổ chức thuộc mọi loại, quy mô hay bản chất. Ấn bản đầu tiên ra mắt tháng 10 năm 2005 từ tiêu chuẩn Anh BS 7799-2, ấn bản thứ hai năm 2013 và ấn bản thứ ba tháng 10 năm 2022, căn chỉnh với ISO/IEC 27002:2022; một bản sửa đổi tháng 2 năm 2024 thêm một cân nhắc về biến đổi khí hậu.

Những điều then chốt từ bài viết:

- Các yêu cầu ISMS nằm trong điều khoản 4 đến 10: bối cảnh, lãnh đạo, lập kế hoạch, hỗ trợ, vận hành, đánh giá hiệu suất và cải tiến.
- Phụ lục A của ấn bản 2022 có 93 kiểm soát tham chiếu trong bốn chủ đề: tổ chức, con người, vật lý và công nghệ. Ấn bản 2013 liệt kê 114. Phụ lục A là một tập tham chiếu chứ không phải danh mục kiểm tra bắt buộc: các tổ chức tạo ra một **Tuyên bố về khả năng áp dụng** biện minh cho những kiểm soát nào họ gồm và loại trừ.
- Chứng nhận là tùy chọn trừ khi luật, hợp đồng hay chương trình yêu cầu. ISO không chứng nhận các tổ chức; các tổ chức chứng nhận độc lập làm việc đó, theo các giai đoạn, tiếp theo là kiểm toán giám sát và chứng nhận lại theo chu kỳ ba năm. Một chứng chỉ chỉ áp dụng trong phạm vi nêu của nó.
- **ISO/IEC 27002** cung cấp hướng dẫn về các kiểm soát Phụ lục A. Nó là hướng dẫn và không thể được chứng nhận theo.

Bài viết lưu ý rằng một tổng quan tài liệu năm 2021 thấy ít nghiên cứu thực nghiệm về kết quả của chứng nhận. Một chứng chỉ cho thấy một hệ thống quản lý tồn tại; nó không phải bằng chứng rằng một vụ vi phạm cụ thể không thể xảy ra.

### Các khung và luật khác

Bài viết về an toàn thông tin nêu nhiều tiêu chuẩn và chương trình khác, như NIST Cybersecurity Framework, Cyber Essentials ở Anh, Essential Eight ở Úc và tiêu chuẩn ngành thẻ thanh toán. Nó cũng liệt kê các luật, gồm Đạo luật Lạm dụng Máy tính (1990) và Đạo luật Bảo vệ Dữ liệu (1998) của Anh và HIPAA (1996), Đạo luật Gramm-Leach-Bliley (1999) và Đạo luật Sarbanes-Oxley (2002) của Hoa Kỳ. Danh sách cho thấy các quy tắc đa dạng đến mức nào. Quy tắc nào áp dụng cho bạn phụ thuộc vào nơi bạn hoạt động, ngành và dữ liệu bạn giữ; hãy hỏi bộ phận pháp lý hoặc tuân thủ của bạn (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ).

### An toàn trong pipeline phân phối

Các thực hành phù hợp với giao hàng liên tục gồm:

- **Thảo luận mối đe dọa sớm:** hỏi trong lập kế hoạch điều gì có thể sai với một tính năng và ai sẽ muốn lạm dụng nó.
- **Kiểm tra tự động:** quét mã, các phụ thuộc và cấu hình trên mọi thay đổi, với kết quả nhìn thấy được với nhóm (xem Chủ đề 3.4 — Kích hoạt thay đổi).
- **Đặc quyền tối thiểu:** chỉ cấp cho con người và hệ thống quyền truy cập họ cần.
- **Quản lý bí mật:** giữ thông tin xác thực ngoài mã và xoay vòng chúng.
- **Kiểm thử an toàn:** kiểm thử xâm nhập và kiểm thử tự động như một phần của chu kỳ (xem kỹ năng kiểm thử an toàn bên dưới).
- **Ghi log và giám sát:** phát hiện hoạt động đáng ngờ (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện).

Hướng dẫn của DORA, được trích dẫn ở nơi khác trong cuốn sách này, liệt kê an toàn thấm khắp trong số các thực hành hỗ trợ giao hàng liên tục (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).

### Văn hóa và con người

Bài viết về an toàn thông tin nhắc đến nghiên cứu về văn hóa an toàn, gồm bảy chiều văn hóa do Roer và Petric (2017) xác định. Bất kể mô hình nào, điểm là nhiều vụ vi phạm bắt đầu từ con người: một tin nhắn lừa đảo, một sai sót, một lối tắt dưới áp lực. Đào tạo, đường báo cáo rõ ràng và thái độ không đổ lỗi với những sai sót trung thực cải thiện an toàn nhiều hơn việc đổ lỗi.

### Giới hạn của các nguồn

Bài viết Wikipedia không nêu lời chỉ trích cụ thể nào về bộ ba CIA và chỉ được đọc một phần. Bài viết về ISO/IEC 27001 không bàn về quan hệ với ISO/IEC 20000 hay với chu trình lập kế hoạch, thực hiện, kiểm tra, hành động. Chủ đề này không đưa hướng dẫn kỹ thuật; hãy dùng hướng dẫn chuyên môn cho các nền tảng của bạn, và văn bản của các tiêu chuẩn nếu bạn cần tuyên bố sự phù hợp.

## Thực hành tốt

1. **Biết bạn giữ thông tin gì và ở đâu.** Lập danh sách các loại thông tin chính, ai sở hữu từng loại, nó được lưu ở đâu và mức nhạy cảm. Bạn không thể bảo vệ thứ bạn chưa xác định.
2. **Đánh giá rủi ro bằng ngôn ngữ đơn giản.** Với mỗi dịch vụ quan trọng, hỏi điều gì có thể sai với tính bảo mật, toàn vẹn và sẵn sàng, khả năng bao nhiêu và tệ đến đâu. Ghi lại các quyết định chấp nhận, giảm, chuyển giao hay tránh từng rủi ro (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ).
3. **Xếp lớp các kiểm soát.** Kết hợp chính sách, kiểm soát kỹ thuật và kiểm soát vật lý để một lỗi đơn lẻ không đủ. Rà soát lớp nào bảo vệ thông tin nhạy cảm nhất của bạn.
4. **Xây kiểm tra vào pipeline.** Chạy các kiểm tra an toàn tự động trên mã, phụ thuộc và cấu hình với mọi thay đổi, và làm các kiểm tra thất bại nhìn thấy được. Sửa vấn đề ngay tại điểm thay đổi.
5. **Cấp đặc quyền tối thiểu theo mặc định.** Cấp quyền truy cập theo vai trò và nhu cầu, rà soát đều đặn, và gỡ ngay khi người rời đi hoặc đổi vai trò (xem Chủ đề 3.6 — Quản lý yêu cầu dịch vụ).
6. **Quản lý bí mật cho đúng.** Giữ thông tin xác thực ngoài mã nguồn, lưu chúng trong một kho được quản lý và xoay vòng chúng. Kiểm thử rằng bạn có thể xoay vòng chúng nhanh sau một sự cố.
7. **Coi sự cố an toàn là sự cố.** Dùng cùng các vai trò, giao tiếp và rà soát như các sự cố khác, và thêm các bước cho bằng chứng, ngăn chặn và thông báo. Luyện tập kế hoạch.
8. **Biết nghĩa vụ thông báo của bạn.** Tìm hiểu, từ bộ phận pháp lý hoặc tuân thủ, luật hay hợp đồng nào yêu cầu bạn thông báo cho cơ quan hay những người bị ảnh hưởng sau một vụ vi phạm, và nhanh đến đâu. Viết nó vào kế hoạch sự cố, trích dẫn văn bản nguồn.
9. **Đưa nhà cung cấp vào.** Hỏi các nhà cung cấp quan trọng họ bảo vệ thông tin của bạn thế nào, và đưa kỳ vọng vào hợp đồng (xem Chủ đề 3.14 — Quản lý nhà cung cấp).
10. **Đào tạo và trò chuyện.** Cung cấp đào tạo ngắn, đều đặn dựa trên ví dụ thật, và làm cho việc báo một sai sót hay một tin nhắn đáng ngờ dễ dàng mà không bị đổ lỗi.
11. **Dùng tiêu chuẩn như nguồn cấu trúc.** Nếu bạn áp dụng ISO/IEC 27001, hãy coi Phụ lục A là một tập tham chiếu, viết một Tuyên bố về khả năng áp dụng có biện minh, và giữ ISMS nhẹ. Chứng nhận là tùy chọn trừ khi được yêu cầu.
12. **Học từ suýt xảy ra.** Rà soát các sự cố suýt xảy ra và sự kiện mức nghiêm trọng thấp để tìm mẫu hình, và đưa chúng vào backlog và sổ đăng ký rủi ro.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta giữ thông tin nào mà nếu rò rỉ sẽ làm tổn hại con người, và nó ở đâu?**

Mời mỗi người nêu dữ liệu nhạy cảm nhất họ xử lý và nó nằm ở đâu. So sánh. Điều bất ngờ là phổ biến: bản sao trong môi trường kiểm thử, bản xuất trong thư mục chung, log chứa dữ liệu cá nhân. Người điều phối có thể hỏi bản sao nào được bảo vệ kém nhất. Chọn một cái để giảm hoặc bảo vệ tốt hơn.

**Lần cuối chúng ta đưa ra quyết định chấp nhận một rủi ro an toàn là khi nào, và ai đã quyết định?**

Xin một ví dụ. Rủi ro được chấp nhận thường xảy ra âm thầm, do trì hoãn. Bàn ai nên quyết định, họ cần thông tin gì và nó được ghi ở đâu. Danh sách các cách xử lý rủi ro của bài viết (chấp nhận, giảm thiểu, chuyển giao, tránh) là một khung hữu ích. Thống nhất một nơi đơn giản để ghi quyết định tiếp theo.

**Kiểm tra an toàn nào chạy tự động trên mọi thay đổi, và chúng ta bỏ qua gì?**

Liệt kê các kiểm tra trong pipeline và kết quả. Hỏi phát hiện nào thường bị bỏ qua và vì sao. Phát hiện bị bỏ qua thường nghĩa là nhiễu, thiếu chủ sở hữu hoặc thiếu thời gian. Quyết định cái nào sửa, cái nào chặn kèm lý do, và ai sở hữu danh sách.

**Ai có quyền truy cập vào cái gì, và lần cuối chúng ta rà soát là khi nào?**

Chọn một hệ thống nhạy cảm và liệt kê ai có thể tiếp cận nó. So sánh với ai cần nó. Thường quyền truy cập đã tích tụ. Hỏi quyền được gỡ nhanh thế nào khi ai đó rời đi. Thống nhất một ngày rà soát và một người chịu trách nhiệm.

**Chúng ta sẽ làm gì trong giờ đầu tiên của một vụ vi phạm bị nghi ngờ?**

Đi qua các bước: ai được báo, cái gì được bảo toàn, cái gì bị ngắt, ai nói chuyện với ai. Khoảng trống thường xuất hiện quanh thẩm quyền và bằng chứng. Hỏi kế hoạch ở đâu và lần cuối được dùng khi nào. Lên lịch một buổi diễn tập bàn giấy.

**Quy tắc nào về an toàn hoặc quyền riêng tư áp dụng cho chúng ta, và làm sao chúng ta biết?**

Hỏi ai chịu trách nhiệm biết. Nếu câu trả lời là "pháp lý" hoặc "không ai", hãy hỏi bộ phận kỹ thuật biết các yêu cầu bằng cách nào. Quy tắc khác nhau theo quốc gia và ngành, nên hãy liệt kê những nơi bạn hoạt động. Thống nhất xin bộ phận pháp lý hoặc tuân thủ một danh sách ngắn, kèm văn bản nguồn.

## Trong thực tế: một ví dụ agile ITIL

Dịch vụ điện toán nghiên cứu của một trường đại học giữ các tập dữ liệu từ các nghiên cứu y học và cho các nhà nghiên cứu truy cập các máy chủ phân tích. Một nhóm tám người vận hành nó. Sau một sự cố trong đó một nhà nghiên cứu sao chép một tập dữ liệu không được bảo vệ vào một thư mục đám mây cá nhân, cán bộ an ninh của trường đòi mọi thay đổi và mọi yêu cầu truy cập đều phải qua một lần rà soát an ninh ba tuần. Các nhà nghiên cứu phản đối rằng điều này sẽ làm dịch vụ không dùng được.

Quản lý dịch vụ đề xuất một cách tiếp cận khác và gặp cán bộ an ninh cùng hai nhà nghiên cứu. Họ liệt kê thông tin được giữ, nhóm các tập dữ liệu thành công khai, nội bộ và nhạy cảm. Với dữ liệu nhạy cảm, họ thống nhất các kiểm soát chặt hơn: truy cập theo vai trò và dự án có tên, không sao chép ra ngoài dịch vụ và ghi log việc xuất dữ liệu. Với dữ liệu khác, áp dụng quy tắc nhẹ hơn. Nhóm thêm các kiểm tra tự động cho lưu trữ cấu hình sai và bí mật trong mã vào pipeline phân phối, và cán bộ an ninh rà soát kết quả hằng tuần thay vì rà soát từng thay đổi. Các yêu cầu truy cập vào tập dữ liệu nhạy cảm theo một mô hình yêu cầu với phê duyệt của người quản lý dữ liệu của dự án và một ngày hết hạn. Một buổi đào tạo ngắn dựa trên sự cố trước đó được tổ chức cho các nhà nghiên cứu.

Sáu tháng sau, không phát hiện thêm bản sao nào ngoài dịch vụ, và các lần rà soát truy cập mất một buổi chiều mỗi quý. Một số khó khăn còn lại. Một nhóm nhà nghiên cứu dùng một công cụ xuất dữ liệu theo cách mà việc ghi log không bắt được, và các kiểm tra tự động tạo ra báo động giả mà nhóm đã bắt đầu bỏ qua. Họ thống nhất với cán bộ an ninh đưa công cụ vào phạm vi ghi log, tinh chỉnh các kiểm tra và rà soát cảnh báo hằng tháng. Họ cũng nhờ nhóm pháp lý một văn bản nêu các nghĩa vụ thông báo áp dụng cho các tập dữ liệu nhạy cảm, để kế hoạch sự cố có thể trích dẫn nguồn.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối làm cho an toàn thành thật trong mã và cấu hình. Hãy bàn mối đe dọa sớm, giữ bí mật ngoài mã, phản hồi các phát hiện tự động và tránh chia sẻ dữ liệu nhạy cảm trong kiểm thử. Báo cho an ninh và vận hành về các thay đổi làm đổi mức phơi bày.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành chạy các kiểm soát: truy cập, giám sát, vá lỗi và sao lưu. Coi sự kiện an ninh là sự cố, bảo toàn bằng chứng và tham gia diễn tập. Đưa các mẫu hình sự cố trở lại cho phân phối và sổ đăng ký rủi ro.

### Lãnh đạo và quản trị

Lãnh đạo sở hữu các quyết định rủi ro và văn hóa quanh chúng. Hãy yêu cầu các tóm tắt rủi ro bằng ngôn ngữ đơn giản, ủng hộ thời gian cho đào tạo và diễn tập, và bảo đảm có người chịu trách nhiệm về mỗi quyết định chấp nhận một rủi ro. Đừng đòi chứng nhận như một cái nhãn mà không có lý do.

### Khách hàng và người dùng

Khách hàng và người dùng tin tưởng dịch vụ với thông tin của họ. Hãy dùng xác thực mạnh khi có, báo các tin nhắn đáng ngờ, và hỏi nhà cung cấp họ bảo vệ dữ liệu của bạn thế nào và họ sẽ báo cho bạn về một vụ vi phạm ra sao. Hãy mong sự trung thực và nhanh chóng nếu có gì sai.

## Các kiểu thất bại thường gặp

- **An toàn như một cổng chắn cuối.** Các lần rà soát đến ở cuối và trì hoãn phát hành. Thay vào đó, bàn mối đe dọa sớm và tự động hóa kiểm tra trong pipeline.
- **Tuân thủ là mục tiêu.** Một chứng chỉ che giấu thực hành yếu. Thay vào đó, dùng tiêu chuẩn để có cấu trúc và đo mức bảo vệ thật.
- **Dữ liệu không được theo dõi.** Bản sao lan sang hệ thống kiểm thử và lưu trữ cá nhân. Thay vào đó, biết dữ liệu nhạy cảm ở đâu và giới hạn bản sao.
- **Quyền truy cập thừa.** Quyền tích tụ và không bao giờ được gỡ. Thay vào đó, rà soát quyền truy cập đều đặn và cho nó hết hạn.
- **Bí mật trong mã.** Thông tin xác thực được lưu trong kho mã. Thay vào đó, dùng một kho bí mật và xoay vòng chúng.
- **Không có kế hoạch sự cố đã kiểm thử.** Lần dùng đầu tiên là một vụ vi phạm thật. Thay vào đó, luyện tập kế hoạch và viết ra nghĩa vụ thông báo.
- **Đổ lỗi cho sai sót.** Mọi người giấu lỗi. Thay vào đó, làm cho việc báo cáo dễ và đáp lại bằng học hỏi.
- **Bỏ qua nhà cung cấp.** Bên thứ ba giữ dữ liệu mà không có biện pháp bảo vệ rõ ràng. Thay vào đó, hỏi, ký hợp đồng và rà soát.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Thông tin và rủi ro | Dữ liệu nhạy cảm không được liệt kê; rủi ro ngầm hiểu | Một số dịch vụ ghi loại dữ liệu và rủi ro | Dữ liệu và rủi ro được ghi cho từng dịch vụ với chủ sở hữu và quyết định | Rủi ro được rà soát theo sự cố và chỉ số | Cái nhìn về rủi ro được chia sẻ với khách hàng và nhà cung cấp và căn chỉnh |
| Kiểm soát trong phân phối | Rà soát an ninh diễn ra ở cuối, nếu có | Một số nhóm chạy quét an ninh | Kiểm tra an toàn được tự động hóa trong một pipeline chung, với chủ sở hữu cho các phát hiện | Phát hiện, bản sửa và lỗi lọt qua được đo và rà soát | Kiểm soát được cải thiện giữa các nhóm từ bằng chứng chung |
| Truy cập và bí mật | Quyền truy cập được cấp tùy hứng; bí mật trong mã | Có một số lần rà soát và kho bí mật | Truy cập theo vai trò có hết hạn và bí mật được quản lý là chuẩn | Rà soát truy cập và xoay vòng được đo | Thực hành truy cập và bí mật được điều phối với đối tác |
| Ứng phó sự cố và văn hóa | Sự cố an toàn được ứng biến | Có một số kế hoạch | Sự cố an toàn theo quy trình sự cố với các bước thêm xác định và được luyện tập | Thời gian phát hiện và ứng phó được đo và việc học được chia sẻ | Ứng phó được điều phối với nhà cung cấp, khách hàng và cơ quan chức năng |

## Danh mục kiểm tra

- [ ] Chúng ta đã liệt kê các loại thông tin chính, chủ sở hữu, vị trí và mức nhạy cảm của chúng.
- [ ] Rủi ro với tính bảo mật, toàn vẹn và sẵn sàng được đánh giá cho các dịch vụ quan trọng, và các quyết định được ghi lại.
- [ ] Kiểm tra an toàn tự động chạy trên mọi thay đổi, và các phát hiện có chủ sở hữu.
- [ ] Quyền truy cập theo vai trò và nhu cầu, được rà soát đều đặn và gỡ khi không còn cần.
- [ ] Bí mật được lưu trong một kho được quản lý và có thể xoay vòng nhanh.
- [ ] Một kế hoạch sự cố an toàn tồn tại, đã được luyện tập, và gồm nghĩa vụ thông báo kèm văn bản nguồn.
- [ ] Các nhà cung cấp giữ thông tin của chúng ta đã được hỏi về biện pháp bảo vệ của họ.
- [ ] Nhân viên được đào tạo ngắn, đều đặn và có thể báo sai sót mà không bị đổ lỗi.
- [ ] Nếu chúng ta dùng ISO/IEC 27001, chúng ta có một Tuyên bố về khả năng áp dụng có biện minh và một ISMS nhẹ.
- [ ] Các sự cố suýt xảy ra được rà soát để tìm mẫu hình.

## Lời nhắc AI

**Mục đích: lập danh mục thông tin của bạn và xếp hạng theo độ nhạy cảm.**

```text
Help me make a simple inventory of the information our service holds.

What the service does: [describe].
Data we know about (types, where stored, who can access): [paste a list; remove any real personal data].
Rules or contracts that apply, with source text: [paste, or write "none known"].

Produce a table with: information type, where it lives, who owns it, a suggested sensitivity level (public, internal, sensitive) with a one-sentence reason from my text, and one question to ask about protection. Mark guesses. Do not state that any law applies unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chạy một buổi thảo luận mối đe dọa ngắn cho một tính năng mới.**

```text
Help me run a 30-minute threat discussion for this new feature: [describe what it does, what data it handles, who uses it, and what it connects to].

Provide questions to ask under these headings: who might misuse it and how; what data could be exposed, changed, or made unavailable; what could go wrong through dependencies or suppliers; what we would see if it went wrong; and what safeguards we already have. Then give a template for recording risks with an owner and a decision (accept, reduce, transfer, or avoid). Do not invent attacks or vulnerabilities in my system. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: rà soát các phát hiện an ninh tự động về nhiễu và mức ưu tiên.**

```text
Here are findings from our automated security checks in the last [period]: [paste, with counts and short descriptions; remove sensitive details].
What we did about each (fixed, suppressed, ignored): [paste, or write "unknown"].

Group the findings by type. For each group, suggest a question to ask about whether it is noise, a real risk, or a tool configuration issue, using only the text. Identify which groups are most often ignored. Do not state that a finding is exploitable or harmless. Suggest how to assign owners. List what you are unsure of.
```

**Mục đích: chuẩn bị một buổi diễn tập sự cố an toàn.**

```text
Design a 60-minute tabletop exercise on a suspected data breach in [service].

Scenario basis: [describe, using facts you choose, for example "a laptop with access to production data is reported lost"].
Roles taking part: [list].
Notification duties that apply, with source text from legal or compliance: [paste, or write "not yet confirmed"].

Give a timed plan, prompts for each role (contain, preserve evidence, communicate, decide who is told), a list of decisions that need authority, and a closing step that records gaps with owners. Do not use real data or systems. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [security-testing](../../../../skills/security-testing/SKILL.md): dùng để lập kế hoạch kiểm thử an toàn như một phần của chu kỳ phân phối.
- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi rủi ro an toàn, quyết định và người chịu trách nhiệm.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): dùng để chọn các thước đo cảnh báo sớm cho rủi ro an toàn.
- [data-governance](../../../../skills/data-governance/SKILL.md): dùng để xác định ai sở hữu dữ liệu và nó được dùng và chia sẻ thế nào.
- [legal-data-privacy-compliance](../../../../skills/legal-data-privacy-compliance/SKILL.md): dùng để chuẩn bị câu hỏi cho nhân viên pháp lý hoặc tuân thủ về nghĩa vụ quyền riêng tư.

## Nguồn chính

- **Information security** (Wikipedia): bộ ba CIA, quản lý rủi ro, kiểm soát và ứng phó sự cố, với một danh sách dài các tiêu chuẩn và luật liên quan.
- **ISO/IEC 27001** (Wikipedia, và chính tiêu chuẩn từ ISO): các yêu cầu cho một hệ thống quản lý an toàn thông tin, với các kiểm soát Phụ lục A và quy trình chứng nhận.
- **Computer security incident management** (Wikipedia): bối cảnh về ứng phó với các sự kiện an ninh.
- **Defense in depth** (Wikipedia): bối cảnh về các kiểm soát xếp lớp.

## Tài liệu tham khảo

1. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
2. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
3. ISO/IEC 27002 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27002
4. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
5. Defense in depth (computing) — Wikipedia — https://en.wikipedia.org/wiki/Defense_in_depth_(computing)
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Principle of least privilege — Wikipedia — https://en.wikipedia.org/wiki/Principle_of_least_privilege
8. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
