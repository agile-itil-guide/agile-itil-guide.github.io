# Quản lý nhà cung cấp

**Quản lý nhà cung cấp bảo đảm các bên ngoài mà một dịch vụ phụ thuộc vào được chọn cẩn thận, chịu những kỳ vọng rõ ràng và được coi là một phần của dịch vụ, vì lời hứa với khách hàng của bạn chỉ vững chắc như những lời hứa đứng đằng sau nó.**

## Vì sao điều này quan trọng

Hầu như không dịch vụ hiện đại nào được xây dựng và vận hành chỉ bởi một nhóm. Nó phụ thuộc vào các nền tảng đám mây, nhà cung cấp phần mềm, đơn vị xử lý thanh toán, nhà mạng, nhà thầu và đối tác chuyên môn. Khi một trong số họ hỏng, khách hàng không phân biệt lỗi của bạn với lỗi của họ. Sự cố ngừng hoạt động của họ là của bạn, và việc giải thích nó cũng vậy.

Các nhóm agile dễ dàng dùng nhà cung cấp: một thẻ tín dụng, vài dòng cấu hình, và một năng lực mới đang chạy. Tốc độ đó có giá trị, và nó tạo ra một khoảng trống. Có thể không ai hỏi điều gì xảy ra nếu dịch vụ của nhà cung cấp suy giảm, đổi điều khoản hay đóng cửa. Có thể không ai biết ai sở hữu mối quan hệ. Quản lý nhà cung cấp là thực hành khép khoảng trống đó tương xứng với rủi ro, mà không biến mọi lần mua thành một dự án.

