# Mở rộng quy mô Agile

**Mở rộng quy mô agile nghĩa là điều phối nhiều nhóm, dịch vụ và nhà cung cấp mà không đánh mất các vòng phản hồi ngắn vốn làm agile hiệu quả, và rủi ro chính là thêm các tầng quy trình trước khi bạn biết mình đang giải quyết vấn đề nào.**

## Vì sao điều này quan trọng

Một nhóm agile đơn lẻ tối đa mười người có thể trò chuyện với nhau mỗi ngày. Một dịch vụ thực thường liên quan nhiều hơn: nhiều nhóm phân phối, một nhóm vận hành, một bàn dịch vụ, bảo mật, một nhóm mạng và các nhà cung cấp. Khi công việc của nhiều nhóm phải khớp với nhau, cuộc trò chuyện hằng ngày của một nhóm là không đủ, và những vấn đề mới xuất hiện. Các ưu tiên xung đột, các phụ thuộc làm đình trệ công việc, và mỗi nhóm cải thiện phần của mình trong khi toàn bộ dịch vụ không được cải thiện.

Nhiều khung tuyên bố giải quyết điều này. Chúng khác nhau về quy mô, chi phí và triết lý, và thu hút những ý kiến mạnh mẽ. Một số tổ chức áp dụng một khung lớn như một chương trình và dành nhiều năm cho việc triển khai. Số khác mở rộng quy mô bằng cách gỡ bỏ rào cản và giữ một tập quy tắc nhỏ. Lập trường trung thực, được [bài viết Wikipedia về phát triển phần mềm agile](https://en.wikipedia.org/wiki/Agile_software_development) ủng hộ, là các ý kiến về hiệu quả của các khung mở rộng quy mô khác nhau và bằng chứng còn hạn chế.

Với những người làm quản lý dịch vụ CNTT (ITSM), mở rộng quy mô quan trọng vì ITIL vốn đã hoạt động ở quy mô lớn. Nó mô tả một hệ thống giá trị dịch vụ nối nhiều thực hành và nhiều bên (xem Chủ đề 2.3 — Hệ thống giá trị dịch vụ ITIL). Câu hỏi mà chủ đề này giúp trả lời là làm sao kết hợp hai điều đó: điều phối nhiều nhóm agile thế nào trong khi vẫn giữ các thực hành quản lý dịch vụ bảo vệ người dùng, và không dựng một tầng quan liêu thứ hai chồng lên tầng thứ nhất.

## Các khái niệm cốt lõi

### Vì sao một nhóm khác với nhiều nhóm

Bài viết Wikipedia về phát triển phần mềm agile cho biết mở rộng quy mô đem lại thách thức khi một dự án có hơn khoảng 20 lập trình viên hoặc khi các nhóm phân tán ở nhiều địa điểm. Có các chiến lược và khung cho những trường hợp này, nhưng bài viết lưu ý có những quan điểm mâu thuẫn về việc chúng có phù hợp với định nghĩa của agile hay không.

Ba vấn đề lặp lại khi bạn thêm nhóm:

- **Căn chỉnh:** các nhóm cần một hướng đi chung và các ưu tiên nhất quán, nếu không họ sẽ tối ưu những thứ khác nhau.
- **Phụ thuộc:** công việc ở một nhóm chờ nhóm khác, và các lần chờ nhân lên khi số nhóm tăng.
- **Tích hợp:** đầu ra của nhiều nhóm phải hợp lại thành thứ chạy được như một dịch vụ, và bạn kiểm thử điều đó càng muộn thì bất ngờ càng đắt.

### Bốn cách tiếp cận nổi tiếng

Bảng sau tóm tắt bốn cách tiếp cận có tên. Các tóm tắt dựa trên các bài viết Wikipedia và trang của chính chủ sở hữu khung như đã đọc cho cuốn sách này; hãy kiểm tra các phiên bản hiện hành ở nguồn trước khi dựa vào chi tiết.

| Cách tiếp cận | Người tạo hoặc chủ sở hữu | Ý tưởng chính | Quy mô và hình dạng |
|---|---|---|---|
| **Scaled Agile Framework (SAFe)** | Được mô tả đầu tiên trong cuốn sách năm 2007 *Scaling Software Agility* của Dean Leffingwell; tài liệu do Scaled Agile, Inc. xuất bản | Một tập các mẫu tổ chức và luồng công việc dựa trên agile, phát triển sản phẩm tinh gọn và tư duy hệ thống | Các cấu hình từ cấp nhóm và chương trình (Agile Release Train) lên đến các giải pháp lớn và danh mục đầu tư |
| **Large-Scale Scrum (LeSS)** | Craig Larman và Bas Vodde | Mở rộng chính Scrum: một Product Owner và một Product Backlog cho một sản phẩm, nhiều nhóm tính năng liên chức năng, với ít vai trò và artifact thêm vào nhất có thể | LeSS cho khoảng hai đến tám nhóm; LeSS Huge cho nhiều hơn, với các Requirement Area gồm vài nhóm mỗi khu vực |
| **Disciplined Agile (DA)** | Scott Ambler và Mark Lines; được Project Management Institute (PMI) mua lại tháng 8 năm 2019 | Một bộ công cụ gồm các mục tiêu quy trình và lựa chọn giúp một nhóm chọn cách làm việc của riêng mình theo bối cảnh | Lai và nhạy với bối cảnh, với nhiều vòng đời và một tầng cho doanh nghiệp |
| **Scrum@Scale và các khung khác** | Được nêu cạnh SAFe trong bài viết Wikipedia | Các khung khác để điều phối nhiều nhóm Scrum | Xem các trang của chủ sở hữu |

### SAFe chi tiết hơn

Bài viết Wikipedia nói SAFe lần đầu được mô tả chính thức năm 2007, có bản phát hành đầu tiên năm 2011 và phiên bản 6.0 vào tháng 3 năm 2023. Với phiên bản 5.1, nó liệt kê bốn cấu hình: Essential SAFe (cấp nhóm và chương trình), Large Solution SAFe, Portfolio SAFe và Full SAFe. Bài viết cũng liệt kê mười nguyên tắc, gồm việc nhìn theo góc độ kinh tế và áp dụng tư duy hệ thống.

SAFe đã bị chỉ trích công khai, điều bài viết có ghi lại. Thoughtworks lập luận rằng kiểm soát từ trên xuống tạo ra lãng phí, Ken Schwaber chỉ trích nó trong một bài đăng năm 2013, và Jeff Gothelf lập luận năm 2021 rằng SAFe không phải agile. Các nhà phê bình gọi nó là phân cấp và cứng nhắc và nói nó có thể cho tổ chức vẻ ngoài của sự nhanh nhẹn trong khi giữ nguyên các quy trình cũ. Những người ủng hộ đánh giá cao từ vựng chung và cấu trúc của nó cho các tổ chức lớn. Hãy đọc cả hai phía trước khi quyết định.

### LeSS: mở rộng bằng cách bỏ bớt

Larman và Vodde mô tả LeSS là Scrum áp dụng cho nhiều nhóm làm việc trên một sản phẩm. Nó không thêm tầng nào lên trên Scrum. Theo phần giới thiệu của chính khung, một Product Owner quản lý một Product Backlog và các nhóm tạo ra một sản phẩm có thể phát hành trong một Sprint chung. LeSS nêu ý tưởng "nhiều hơn với ít hơn": ít vai trò, artifact và quy tắc hơn tạo ra các nhóm có trách nhiệm hơn. Về phương pháp nền tảng, xem Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch.

### Disciplined Agile: chọn cách làm việc của bạn

Bài viết Wikipedia về Disciplined Agile Delivery mô tả một bộ công cụ lai, đặt con người lên hàng đầu, bao phủ toàn bộ vòng đời phân phối. Nó hỗ trợ sáu vòng đời và mô tả 21 mục tiêu quy trình. Cách tiếp cận là giúp các nhóm chọn những thực hành phù hợp tình huống của họ, thay vì quy định một khung. Bài viết có một thông báo bảo trì rằng nó có thể dựa quá nhiều vào các nguồn gần với chủ đề.

### Scrum of Scrums và điều phối đơn giản

Trước khi áp dụng một khung, hãy cân nhắc những công cụ đơn giản nhất. Một "scrum of scrums" đưa đại diện của nhiều nhóm lại với nhau để chia sẻ tiến độ và giải quyết các phụ thuộc. Lập kế hoạch quý chung, một backlog chung cho một sản phẩm và một cuộc họp định kỳ của các trưởng nhóm là những lựa chọn nhẹ khác. Nhiều tổ chức mở rộng quy mô đủ tốt với những thứ này.

### Mở rộng quy mô trong một tổ chức dịch vụ

Trong một tổ chức CNTT, các nhóm có thể được tổ chức theo nhiều cách, và lựa chọn ảnh hưởng đến việc agile mở rộng tốt đến đâu:

| Tổ chức | Các nhóm được tổ chức thế nào | Tác động lên việc mở rộng |
|---|---|---|
| **Theo thành phần** | Một nhóm cho mỗi tầng kỹ thuật hoặc hệ thống | Tính năng cần nhiều nhóm, nên có nhiều phụ thuộc |
| **Theo tính năng hoặc sản phẩm** | Các nhóm liên chức năng sở hữu một lát cắt hướng đến khách hàng | Ít phụ thuộc hơn; cần chuẩn chung cho các nền tảng |
| **Theo dịch vụ** | Một nhóm cho mỗi dịch vụ, sở hữu cả xây dựng và vận hành | Gần với quản lý dịch vụ; cần cách xử lý các nền tảng dùng chung |
| **Nền tảng cộng luồng** | Các nhóm cung cấp một nền tảng, và các nhóm dùng nó | Cần các thỏa thuận dịch vụ rõ ràng giữa họ |

Không có mẫu hình nào tốt nhất cho tất cả. Chuyển từ các nhóm theo thành phần sang các nhóm tổ chức quanh sản phẩm hoặc dịch vụ là một bước phổ biến, và nó khó thực hiện, vì nó thay đổi ai báo cáo cho ai.

### Nghiên cứu và phê bình nói gì

Bài viết về phát triển phần mềm agile nêu rằng bằng chứng thực nghiệm cho các phương pháp agile nói chung còn hạn chế và chưa thuyết phục. Với các khung mở rộng quy mô, các nguồn đã tham khảo chủ yếu đưa ý kiến và tài liệu của nhà cung cấp. Hãy thận trọng với mọi nhận định về cải thiện đã đo được, hỏi bằng chứng đằng sau nó, và thử bất kỳ khung nào trên một phần nhỏ của tổ chức trước.

## Thực hành tốt

1. **Bắt đầu từ vấn đề, không phải khung.** Gọi tên điều đang sai: phụ thuộc chậm, ưu tiên xung đột, tích hợp muộn. Chọn cách tiếp cận nhẹ nhất giải quyết nó, và chỉ áp dụng thêm nếu nó không đủ.
2. **Thử cách điều phối đơn giản nhất trước.** Lập kế hoạch chung, một scrum of scrums và một backlog chung cho mỗi sản phẩm giải quyết nhiều vấn đề với chi phí nhỏ. Chỉ thêm cấu trúc khi những thứ này ngừng hiệu quả.
3. **Tổ chức các nhóm quanh giá trị.** Ưu tiên các nhóm sở hữu một sản phẩm hoặc dịch vụ từ đầu đến cuối, có kỹ năng để xây dựng và vận hành nó. Điều này giảm bàn giao và phụ thuộc và khớp với cách ITIL nghĩ về dịch vụ (xem Chủ đề 2.6 — Chuỗi giá trị dịch vụ).
4. **Giữ một danh sách có thứ tự cho mỗi sản phẩm.** Có một product backlog với một chủ sở hữu chịu trách nhiệm, như LeSS khuyến nghị, loại bỏ nhiều xung đột giữa các nhóm. Khi điều này không thể, hãy làm cho thứ tự ưu tiên giữa các nhóm nhìn thấy được.
5. **Lập kế hoạch cùng nhau theo nhịp đều đặn.** Đưa các nhóm và các bên liên quan chủ chốt lại với nhau vài tháng một lần để căn chỉnh mục tiêu, phụ thuộc và rủi ro. Giữ sự kiện ngắn và dựa trên bằng chứng, và tránh biến nó thành cuộc thương lượng về các kế hoạch chi tiết.
6. **Tích hợp liên tục.** Kiểm thử đầu ra của mọi nhóm cùng nhau thường xuyên nhất có thể, lý tưởng là mỗi ngày. Tích hợp muộn là lý do phổ biến nhất khiến các chương trình lớn làm các nhà tài trợ bất ngờ (xem Chủ đề 1.6 — Extreme Programming).
7. **Làm cho phụ thuộc nhìn thấy được và giảm chúng.** Liệt kê nhóm nào chờ nhóm nào, và đếm các lần chờ. Giảm chúng bằng cách đổi ranh giới nhóm, chia sẻ kỹ năng, hoặc xây các nền tảng dùng chung với giao diện rõ ràng.
8. **Định nghĩa thỏa thuận dịch vụ giữa các nhóm.** Khi một nhóm cung cấp nền tảng hoặc dịch vụ cho nhóm khác, hãy thống nhất điều được kỳ vọng: tính sẵn sàng, phản hồi, giờ hỗ trợ và cách yêu cầu thay đổi (xem Chủ đề 3.7 — Quản lý mức dịch vụ).
9. **Điều chỉnh và ghi lại điều bạn đã đổi.** Bất kỳ khung nào bạn áp dụng, hãy ghi phần nào bạn theo, phần nào bỏ và vì sao. Nhãn trung thực ngăn tình huống một biến thể lai bị đánh giá theo một khung mà nó chưa bao giờ định theo.
10. **Thử nghiệm trước khi triển khai.** Thử cách tiếp cận với vài nhóm, đo các kết quả bạn quan tâm và học hỏi. Chỉ mở rộng khi thử nghiệm cho thấy một lợi ích bạn mô tả được.
11. **Giữ quản trị nhẹ và dựa trên kết quả.** Hỏi bằng chứng như dòng chảy phân phối, xu hướng sự cố và phản hồi của người dùng, chứ không phải báo cáo trạng thái mà mỗi nhóm viết theo một định dạng khác nhau (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ).
12. **Rà soát cấu trúc định kỳ.** Tổ chức rà soát một hoặc hai lần mỗi năm để hỏi ranh giới nhóm, vai trò và nghi thức còn phục vụ công việc không. Cấu trúc đúng cho 30 người có thể sai cho 300.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta kỳ vọng mở rộng quy mô giải quyết vấn đề gì, và làm sao biết nó đã được giải quyết?**

Mời mọi người gọi tên nỗi đau: tích hợp muộn, ưu tiên xung đột, chờ lâu các nhóm khác. Ghi mỗi điều kèm một ví dụ gần đây. Một khung được chọn mà không có vấn đề nêu rõ là một giải pháp đi tìm vấn đề. Người điều phối có thể hỏi cách sửa đơn giản nhất cho mỗi vấn đề là gì, và bằng chứng nào sẽ cho thấy nó hiệu quả.

**Chúng ta chờ những nhóm nào khác nhiều nhất, và chờ bao lâu?**

Vẽ các phụ thuộc lên tường và thêm thời gian chờ điển hình cho mỗi cái. Các nhóm vốn nghĩ mình độc lập thường ngạc nhiên. Hỏi phụ thuộc nào là thật và phụ thuộc nào đến từ ranh giới nhóm trong lịch sử. Chọn một phụ thuộc để gỡ, bằng cách đổi cách tổ chức nhóm hoặc chia sẻ kỹ năng.

**Ai quyết định thứ tự công việc giữa các nhóm của chúng ta, và làm sao chúng ta biết?**

Lần theo một xung đột ưu tiên gần đây từ đầu đến khi giải quyết. Tìm các lần chuyển lên cấp trên, các cuộc họp và các thỏa thuận không chính thức. Hỏi một người chịu trách nhiệm duy nhất, như trong LeSS, có thể quyết định không. Cân nhắc điều sẽ mất hoặc được. Một kết quả tốt là có một đường rõ ràng để quyết định xung đột, dù đó không phải một vai trò mới.

**Một khung như SAFe, LeSS hay Disciplined Agile cho chúng ta điều gì mà ta không thể có rẻ hơn?**

Nhờ người đã đọc về mỗi khung giải thích trong vài câu, và xin các lời chỉ trích mạnh nhất. Bài viết Wikipedia về SAFe liệt kê vài lời chỉ trích, và các trang của chủ sở hữu khung liệt kê lợi ích. Người điều phối nên giữ thảo luận thực tế: thứ Hai chúng ta sẽ làm gì nếu áp dụng nó, và ai cần đổi gì? Quyết định thử gì, nếu có, và giữ gì như cũ.

**Làm sao chúng ta kiểm tra rằng công việc của mọi nhóm khớp với nhau, và bao lâu một lần?**

Đếm số ngày giữa thay đổi của một nhóm và lần kiểm thử đầu tiên của nó cùng các thay đổi của mọi người khác. Khoảng cách càng dài thì bất ngờ càng lớn. Hỏi điều gì ngăn tích hợp hằng ngày, như môi trường, dữ liệu kiểm thử hay quyền sở hữu. Chọn một rào cản để gỡ.

**Kiểm soát nào của chúng ta áp dụng cho mọi nhóm như nhau, và kiểm soát nào nên phụ thuộc vào rủi ro?**

Liệt kê các kiểm soát chuẩn, như rà soát, phê duyệt và báo cáo. Hỏi cái nào được điều chỉnh cho công việc rủi ro thấp. Kiểm soát đồng nhất dễ quản lý và chậm với mọi người. Kiểm soát phụ thuộc rủi ro cần tiêu chí rõ ràng. Chọn một kiểm soát để rà soát.

## Trong thực tế: một ví dụ agile ITIL

Khối CNTT của một ngân hàng bán lẻ lớn có 14 nhóm phân phối và một nhóm vận hành trung tâm. Mỗi nhóm đã áp dụng Scrum, nhưng khách hàng của ngân hàng thấy ít cải thiện. Các bản phát hành cho ứng dụng ngân hàng di động cần thay đổi từ năm nhóm, và mỗi bản phát hành được điều phối bởi một văn phòng chương trình theo dõi các phụ thuộc trong một bảng tính. Một bản phát hành gần đây bị chậm ba tuần vì hai nhóm phát hiện vào phút chót rằng các thay đổi của họ không tương thích.

Một kiến trúc sư và trưởng bộ phận vận hành thực hiện một nghiên cứu sáu tháng các bản phát hành. Họ thấy phần lớn các lần chậm đến từ tích hợp muộn và từ ưu tiên không rõ giữa các nhóm dùng chung một backlog các tính năng di động. Họ cân nhắc áp dụng một khung lớn, nhưng quyết định bắt đầu nhỏ. Họ tạo một backlog duy nhất cho ứng dụng di động với một product owner chịu trách nhiệm, và gộp việc lập kế hoạch của năm nhóm thành một buổi chung sáu tuần một lần. Họ thiết lập một pipeline chung build và kiểm thử mọi thay đổi của các nhóm cùng nhau mỗi đêm, và đưa nhóm vận hành vào buổi lập kế hoạch chung.

Sau hai quý, số lần không tương thích phút chót giảm và các bản phát hành đến mỗi hai tuần. Một số vấn đề vẫn tiếp diễn. Product owner chật vật với khối lượng yêu cầu và dành phần lớn thời gian để phân xử, và hai nhóm vẫn phụ thuộc vào nhóm cơ sở dữ liệu trung tâm có hàng đợi dài. Ngân hàng thống nhất làm cho hàng đợi của nhóm cơ sở dữ liệu nhìn thấy được trong buổi lập kế hoạch chung, và thử một đường tự phục vụ cho các thay đổi cơ sở dữ liệu thông thường. Họ cũng quyết định hoãn mọi quyết định về khung cho đến khi một mảng sản phẩm thứ hai thử cùng cách tiếp cận.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối gánh phần lớn gánh nặng của việc mở rộng quy mô: lập kế hoạch chung, pipeline chung và thỏa thuận với các nhóm lân cận. Hãy làm việc để giảm phụ thuộc tại nguồn, bằng cách học các kỹ năng ở nhóm bên cạnh, hoặc xây các giao diện không đòi hỏi điều phối. Tham gia các sự kiện lập kế hoạch với thông tin thật về tiến độ và rủi ro.

### Nhóm dịch vụ và vận hành

Nhân viên vận hành nên là một phần của việc lập kế hoạch từ đầu, vì nhiều phụ thuộc liên nhóm là vận hành: môi trường, truy cập, giám sát và hỗ trợ. Hãy mang dữ liệu dịch vụ đến buổi lập kế hoạch, và thống nhất mức dịch vụ với các nhóm phụ thuộc vào bạn. Hãy ủng hộ các nền tảng cho các nhóm phân phối khả năng tự phục vụ.

### Lãnh đạo và quản trị

Lãnh đạo định hình cấu trúc quyết định việc mở rộng quy mô hiệu quả đến đâu. Hãy cưỡng lại cám dỗ mua một khung để thay thế cho việc quyết định tổ chức muốn trở thành gì. Hãy đòi một phát biểu rõ ràng về vấn đề, một thử nghiệm và bằng chứng. Giữ báo cáo nhẹ, và chấp nhận rằng thay đổi cấu trúc có thể gây khó chịu cho các quản lý.

### Khách hàng và người dùng

Khách hàng nên thấy một dịch vụ mạch lạc chứ không phải các đường nối giữa các nhóm. Hãy mong có một đầu mối liên hệ cho mỗi sản phẩm và một đường rõ ràng cho các yêu cầu. Hãy nói với product owner điều gì quan trọng nhất, và mong câu trả lời bao gồm các đánh đổi giữa những nhu cầu cạnh tranh.

## Các kiểu thất bại thường gặp

- **Mua một khung để tránh một quyết định.** Một tổ chức áp dụng một khung với hy vọng nó sẽ giải quyết bất đồng về ưu tiên. Thay vào đó, quyết định ai có thẩm quyền về ưu tiên rồi xem khung nào, nếu có, giúp ích.
- **Sao chép một sơ đồ.** Vai trò và cuộc họp được thêm vào mà không hiểu lý do. Thay vào đó, chỉ áp dụng những yếu tố giải quyết một vấn đề đã gọi tên.
- **Thêm tầng.** Điều phối viên, văn phòng chương trình và ủy ban nhân lên trong khi các nhóm mất tự chủ. Thay vào đó, gỡ phụ thuộc để có ít thứ cần điều phối hơn.
- **Tích hợp muộn.** Các nhóm tích hợp ở cuối một chu kỳ dài. Thay vào đó, tích hợp và kiểm thử mọi thay đổi cùng nhau hằng ngày.
- **Kiểm soát đồng nhất.** Mọi nhóm theo cùng một quy trình nặng nề bất kể rủi ro. Thay vào đó, đặt kiểm soát theo rủi ro và làm cho đường rủi ro thấp nhanh.
- **Bỏ qua vận hành.** Việc lập kế hoạch có lập trình viên và quản lý sản phẩm nhưng không có nhân viên vận hành. Thay vào đó, đưa vận hành vào lập kế hoạch chung và chia sẻ dữ liệu dịch vụ.
- **Đánh giá một biến thể lai theo khung.** Các nhà phê bình nói nó không phải là khung, còn người ủng hộ nói đúng là nó. Thay vào đó, đặt cho cách tiếp cận của bạn tên riêng và mô tả nó.
- **Không bao giờ xem lại cấu trúc.** Ranh giới vẽ lúc 30 người vẫn tồn tại ở 300. Thay vào đó, rà soát cấu trúc nhóm và vai trò ít nhất hằng năm.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Căn chỉnh và ưu tiên | Mỗi nhóm tự đặt ưu tiên | Một số nhóm chia sẻ backlog hoặc họp để căn chỉnh | Các sản phẩm có một backlog có thứ tự và lập kế hoạch chung theo nhịp đều đặn | Sự căn chỉnh được kiểm tra theo kết quả và các phụ thuộc được đo | Ưu tiên được điều chỉnh liên tục giữa các nhóm, khách hàng và nhà cung cấp |
| Phụ thuộc | Các lần chờ nhóm khác không được quản lý | Một số nhóm liệt kê phụ thuộc của mình | Phụ thuộc nhìn thấy được và có thỏa thuận giữa các nhóm | Thời gian chờ cho các phụ thuộc được đo và giảm | Ranh giới nhóm được định hình lại từ bằng chứng để loại bỏ phụ thuộc |
| Tích hợp | Tích hợp diễn ra ở cuối | Một số nhóm tích hợp thường xuyên hơn | Pipeline chung tích hợp và kiểm thử thay đổi của mọi người thường xuyên | Các lỗi tích hợp và nguyên nhân được theo dõi và sửa | Môi trường tích hợp và kiểm thử được chia sẻ và cải thiện giữa các nhóm |
| Quản trị và cấu trúc | Kiểm soát đồng nhất và chậm | Một số đường rủi ro thấp tồn tại | Kiểm soát thay đổi theo rủi ro với tiêu chí rõ ràng | Kết quả và hiệu quả kiểm soát được rà soát | Cấu trúc và kiểm soát được rà soát và điều chỉnh thường quy trên toàn tổ chức |

## Danh mục kiểm tra

- [ ] Chúng ta có thể nêu trong một câu vấn đề mà việc mở rộng quy mô nên giải quyết.
- [ ] Chúng ta đã vẽ các phụ thuộc giữa các nhóm và biết thời gian chờ điển hình cho mỗi cái.
- [ ] Mỗi sản phẩm có một backlog có thứ tự với một chủ sở hữu chịu trách nhiệm.
- [ ] Các nhóm và các bên liên quan chủ chốt lập kế hoạch cùng nhau theo nhịp đều đặn.
- [ ] Đầu ra của mọi nhóm được build và kiểm thử cùng nhau ít nhất hằng ngày.
- [ ] Các nhóm cung cấp nền tảng hoặc dịch vụ cho nhóm khác có thỏa thuận dịch vụ bằng văn bản.
- [ ] Nhân viên vận hành tham gia lập kế hoạch liên nhóm.
- [ ] Kiểm soát thay đổi theo rủi ro, và đường rủi ro thấp nhanh.
- [ ] Bất kỳ khung nào chúng ta áp dụng đều đã được thử nghiệm ở quy mô nhỏ trước.
- [ ] Chúng ta đã ghi lại những phần nào của bất kỳ khung nào chúng ta theo và phần nào không.
- [ ] Cấu trúc của các nhóm và vai trò được rà soát ít nhất mỗi năm một lần.

## Lời nhắc AI

**Mục đích: vẽ các phụ thuộc giữa các nhóm từ mô tả công việc gần đây.**

```text
Help me understand the dependencies between teams in a recent delivery.

Teams involved: [list the teams and what each does].
Recent delivery: [describe a recent release or project that needed work from several teams, with approximate dates for when each team finished and what it waited for].

Using only what I wrote, produce a table of dependencies (which team waited on which, for what, and for roughly how long). Highlight the three longest waits. For each, suggest one way to reduce the dependency and one question to ask the teams. Do not invent durations. Ask me clarifying questions first if the description is thin, mark assumptions, and list what you are unsure of.
```

**Mục đích: so sánh các lựa chọn mở rộng quy mô với một vấn đề đã nêu.**

```text
Our problem: [describe in 3-5 sentences, with a recent example].
Number of teams and people: [numbers].
Our current coordination: [for example weekly meeting of team leads, a program office, none].

From the text I paste below, summarize what each of these approaches proposes: [paste short excerpts or summaries from the owners' public pages for the approaches you are considering, such as SAFe, LeSS, Disciplined Agile, or a simple scrum of scrums]. Use only the pasted text.

Then, for each approach, list which parts of our problem it addresses, what it would require of us, and what questions we should ask its owner. Do not state anything about an approach that is not in the pasted text. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: lên kế hoạch một buổi lập kế hoạch chung cho nhiều nhóm.**

```text
Plan a half-day joint planning session for [number] teams working on [product or service].

Participants: [roles].
Inputs available: [for example each team's backlog, a list of dependencies, recent incident data].
Constraints: [for example people in different time zones].

Give a timed agenda that covers shared goals, dependencies, risks, and the plan for the next [period]. Include what each team brings, what the facilitator does, and a closing step that records agreed commitments and open questions. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: viết một thỏa thuận giữa nhóm nền tảng và các nhóm dùng nó.**

```text
Help me draft a one-page working agreement between a team that provides [platform or service] and the teams that use it.

What the platform team does today: [describe].
What the using teams need: [list, or write "unknown"].
Known constraints: [support hours, security rules, tools].

Draft sections for scope, how to request changes, availability and response expectations (leave numbers as [to be agreed] and do not invent them), how incidents are handled, and how the agreement is reviewed. Mark every item that is an assumption. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [scaled-agile-framework](../../../../skills/scaled-agile-framework/SKILL.md): dùng để hiểu các vai trò, sự kiện và cấp độ của SAFe và đánh giá phần nào bạn cần.
- [large-scale-scrum](../../../../skills/large-scale-scrum/SKILL.md): dùng để áp dụng Scrum cho nhiều nhóm làm việc trên một sản phẩm.
- [disciplined-agile](../../../../skills/disciplined-agile/SKILL.md): dùng để chọn thực hành theo mục tiêu quy trình cho bối cảnh của bạn.
- [scrum-of-scrums](../../../../skills/scrum-of-scrums/SKILL.md): dùng như một cách nhẹ để điều phối vài nhóm trước khi áp dụng một khung.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): dùng để quyết định các sản phẩm và sáng kiến được chọn và cấp vốn như thế nào.

## Nguồn chính

- **Scaled agile framework** (Wikipedia): một tổng quan về lịch sử, các cấu hình và những lời chỉ trích của SAFe, kèm trích dẫn.
- **Introduction to LeSS** (less.works): mô tả ngắn của những người tạo ra về Large-Scale Scrum và ý tưởng "nhiều hơn với ít hơn".
- **Disciplined agile delivery** (Wikipedia): tóm tắt về bộ công cụ, các vòng đời và mục tiêu của nó.
- **Agile software development** (Wikipedia): phần về công việc quy mô lớn, thuê ngoài và phân tán, và thảo luận về các quan điểm mâu thuẫn về các khung mở rộng quy mô.

## Tài liệu tham khảo

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Scaled agile framework — Wikipedia — https://en.wikipedia.org/wiki/Scaled_agile_framework
3. Disciplined agile delivery — Wikipedia — https://en.wikipedia.org/wiki/Disciplined_agile_delivery
4. LeSS framework introduction — Craig Larman and Bas Vodde, less.works — https://less.works/less/framework/introduction
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Project Management Institute — Wikipedia — https://en.wikipedia.org/wiki/Project_Management_Institute
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