[Bài viết Wikipedia về quản lý quan hệ nhà cung cấp](https://en.wikipedia.org/wiki/Supplier_relationship_management) mô tả việc đánh giá có hệ thống, trên toàn doanh nghiệp về điểm mạnh, hiệu suất và năng lực của nhà cung cấp, căn chỉnh với chiến lược kinh doanh, và lưu ý rằng nguồn dẫn của nó mỏng và cũ, với vài tham chiếu từ 2009 đến 2012. [Bài viết về tích hợp và quản lý dịch vụ](https://en.wikipedia.org/wiki/Service_integration_and_management) mô tả một cách tiếp cận cho các tổ chức dùng nhiều nhà cung cấp. Chủ đề này kết hợp chúng với các chủ đề khác của cuốn sách và với thực hành phổ biến trong quản lý dịch vụ, và nói rõ khi nào nó đang làm điều sau.

## Các khái niệm cốt lõi

### Quản lý quan hệ nhà cung cấp

Theo Wikipedia, quản lý quan hệ nhà cung cấp (SRM) điều phối tương tác với nhà cung cấp trong suốt vòng đời quan hệ, với mục đích xây dựng các quan hệ đối tác hai chiều với nhà cung cấp chiến lược, theo cách tương tự quản lý quan hệ khách hàng. Bài viết nêu vài điểm hữu ích cho các nhóm dịch vụ:

- **Phân khúc nhà cung cấp.** Nhà cung cấp được phân khúc theo tổng giá trị tiềm năng trên nhiều chiều, không chỉ chi tiêu, và theo mức rủi ro ảnh hưởng đến giá trị đó. Bài viết chỉ trích cách tiếp cận "một cỡ cho tất cả".
- **Đo hiệu suất cả hai chiều.** Các tổ chức dùng thẻ điểm cân bằng chung, hai chiều với các thước đo định lượng và định tính, và một số dùng thẻ điểm 360 độ cũng khảo sát nhà cung cấp.
- **Cộng tác.** Các hoạt động chung gồm hội nghị thượng đỉnh nhà cung cấp, họp lãnh đạo, lập kế hoạch kinh doanh chung, rà soát vận hành và dự báo nhu cầu chung. Bài viết khẳng định dự báo chung và tái thiết kế quy trình đã mở khóa khoản tiết kiệm 10 đến 30 phần trăm cho các tổ chức dẫn đầu, nhưng bài viết có thẻ bảo trì về lời lẽ yếu và thiếu trích dẫn, nên hãy coi con số là một nhận định, không phải một phát hiện.

### Vì sao phân khúc quan trọng

Bạn không thể quản lý chặt mọi nhà cung cấp. Một cách phân khúc hữu ích hỏi hai câu: dịch vụ phụ thuộc vào nhà cung cấp này bao nhiêu, và thay họ khó đến đâu? Một lưới sơ lược như sau.

| Mức phụ thuộc và khả năng thay thế | Ví dụ | Cách tiếp cận |
|---|---|---|
| **Quan trọng và khó thay** | Nền tảng đám mây, đơn vị xử lý thanh toán | Quan hệ chặt chẽ: chủ sở hữu có tên, rà soát định kỳ, lập kế hoạch chung, kế hoạch thoát và liên tục |
| **Quan trọng nhưng thay được** | Một công cụ giám sát, một dịch vụ nhắn tin | Rà soát định kỳ, mức dịch vụ rõ ràng và kế hoạch chuyển đổi nếu cần |
| **Thường lệ và dễ thay** | Văn phòng phẩm, một thư viện nhỏ | Hợp đồng nhẹ và kiểm tra định kỳ |

Lưới này là minh họa của cuốn sách, không đến từ một nguồn.

### Hiệu suất nhà cung cấp và dịch vụ bạn hứa

Mức dịch vụ của bạn phụ thuộc vào mức dịch vụ của nhà cung cấp (xem Chủ đề 3.7 — Quản lý mức dịch vụ). Nếu bạn hứa tính sẵn sàng 99,9% và nhà cung cấp đám mây duy nhất của bạn hứa ít hơn, phép tính không khớp. Quản lý nhà cung cấp gồm so sánh điều nhà cung cấp đã cam kết với điều bạn đã hứa, và thiết kế quanh khoảng cách bằng dự phòng hoặc bằng điều chỉnh lời hứa của chính bạn.

Trong từ vựng ITIL, một thỏa thuận với nhà cung cấp bên ngoài hỗ trợ một thỏa thuận mức dịch vụ được gọi là hợp đồng nền tảng, và một thỏa thuận giữa các nhóm nội bộ hỗ trợ nó được gọi là thỏa thuận mức vận hành. Các nguồn đã đọc cho cuốn sách này không định nghĩa chúng, nên hãy kiểm tra các ấn phẩm ITIL để có thuật ngữ chính xác.

### Môi trường đa nhà cung cấp và SIAM

Bài viết về tích hợp và quản lý dịch vụ (SIAM) mô tả một cách tiếp cận để quản lý nhiều nhà cung cấp và tích hợp họ thành một dịch vụ duy nhất hướng đến kinh doanh. Nó lưu ý rằng các tổ chức ngày càng lấy năng lực CNTT từ nhiều nhà cung cấp bên ngoài, một mô hình gọi là đa nguồn cung ứng, có thể giảm chi phí và khuyến khích cạnh tranh nhưng thêm gánh nặng quản lý và làm quản lý dịch vụ từ đầu đến cuối khó hơn. Một **bên tích hợp dịch vụ** cung cấp quản trị và điều phối để các nhà cung cấp làm việc cùng nhau.

Bài viết liệt kê bốn mô hình cho bên tích hợp (nội bộ, nhà cung cấp dẫn đầu, bên ngoài và lai) và ba tầng: tổ chức khách hàng, bên tích hợp dịch vụ và các nhà cung cấp dịch vụ. Nó nói SIAM khởi nguồn khoảng năm 2005 trong khu vực công của Anh, lần đầu được thiết kế cho Bộ Lao động và Hưu trí, và liệt kê các cột mốc gồm một bộ tri thức năm 2016 và các sửa đổi năm 2019 cho COBIT 2019 và ITIL 4. Nó lưu ý rằng ITIL cung cấp nền tảng và ngôn ngữ chung để làm việc với nhà cung cấp nhưng không đề cập sâu đến môi trường đa nhà cung cấp. Các thách thức triển khai nó liệt kê gồm thỏa thuận mức dịch vụ lệch nhau, các nhà cung cấp đổ lỗi cho nhau, quyền sở hữu không rõ với các quyết định nguyên nhân gốc và khoảng trống giao tiếp.

Ít nhóm agile cần một SIAM chính thức, nhưng bài học hữu ích: khi nhiều bên đóng góp vào một dịch vụ, phải có người sở hữu toàn bộ, thống nhất cách xử lý vấn đề xuyên ranh giới và giữ mức dịch vụ của các nhà cung cấp nhất quán với nhau.

### Hợp đồng và sự linh hoạt

Hợp đồng có thể giúp hay cản trở công việc agile. Hợp đồng phạm vi cố định, giá cố định khớp kém với việc vừa làm vừa học (xem Chủ đề 1.1 — Tuyên ngôn Agile về cộng tác với khách hàng hơn đàm phán hợp đồng). Các thỏa thuận cho phép thay đổi, với cách điều chỉnh phạm vi và đo giá trị rõ ràng, khớp hơn. Một hợp đồng cũng phải bao gồm những thứ mà quản lý dịch vụ quan tâm: mức dịch vụ, giờ hỗ trợ, xử lý sự cố, bảo vệ dữ liệu, nghĩa vụ an toàn, quyền kiểm toán, thoát và liên tục. Các đồng nghiệp pháp lý và mua sắm nên dẫn dắt các điều khoản pháp lý.

### Rủi ro

Nhà cung cấp mang rủi ro: hỏng, thay đổi điều khoản hay giá, điểm yếu bảo mật, tập trung vào một nhà cung cấp, bị khóa chặt và các phụ thuộc riêng của nhà cung cấp. Bài viết SRM liệt kê giảm rủi ro hỏng là một mục tiêu mà không mô tả phương pháp. Các biện pháp thực tế gồm biết các sắp xếp liên tục của chính nhà cung cấp, trải các phụ thuộc quan trọng, giữ dữ liệu di chuyển được và diễn tập việc thoát (xem Chủ đề 3.12 — Quản lý tính liên tục của dịch vụ và Chủ đề 3.13 — Quản lý an toàn thông tin).

### Quan hệ, không chỉ hợp đồng

Bài viết SRM nhấn mạnh quan hệ đối tác hai chiều. Nhà cung cấp hiểu kế hoạch của bạn có thể giúp; nhà cung cấp chỉ được coi là nguồn hóa đơn thì không. Chia sẻ dự báo, lôi kéo họ vào các buổi rà soát sự cố liên quan đến họ, và lắng nghe phản hồi của họ về cách hành xử của bạn, như thanh toán muộn hay yêu cầu không rõ.

### Giới hạn của các nguồn

Bài viết SRM không đưa tiêu chí lựa chọn, điều khoản hợp đồng hay lộ trình triển khai. Bài viết SIAM không có phần chỉ trích. Cả hai đều mang tính chung. Về các điều khoản pháp lý và tài chính, hãy dựa vào bộ phận mua sắm và pháp lý của bạn và vào chính hợp đồng.

## Thực hành tốt

1. **Liệt kê nhà cung cấp của bạn và những gì bạn dựa vào họ.** Gồm đám mây, phần mềm, mạng, thanh toán và nhà thầu. Với mỗi bên, ghi dịch vụ nó hỗ trợ và ai trong nhóm bạn sở hữu mối quan hệ.
2. **Phân khúc theo mức phụ thuộc và khả năng thay thế.** Quyết định vài nhà cung cấp nào là quan trọng và đầu tư sự chú ý vào đó. Giữ cách tiếp cận nhẹ cho phần còn lại.
3. **Chỉ định một chủ sở hữu cho mỗi nhà cung cấp quan trọng.** Một người nên biết hợp đồng, đầu mối liên hệ, hiệu suất và kế hoạch. Không có chủ sở hữu, các mối quan hệ mục nát.
4. **Kiểm tra cam kết của nhà cung cấp hỗ trợ lời hứa của bạn.** So sánh điều từng nhà cung cấp quan trọng đã cam kết với điều bạn đã nói với khách hàng. Khép khoảng cách bằng thiết kế, bằng đàm phán hoặc bằng đổi lời hứa của bạn.
5. **Thống nhất cách xử lý sự cố từ trước.** Biết cách báo một vấn đề cho nhà cung cấp, họ phản hồi nhanh đến đâu, ai có thể chuyển lên cấp trên và họ sẽ giao tiếp thế nào. Thử đường đó trước khi bạn cần.
6. **Gồm an toàn và bảo vệ dữ liệu.** Hỏi nhà cung cấp họ bảo vệ thông tin của bạn thế nào và họ sẽ nói gì với bạn sau một vụ vi phạm. Đưa nó vào hợp đồng, cùng bộ phận pháp lý.
7. **Lập kế hoạch cho việc thoát và hỏng.** Với nhà cung cấp quan trọng, giữ dữ liệu di chuyển được, biết các lựa chọn thay thế và viết một kế hoạch ngắn cho trường hợp nhà cung cấp hỏng hoặc bạn rời đi. Diễn tập phần bạn diễn tập được.
8. **Rà soát hiệu suất cùng nhau.** Tổ chức rà soát định kỳ với các nhà cung cấp quan trọng, chia sẻ dữ liệu hai chiều và thống nhất hành động. Hỏi nhà cung cấp bạn có thể là khách hàng tốt hơn thế nào.
9. **Đưa nhà cung cấp vào việc học.** Mời họ đến các buổi rà soát sự cố và lập kế hoạch liên quan đến họ. Chia sẻ các bài học giúp họ giúp bạn.
10. **Làm hợp đồng linh hoạt ở nơi cần học.** Với công việc phát triển, ưu tiên các thỏa thuận cho phép phạm vi thay đổi, với các điểm rà soát rõ ràng, hơn các lời hứa phạm vi cố định. Giữ vững các nghĩa vụ dịch vụ.
11. **Dùng một bên tích hợp khi nhiều nhà cung cấp đóng góp.** Với một dịch vụ phụ thuộc vào nhiều nhà cung cấp, hãy nêu ai sở hữu kết quả từ đầu đến cuối và các vấn đề giữa các nhà cung cấp được giải quyết thế nào. Đừng để việc đó cho khách hàng.
12. **Rà soát danh mục nhà cung cấp định kỳ.** Mỗi năm một lần, kiểm tra nhà cung cấp nào còn cần, nhà cung cấp nào là rủi ro tập trung và nhà cung cấp nào rẻ hơn hay tốt hơn ở nơi khác.

## Câu hỏi để thảo luận với nhóm của bạn

**Nhà cung cấp nào có thể làm ngừng dịch vụ của chúng ta nếu họ hỏng, và chúng ta sẽ làm gì?**

Mời mỗi người nêu các phụ thuộc họ lo nhất. Tổng hợp danh sách và đánh dấu mỗi cái là quan trọng, cần thiết hay thường lệ. Với mỗi cái quan trọng, hỏi nhóm sẽ làm gì trong giờ đầu tiên của một sự cố hỏng. Các câu trả lời điển hình lộ ra khoảng trống ở đầu mối liên hệ, lựa chọn thay thế và dữ liệu. Chọn một cái để lập kế hoạch.

**Nhà cung cấp đã hứa gì với chúng ta, và chúng ta đã hứa gì với khách hàng?**

Đặt hai thứ cạnh nhau cho một dịch vụ chính. Nơi lời hứa của nhà cung cấp yếu hơn, lời hứa với khách hàng đang gặp rủi ro. Người điều phối có thể hỏi gần đây có ai đọc mức dịch vụ của nhà cung cấp không. Thống nhất một khoảng trống để khép.

**Ai sở hữu từng mối quan hệ nhà cung cấp quan trọng?**

Đi xuống danh sách và nêu một chủ sở hữu cho từng cái. Khoảng trống là phổ biến: người ký hợp đồng đã rời đi, hoặc một công cụ được mua bằng thẻ và không ai quản lý. Hỏi chủ sở hữu cần gì để làm việc này, như thời gian và một đầu mối liên hệ. Giao chủ sở hữu ở nơi còn thiếu.

**Chúng ta biết về một vấn đề của nhà cung cấp bằng cách nào, và nói với người dùng ra sao?**

Lần theo lần gần nhất một nhà cung cấp ngừng hoạt động. Hỏi bạn biết về nó thế nào, mất bao lâu và bạn đã nói gì với khách hàng. Bàn về trang trạng thái, đầu mối liên hệ và kênh đã thống nhất. Lập kế hoạch một cải tiến, như đăng ký nguồn trạng thái của nhà cung cấp hay một đầu mối chuyển lên cấp trên có tên.

**Cần gì để rời nhà cung cấp này, và chúng ta có bao giờ muốn không?**

Với một nhà cung cấp quan trọng, hỏi về xuất dữ liệu, sản phẩm thay thế và điều khoản hợp đồng. Các nhóm thường thấy sự bị khóa chặt mà họ không định có. Bàn cách giảm nó ở nơi rủi ro biện minh cho chi phí. Ghi một ghi chú thoát ngắn.

**Nhà cung cấp của chúng ta có biết chúng ta đang lên kế hoạch gì không, và chúng ta có biết họ đang lên kế hoạch gì không?**

Hỏi lần cuối mỗi nhà cung cấp quan trọng nghe về kế hoạch của bạn là khi nào, và lần cuối bạn nghe về kế hoạch của họ. Bất ngờ ở cả hai chiều đều gây rắc rối. Bàn một cuộc trò chuyện định kỳ. Thống nhất một nhà cung cấp để bắt đầu.

## Trong thực tế: một ví dụ agile ITIL

Một đài phát thanh truyền hình khu vực vận hành một ứng dụng tin tức và website với một nhóm mười bốn người. Dịch vụ phụ thuộc vào một nhà cung cấp đám mây, một mạng phân phối nội dung, một dịch vụ thông báo đẩy, một công cụ kiểm duyệt bình luận và một công ty nhỏ cung cấp tiện ích blog trực tiếp. Khi dịch vụ của nhà cung cấp blog trực tiếp hỏng trong đêm bầu cử, ứng dụng hiện lỗi trong hai giờ và danh tiếng của đài bị tổn hại. Không ai trong nhóm nói được đầu mối liên hệ của nhà cung cấp là ai; tiện ích đã được một lập trình viên thêm vào và người đó đã chuyển đi.

Trưởng bộ phận nền tảng dẫn dắt một cuộc rà soát. Nhóm liệt kê mọi nhà cung cấp, sắp xếp theo mức dịch vụ phụ thuộc vào họ và mức dễ thay thế từng bên. Nhà cung cấp đám mây và mạng phân phối nội dung là quan trọng, còn dịch vụ thông báo và tiện ích là cần thiết nhưng thay được. Mỗi bên có một chủ sở hữu trong nhóm. Với nhà cung cấp tiện ích, nhóm lấy đầu mối liên hệ, đọc điều khoản và thấy không có mức dịch vụ nào được hứa. Họ quyết định giữ nhà cung cấp nhưng thêm một phương án dự phòng: nếu tiện ích không tải được, trang hiện một liên kết tĩnh đến blog trực tiếp. Với nhà cung cấp đám mây, họ so sánh các cam kết của nó với tính sẵn sàng đã hứa với các biên tập viên của đài và thấy một khoảng cách ở một vùng, họ khép lại bằng cách trải dịch vụ ra hai vùng.

Sáu tháng sau, một sự cố ngừng thứ hai ở nhà cung cấp thông báo được giám sát phát hiện trong vài phút, chủ sở hữu nêu nó với nhà cung cấp qua đường đã thống nhất, và ứng dụng tiếp tục hoạt động với thông báo bị trễ. Khó khăn vẫn còn. Các biên tập viên muốn tiện ích blog trực tiếp làm được nhiều hơn, nhưng nhà cung cấp quá nhỏ để cam kết mức dịch vụ, và quy tắc mua sắm của đài làm việc thay thế chậm. Trưởng bộ phận nền tảng thống nhất với bộ phận mua sắm chạy một thử nghiệm nhỏ cho một lựa chọn thay thế và rà soát danh sách nhà cung cấp hằng năm.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối chọn và tích hợp nhiều nhà cung cấp. Hãy ghi mỗi phụ thuộc khi bạn thêm nó, chỉ định chủ sở hữu, và hỏi về mức dịch vụ và việc thoát trước khi bạn dựa vào. Xây các phương án dự phòng cho những lỗi bạn hình dung được.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành làm việc với nhà cung cấp trong sự cố. Giữ đầu mối liên hệ và đường chuyển lên cấp trên luôn mới, thử chúng và ghi hiệu suất của nhà cung cấp. Mang bằng chứng này đến các buổi rà soát và đến bộ phận mua sắm.

### Lãnh đạo và quản trị

Lãnh đạo và bộ phận mua sắm định hình điều khoản và quan hệ. Hãy yêu cầu danh sách các nhà cung cấp quan trọng và rủi ro của họ, ủng hộ hợp đồng linh hoạt cho công việc dựa trên học hỏi, và bảo đảm hợp đồng bao gồm mức dịch vụ, an toàn và việc thoát. Hãy hỏi ai sở hữu kết quả từ đầu đến cuối khi nhiều nhà cung cấp đóng góp.

### Khách hàng và người dùng

Khách hàng và người dùng dựa vào cả chuỗi, không phải bất kỳ mắt xích nào. Hãy hỏi nhà cung cấp những bên nào quan trọng với dịch vụ bạn dùng và họ bảo vệ nó thế nào. Khi có gì sai, hãy mong sự trung thực về phần nào đã hỏng và điều gì đang được làm.

## Các kiểu thất bại thường gặp

- **Phụ thuộc ẩn.** Một công cụ do một lập trình viên thêm vào trở thành quan trọng, và không ai sở hữu nó. Thay vào đó, ghi mọi phụ thuộc và chỉ định chủ sở hữu.
- **Một cỡ cho tất cả.** Mọi nhà cung cấp nhận cùng một quy trình nặng nề, hoặc không ai nhận gì. Thay vào đó, phân khúc theo mức phụ thuộc và khả năng thay thế.
- **Những lời hứa không khớp.** Lời hứa với khách hàng mạnh hơn lời hứa của nhà cung cấp. Thay vào đó, so sánh cam kết và khép khoảng cách.
- **Không có đường đã thử.** Đường dây hỗ trợ của nhà cung cấp được tìm ra trong lúc ngừng hoạt động. Thay vào đó, thống nhất và thử đầu mối liên hệ và đường chuyển lên cấp trên từ trước.
- **Bị khóa chặt một cách vô tình.** Dữ liệu không xuất được. Thay vào đó, kiểm tra khả năng di chuyển sớm và ghi một ghi chú thoát.
- **Chỉ hợp đồng, không quan hệ.** Nhà cung cấp là người xa lạ khi rắc rối đến. Thay vào đó, tổ chức rà soát định kỳ và chia sẻ kế hoạch.
- **Không ai sở hữu toàn bộ.** Nhiều nhà cung cấp đổ lỗi cho nhau. Thay vào đó, chỉ định một bên tích hợp cho dịch vụ từ đầu đến cuối và thống nhất cách xử lý giữa các nhà cung cấp.
- **Hợp đồng phạm vi cố định cho công việc bất định.** Hợp đồng chống lại việc học. Thay vào đó, dùng các thỏa thuận cho phép phạm vi đổi trong giới hạn rõ ràng.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Biết nhà cung cấp | Nhà cung cấp được các cá nhân biết | Một số nhóm liệt kê nhà cung cấp của mình | Một danh sách chung với mức phụ thuộc, khả năng thay thế và chủ sở hữu | Danh sách được rà soát theo sự cố và thay đổi | Danh sách được chia sẻ giữa các nhóm và nối với dịch vụ |
| Cam kết và dịch vụ | Mức dịch vụ của nhà cung cấp không được biết | Điều khoản của các nhà cung cấp chính được đọc | Cam kết của nhà cung cấp được so với lời hứa với khách hàng | Hiệu suất nhà cung cấp được đo và rà soát | Cam kết được căn chỉnh xuyên chuỗi với rà soát chung |
| Sự cố và rủi ro | Vấn đề của nhà cung cấp được phát hiện tình cờ | Một số đầu mối liên hệ được biết | Đường chuyển lên cấp trên được thống nhất và thử; rủi ro được ghi | Sự cố và rủi ro của nhà cung cấp được theo dõi và hành động theo | Xử lý sự cố và kế hoạch rủi ro là chung với nhà cung cấp |
| Quan hệ và thoát | Nhà cung cấp mang tính giao dịch | Có một số cuộc họp với nhà cung cấp | Rà soát định kỳ với nhà cung cấp quan trọng và ghi chú thoát ngắn | Sức khỏe quan hệ và mức sẵn sàng thoát được rà soát | Nhà cung cấp tham gia lập kế hoạch và cải tiến |

## Danh mục kiểm tra

- [ ] Chúng ta có một danh sách nhà cung cấp và mỗi bên hỗ trợ điều gì.
- [ ] Nhà cung cấp được sắp xếp theo mức phụ thuộc và khả năng thay thế.
- [ ] Mỗi nhà cung cấp quan trọng có một chủ sở hữu có tên.
- [ ] Chúng ta đã so sánh cam kết của nhà cung cấp với lời hứa với khách hàng cho các dịch vụ chính.
- [ ] Đầu mối và đường chuyển lên cấp trên cho nhà cung cấp quan trọng được biết và đã thử.
- [ ] Kỳ vọng về an toàn và bảo vệ dữ liệu nằm trong hợp đồng hoặc được thống nhất bằng văn bản.
- [ ] Một ghi chú thoát hoặc hỏng ngắn tồn tại cho mỗi nhà cung cấp quan trọng.
- [ ] Chúng ta tổ chức rà soát định kỳ với các nhà cung cấp quan trọng.
- [ ] Khi nhiều nhà cung cấp đóng góp, có người sở hữu kết quả từ đầu đến cuối.
- [ ] Danh sách nhà cung cấp được rà soát ít nhất mỗi năm một lần.

## Lời nhắc AI

**Mục đích: xây một danh sách nhà cung cấp và phụ thuộc từ những gì bạn biết.**

```text
Help me build a supplier and dependency list for [service].

What the service does and what it is built on: [describe components, cloud services, tools, and contractors].
What I know about each: [for example name, what we use it for, who set it up, contract status].

Produce a table with: supplier, what it supports, who owns the relationship (or "unknown"), how critical it seems (critical, important, routine, with a reason from my text), and one question to ask. Mark guesses. Do not invent suppliers or terms. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: so sánh cam kết của nhà cung cấp với lời hứa của bạn với khách hàng.**

```text
Here are the commitments we have made to customers for [service]: [paste, for example availability and response time].
Here are the commitments our suppliers have made, with the exact wording from their terms: [paste for each supplier].

Compare them. For each customer commitment, list which suppliers it depends on, whether their commitments appear to support ours (using only the pasted text), and what gaps there are. Suggest design or agreement changes as questions to consider. Do not interpret legal terms; flag anything ambiguous for legal review. List what you are unsure of.
```

**Mục đích: chuẩn bị cho một cuộc họp rà soát nhà cung cấp.**

```text
Plan a 45-minute review with [supplier] about [service they provide to us].

Data we have: [incidents involving them, response times, requests, with dates; real data only].
Concerns we want to raise: [list].
Things we want to ask about their plans: [list].
Things they may want from us: [list, or write "unknown"].

Give a timed agenda, a one-page summary of our data, five questions for them, three things we should offer, and a closing step that records actions with owners and dates. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: soạn một ghi chú thoát ngắn cho một nhà cung cấp quan trọng.**

```text
Help me draft an exit note for [supplier], which provides [service].

What we store with or through them, and how we could export it: [describe].
Alternatives we know of: [list, or write "unknown"].
Contract terms about notice and data return, if known (paste the exact text): [paste, or write "not read"].

Write a one-page note with: what depends on them, what we would need to leave (data, configuration, skills), a rough sequence of steps (leave timing as [to be estimated]), risks, and questions to ask the supplier. Do not interpret the contract. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng để lập kế hoạch lựa chọn, rà soát và quan hệ với một nhà cung cấp.
- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi rủi ro nhà cung cấp và cách chúng được quản lý.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): dùng để hiểu ai trong tổ chức của bạn và của nhà cung cấp quan trọng với mối quan hệ.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): dùng để kiểm tra cam kết của nhà cung cấp hỗ trợ điều bạn hứa.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để làm rõ ai sở hữu từng mối quan hệ nhà cung cấp và ai được tham vấn.

## Nguồn chính

- **Supplier relationship management** (Wikipedia): một tổng quan về phân khúc, thẻ điểm và cộng tác với nhà cung cấp, với thẻ bảo trì cho thấy nguồn dẫn yếu ở đâu.
- **Service integration and management** (Wikipedia): cách tiếp cận đa nhà cung cấp, với các tầng, mô hình và thách thức triển khai.
- **Service-level agreement** (Wikipedia): bối cảnh về các thỏa thuận mà nhà cung cấp và khách hàng ký.
- **ITIL** (Wikipedia): bối cảnh về cách ITIL xử lý nhà cung cấp.

## Tài liệu tham khảo

1. Supplier relationship management — Wikipedia — https://en.wikipedia.org/wiki/Supplier_relationship_management
2. Service integration and management — Wikipedia — https://en.wikipedia.org/wiki/Service_integration_and_management
3. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Outsourcing — Wikipedia — https://en.wikipedia.org/wiki/Outsourcing
6. Vendor lock-in — Wikipedia — https://en.wikipedia.org/wiki/Vendor_lock-in
7. Balanced scorecard — Wikipedia — https://en.wikipedia.org/wiki/Balanced_scorecard
8. Procurement — Wikipedia — https://en.wikipedia.org/wiki/Procurement
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
