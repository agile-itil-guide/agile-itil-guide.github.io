# Quản lý tài chính CNTT và FinOps

**Quản lý tài chính CNTT cho thấy dịch vụ tốn bao nhiêu và đem lại giá trị gì, và FinOps là thực hành văn hóa đưa kỹ sư, tài chính và các nhóm kinh doanh lại với nhau để chi tiêu công nghệ, đặc biệt trên đám mây, được hiểu và quản lý ngay khi nó diễn ra.**

## Vì sao điều này quan trọng

Tiền quyết định dịch vụ nào tồn tại, được bố trí nhân sự tốt đến đâu và kéo dài bao lâu. Trong nhiều năm, tài chính CNTT nghĩa là một ngân sách hằng năm, một bảng tính phân bổ chi phí và thỉnh thoảng một cuộc tranh cãi về ai trả tiền cho mạng. Điện toán đám mây đã thay đổi điều này. Nguồn lực có thể được bất kỳ ai có đúng quyền tạo ra trong vài giây, và hóa đơn theo mức dùng. Một công việc cấu hình sai có thể thêm hàng nghìn vào hóa đơn tháng trước khi ai đó để ý, và một thay đổi chu đáo có thể tiết kiệm tương đương.

Với các nhóm agile, sự chuyển dịch có hai mặt. Họ có được tự do thử nghiệm và mở rộng mà không chờ phần cứng. Họ cũng đảm nhận một trách nhiệm trước đây thuộc về tài chính và mua sắm: biết lựa chọn của mình tốn bao nhiêu. Trong khi đó, nhân viên tài chính lập kế hoạch theo chu kỳ hằng năm đối mặt với mức dùng thay đổi hằng ngày. Không bên nào quản lý tốt chi phí một mình.

Wikipedia tiếng Anh không có bài nào tên "FinOps" tại địa chỉ đã kiểm tra. Trang riêng của FinOps Foundation định nghĩa FinOps là một khung vận hành và thực hành văn hóa tối đa hóa giá trị kinh doanh của công nghệ và tạo ra trách nhiệm giải trình tài chính qua sự cộng tác giữa các nhóm kỹ thuật, tài chính và kinh doanh. Bài viết Wikipedia về điện toán đám mây mô tả các mô hình giá và kiểm soát chi phí, và mang một thông báo rằng các phần của nó có thể chưa được xác minh. Từ vựng tài chính của ITIL ở đây, như lập ngân sách, kế toán và tính phí, rút từ các mô tả được xuất bản rộng rãi mà cuốn sách này không thể đối chiếu với văn bản của chủ sở hữu khung.

## Các khái niệm cốt lõi

### Quản lý tài chính CNTT

Quản lý tài chính CNTT (trong ITIL, "quản lý tài chính cho dịch vụ CNTT") được mô tả rộng rãi là thực hành quản lý tiền của một nhà cung cấp dịch vụ CNTT: lập ngân sách, hạch toán chi phí và, khi liên quan, tính phí cho dịch vụ. Mục đích của nó là cho những người ra quyết định thông tin để cân bằng chi phí với giá trị. Các nguồn đã đọc cho cuốn sách này không định nghĩa thực hành, nên các mô tả này là cách dùng phổ biến, được đưa ra như vậy.

| Hoạt động | Câu hỏi nó trả lời |
|---|---|
| **Lập ngân sách và kế hoạch** | Chúng ta sẽ chi bao nhiêu, và vào gì, trong giai đoạn tới? |
| **Hạch toán chi phí** | Mỗi dịch vụ tốn bao nhiêu để cung cấp? |
| **Tính phí hoặc phân bổ** | Ai trả, và bằng cách nào? |
| **Phân tích giá trị và đầu tư** | Một dịch vụ hay một thay đổi có đáng chi phí của nó không? |

### Showback và chargeback

Hai cách sắp xếp để chia sẻ chi phí được dùng rộng rãi. Trong **showback**, người tiêu dùng được cho thấy họ dùng gì và nó tốn bao nhiêu, nhưng không bị tính tiền. Trong **chargeback**, họ bị tính tiền hoặc chi phí được chuyển vào ngân sách của họ. Showback xây dựng nhận thức với ít ma sát; chargeback tạo ra trách nhiệm giải trình và có thể tạo ra tranh chấp về quy tắc phân bổ. Hãy chọn một cách bằng việc hỏi bạn muốn hành vi nào và dữ liệu đã đủ tốt để bảo vệ chưa.

### Đám mây và mô hình trả theo mức dùng

Wikipedia nói điện toán đám mây có thể giảm chi tiêu vốn ban đầu bằng cách chuyển sang mô hình chi phí vận hành, trong đó chi phí tăng theo mức dùng, và rằng hạ tầng như một dịch vụ được tính phí theo cơ sở tiện ích. Nó mô tả phần mềm như một dịch vụ thường là phí cố định hằng tháng hoặc hằng năm cho mỗi người dùng, hoặc trả theo mức dùng. Danh sách các mối quan ngại về kiểm soát chi phí của nó gồm nguồn lực không dùng, cấu hình kém hiệu quả và chi phí ẩn. Nó lưu ý rằng các nhà cung cấp đưa ra công cụ chi phí và trích dẫn FinOps là một khung để chuẩn hóa vận hành tài chính đám mây.

Bài viết báo cáo các phát hiện khảo sát: một khảo sát của Gartner với 200 lãnh đạo CNTT thấy 69 phần trăm gặp vượt ngân sách đám mây năm 2023, những người còn lại ghi công cho dự báo, giám sát chi tiêu và tối ưu hóa; và báo cáo 2024 của Flexera nêu quản lý chi tiêu đám mây là thách thức hàng đầu, báo cáo rằng chi tiêu đám mây công cộng vượt ngân sách trung bình 15 phần trăm. Bài viết mang một thông báo về văn bản chưa xác minh, nên hãy đối chiếu các con số này với báo cáo gốc trước khi trích dẫn.

### FinOps là gì

Trang của FinOps Foundation định nghĩa FinOps là "một khung vận hành và thực hành văn hóa" "tối đa hóa giá trị kinh doanh của công nghệ" và "tạo ra trách nhiệm giải trình tài chính qua sự cộng tác giữa các nhóm kỹ thuật, tài chính và kinh doanh." Nó nói tên gọi kết hợp "Finance" và "DevOps", và trọng tâm mở rộng ra ngoài đám mây đến phần mềm như một dịch vụ, cấp phép, trung tâm dữ liệu và hơn nữa. Những điểm chính từ trang:

- **Nó là môn thể thao đồng đội.** Trang nêu các nhóm: lãnh đạo, kỹ sư, người thực hành FinOps, vận hành, và tài chính và mua sắm, và nói FinOps thay đổi cách các nhóm rời rạc làm việc cùng nhau. Một nhóm đơn lẻ không thể làm một mình.
- **Nó dùng cách tiếp cận trưởng thành** được mô tả là "Crawl, Walk, Run" (bò, đi, chạy).
- **Foundation** được mô tả là một dự án thuộc LF Projects, một chuỗi của Linux Foundation, và hỗ trợ một đặc tả kỹ thuật mã nguồn mở gọi là FOCUS (FinOps Open Cost and Usage Specification). Nó cũng cung cấp đào tạo và chứng chỉ.

Trang đã đọc cho cuốn sách này không liệt kê các nguyên tắc hay các giai đoạn, nên chủ đề này không nêu chúng. Hãy xem trực tiếp các trang nguyên tắc và giai đoạn của Foundation.

### Dữ liệu chi phí và gắn thẻ

Dù thực hành được gọi là gì, nó phụ thuộc vào khả năng quy chi phí cho đúng chỗ. Điều này cần hai thứ: thẻ hoặc nhãn trên nguồn lực nói ai sở hữu chúng và chúng hỗ trợ dịch vụ nào (xem Chủ đề 4.1 — Quản lý tài sản CNTT), và dữ liệu hóa đơn có thể nhóm theo các thẻ đó. FOCUS tồn tại để chuẩn hóa định dạng dữ liệu chi phí và mức dùng giữa các nhà cung cấp. Chi phí không gắn thẻ là chi phí không có chủ.

### Chi phí đơn vị và giá trị

Một tổng hóa đơn nói rất ít. Hãy chia chi phí cho thứ có ý nghĩa với doanh nghiệp: theo giao dịch, theo người dùng, theo dịch vụ, theo môi trường. Tổng chi phí tăng với chi phí đơn vị giảm có thể là tăng trưởng lành mạnh. Tổng chi phí giảm với chi phí đơn vị tăng có thể báo hiệu một vấn đề. Chi phí đơn vị nối tài chính với mức dịch vụ và giá trị (xem Chủ đề 3.7 — Quản lý mức dịch vụ).

### Chi phí, độ tin cậy và tốc độ

Tiền mua độ tin cậy và tốc độ, và mỗi mức thêm đều có giá (xem Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng). Một nhóm cắt chi phí cẩu thả có thể giảm khả năng chống chịu. Một nhóm không bao giờ nhìn chi phí có thể xây dư. Các cuộc trò chuyện FinOps là nơi làm cho sự đánh đổi đó tường minh, với các kỹ sư mô tả các lựa chọn và tài chính cùng doanh nghiệp cân nhắc chúng.

### Quản trị và rủi ro

Các kiểm soát tài chính gồm ngân sách và cảnh báo, phê duyệt cho các cam kết lớn, giới hạn ai có thể tạo nguồn lực đắt tiền và rà soát định kỳ. Cam kết với nhà cung cấp, như thỏa thuận mua dài hạn, có thể giảm chi phí và thêm rủi ro nếu mức dùng giảm. Đây là các quyết định cho tài chính, mua sắm và kỹ thuật cùng nhau (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ và Chủ đề 3.14 — Quản lý nhà cung cấp).

### Giới hạn của các nguồn

Trang của FinOps Foundation là bản tóm tắt của tổ chức quảng bá thực hành, và nó không đưa ngày thành lập, số liệu thành viên hay bằng chứng về kết quả. Bài viết về điện toán đám mây bị đánh dấu có văn bản chưa xác minh và không đưa cơ chế giá, phí truyền ra hay chi tiết về một thực hành FinOps. Chủ đề này nên được coi là một phần giới thiệu; hãy đọc tài liệu của Foundation và tài liệu của nhà cung cấp của bạn để biết chi tiết.

## Thực hành tốt

1. **Làm cho chi phí nhìn thấy được với những người gây ra nó.** Cho mỗi nhóm thấy chi phí của các dịch vụ họ sở hữu, ít nhất hằng tháng, dưới dạng họ hiểu. Con người quản lý những gì họ thấy.
2. **Gắn thẻ mọi thứ tốn tiền.** Yêu cầu thẻ chủ sở hữu, dịch vụ và môi trường trên nguồn lực đám mây, và báo cáo chi tiêu chưa gắn thẻ. Sửa nó trước khi tinh chỉnh bất cứ thứ gì khác.
3. **Bắt đầu với showback.** Cho các nhóm thấy chi phí của họ trước khi bạn tính tiền họ. Chỉ chuyển sang chargeback khi dữ liệu được tin cậy và lợi ích rõ ràng.
4. **Dùng chi phí đơn vị.** Diễn đạt chi phí theo giao dịch, người dùng hay dịch vụ, cũng như tổng. Rà soát xu hướng cạnh nhu cầu và chất lượng.
5. **Đặt ngân sách và cảnh báo.** Thống nhất ngân sách theo dịch vụ hoặc nhóm, và đặt cảnh báo từ rất sớm trước giới hạn. Rà soát cảnh báo với các chủ sở hữu, không chỉ với tài chính.
6. **Đưa tài chính và kỹ thuật vào một cuộc trò chuyện.** Tổ chức một buổi rà soát định kỳ nơi kỹ sư giải thích điều gì thúc đẩy chi phí và tài chính giải thích các ràng buộc. Gồm một chủ sở hữu kinh doanh có thể đánh giá giá trị.
7. **Tìm lãng phí trước.** Tìm nguồn lực không dùng hoặc quá cỡ, môi trường nhàn rỗi và gói thuê bao bị quên. Những khoản tiết kiệm này ít rủi ro (xem Chủ đề 4.2 — Quản lý tài sản phần mềm về gói thuê bao).
8. **Cân nhắc tiết kiệm với độ tin cậy.** Trước khi cắt, hỏi thay đổi làm gì với tính sẵn sàng, hiệu năng và khôi phục. Ghi lại sự đánh đổi.
9. **Lập kế hoạch cam kết cẩn thận.** Cam kết mua với nhà cung cấp có thể giảm chi phí, nhưng khóa chặt chi tiêu. Dựa chúng trên mức dùng ổn định và rà soát đều đặn.
10. **Cho các nhóm thẩm quyền và giới hạn.** Để các nhóm đưa ra quyết định chi phí trong các biên đã thống nhất, và yêu cầu phê duyệt cho các quyết định vượt qua chúng. Tự chủ có khả năng nhìn thấy hiệu quả hơn chỉ kiểm soát trung tâm.
11. **Đưa chi phí vào thiết kế và định nghĩa hoàn thành.** Hỏi trong các buổi rà soát thiết kế một tính năng sẽ tốn bao nhiêu để vận hành, và kiểm tra sau phát hành.
12. **Học và chia sẻ.** Công bố các ghi chú ngắn về điều đã tiết kiệm tiền và điều phản tác dụng. Dùng một cách tiếp cận trưởng thành như "crawl, walk, run" để phát triển thực hành.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta có biết dịch vụ chính tốn bao nhiêu để vận hành, và ai sở hữu con số đó không?**

Hỏi chi phí hằng tháng của dịch vụ lớn nhất và nó được tính thế nào. Thường không ai trả lời được, hoặc câu trả lời đến từ các nguồn khác nhau. Người điều phối có thể hỏi cần gì để tạo ra con số một cách đáng tin, như thẻ và một báo cáo. Chọn một dịch vụ để bắt đầu.

**Bao nhiêu phần chi tiêu đám mây của chúng ta có thể quy cho một chủ sở hữu có tên?**

Hỏi tỷ lệ chưa gắn thẻ. Một tỷ lệ lớn nghĩa là chi phí không thể được quản lý. Bàn vì sao nguồn lực chưa gắn thẻ: không có quy tắc, không có công cụ hay không có động lực. Thống nhất một quy tắc gắn thẻ và một ngày cho báo cáo đầu tiên.

**Lần cuối chúng ta gặp một bất ngờ về chi phí là khi nào, và chúng ta biết bằng cách nào?**

Thu thập ví dụ: một môi trường bị quên, một công việc chạy mất kiểm soát, một gói thuê bao tự gia hạn. Hỏi nó chạy bao lâu trước khi bị phát hiện. Bàn các cảnh báo và buổi rà soát lẽ ra bắt được nó. Chọn một cảnh báo để thêm.

**Chúng ta sẽ cắt gì nếu ngân sách giảm mười phần trăm, và chúng ta sẽ mất gì?**

Mời nhóm đề xuất các lựa chọn và nêu hậu quả, gồm cả với độ tin cậy. Câu hỏi này làm các đánh đổi tường minh. Đừng coi các câu trả lời là một kế hoạch; hãy dùng chúng để bắt đầu một cuộc trò chuyện với tài chính và doanh nghiệp về giá trị.

**Kỹ sư hiện đưa ra những quyết định nào về chi tiêu, và họ nên đưa ra những quyết định nào?**

Liệt kê các quyết định chi phí mà các nhóm đưa ra: kích cỡ, môi trường, công cụ, mua sắm. Hỏi họ dùng thông tin gì. Bàn những biên nào là hợp lý. Thống nhất một quyết định để trao đi kèm giới hạn.

**Tài chính và kỹ thuật nói chuyện với nhau thế nào, và khi nào?**

Hỏi cả hai nhóm. Các câu trả lời điển hình: vào lúc lập ngân sách, hoặc khi có gì sai. Bàn một buổi rà soát chung định kỳ. Trang của FinOps Foundation nêu sự cộng tác giữa kỹ sư, tài chính và các nhóm kinh doanh là trái tim của thực hành. Thống nhất ai sẽ tổ chức buổi đầu tiên.

## Trong thực tế: một ví dụ agile ITIL

Một dịch vụ thư viện quốc gia đã chuyển danh mục số, tìm kiếm và các kho lưu trữ công cộng sang một nhà cung cấp đám mây trong ba năm. Giám đốc CNTT được phòng tài chính hỏi vì sao hóa đơn đám mây hằng tháng đã tăng gấp ba kể từ khi chuyển và vì sao khó giải thích. Một nhóm mười người vận hành nền tảng, và mỗi trong năm nhóm dự án có tài khoản đám mây riêng.

Giám đốc CNTT và một nhà phân tích tài chính bắt đầu bằng việc xin dữ liệu chi phí nhóm theo dịch vụ. Hầu hết nguồn lực chưa được gắn thẻ, nên chỉ một phần ba chi phí có thể quy được. Họ thống nhất một quy tắc gắn thẻ với năm nhóm và chạy một báo cáo hằng tuần liệt kê chi tiêu chưa gắn thẻ theo tài khoản. Trong sáu tuần tỷ lệ chưa gắn thẻ giảm xuống dưới một phần mười. Nhà phân tích rồi lập một báo cáo showback hằng tháng cho từng nhóm, cho thấy chi phí theo dịch vụ và chi phí cho mỗi nghìn lượt tìm kiếm cho dịch vụ tìm kiếm. Trong buổi rà soát đầu tiên, các kỹ sư phát hiện một môi trường phát triển chạy ở cỡ sản xuất suốt một năm, và một công việc xử lý dữ liệu quét một kho lưu trữ thường xuyên hơn cần thiết. Cả hai được sửa. Một cuộc họp hằng tháng với trưởng bộ phận sưu tập của thư viện cho phép các kỹ sư giải thích điều gì thúc đẩy chi phí, như khối lượng lớn ảnh quét, và cho phép trưởng bộ phận quyết định bộ sưu tập nào được số hóa trước.

Sau hai quý, chi phí đơn vị giảm và hóa đơn dự đoán được. Không phải mọi thứ đều suôn sẻ. Một thay đổi cắt chi phí với chỉ mục tìm kiếm làm giảm tốc độ vào giờ cao điểm, và người dùng phàn nàn cho đến khi nhóm khôi phục năng lực. Phòng tài chính cũng muốn mua một cam kết một năm với nhà cung cấp, trong khi các kỹ sư không chắc mức dùng sẽ ổn định, vì một cuộc di chuyển đã được lên kế hoạch. Họ thống nhất chỉ cam kết cho phần mức dùng ổn định, và rà soát cam kết khi kế hoạch di chuyển rõ ràng.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối đưa ra phần lớn quyết định chi phí qua thiết kế và cấu hình. Hãy gắn thẻ cho những gì bạn tạo, theo dõi chi phí của bạn và hỏi một tính năng sẽ tốn bao nhiêu để vận hành. Giải thích các yếu tố thúc đẩy chi phí cho tài chính và doanh nghiệp bằng lời đơn giản.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thấy mức sử dụng và lãng phí. Hãy chia sẻ dữ liệu về nguồn lực nhàn rỗi và quá cỡ, giúp đặt cảnh báo hợp lý, và bảo đảm tiết kiệm chi phí không làm suy yếu khả năng chống chịu. Giữ mối liên hệ giữa chi phí, năng lực và mức dịch vụ nhìn thấy được.

### Lãnh đạo và quản trị

Lãnh đạo và tài chính đặt ngân sách, quy tắc và trách nhiệm giải trình. Hãy yêu cầu chi phí đơn vị và xu hướng, ủng hộ một mô hình showback hoặc chargeback mà mọi người tin cậy, và đưa ra quyết định về cam kết cùng các kỹ sư. Tránh những cắt giảm gây hại cho độ tin cậy mà không bàn đánh đổi.

### Khách hàng và người dùng

Khách hàng và người dùng trả tiền cho dịch vụ trực tiếp hoặc gián tiếp. Hãy hỏi nhà cung cấp điều gì quyết định giá của các dịch vụ bạn dùng, và nói với họ giá trị nào quan trọng nhất. Nếu bạn bị tính phí lại, hãy mong những giải thích rõ ràng và một cách để đặt câu hỏi về các con số.

## Các kiểu thất bại thường gặp

- **Chi phí không gắn thẻ.** Không ai sở hữu hóa đơn. Thay vào đó, yêu cầu thẻ và báo cáo khoảng trống.
- **Tài chính và kỹ thuật ở các phòng riêng.** Mỗi bên hành động dựa trên thông tin một phần. Thay vào đó, tổ chức rà soát chung định kỳ với một chủ sở hữu kinh doanh.
- **Chargeback trước khi dữ liệu được tin cậy.** Tranh chấp ngốn thời gian. Thay vào đó, bắt đầu với showback và cải thiện dữ liệu.
- **Tổng mà không có chi phí đơn vị.** Tăng trưởng trông như lãng phí hoặc ngược lại. Thay vào đó, theo dõi chi phí theo giao dịch, người dùng hay dịch vụ.
- **Cắt chi phí đánh đổi khả năng chống chịu.** Tiết kiệm gây ra ngừng hoạt động. Thay vào đó, nêu sự đánh đổi và lôi kéo chủ sở hữu dịch vụ.
- **Cam kết quá mức.** Mua dài hạn khóa chặt chi tiêu mà mức dùng không thể đỡ. Thay vào đó, chỉ cam kết cho mức dùng ổn định và rà soát.
- **Chỉ kiểm soát trung tâm.** Các nhóm chờ phê duyệt và đi vòng quy trình. Thay vào đó, cho các nhóm thẩm quyền trong giới hạn, kèm khả năng nhìn thấy.
- **Trích dẫn số liệu khảo sát như sự thật.** Con số từ khảo sát của nhà cung cấp dẫn dắt quyết định. Thay vào đó, kiểm tra nguồn gốc và dùng dữ liệu của chính bạn.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Khả năng nhìn thấy và quy chi phí | Chi phí chỉ thấy dưới dạng tổng hóa đơn | Một số nhóm thấy chi phí của mình | Hầu hết chi tiêu được gắn thẻ và quy cho dịch vụ và chủ sở hữu | Chi phí đơn vị và xu hướng được rà soát theo nhu cầu và chất lượng | Dữ liệu chi phí được chia sẻ giữa các nhóm, nhà cung cấp và tài chính theo một định dạng chung |
| Quản trị và ngân sách | Ngân sách hằng năm và cố định | Có một số ngân sách và cảnh báo | Ngân sách, cảnh báo và giới hạn phê duyệt là chuẩn | Chênh lệch được điều tra và quy tắc được tinh chỉnh | Quy tắc ngân sách được căn chỉnh trong toàn tổ chức và với đối tác |
| Cộng tác | Tài chính và kỹ thuật gặp nhau vào lúc lập ngân sách | Có một số cuộc trò chuyện chung | Một buổi rà soát chung định kỳ với chủ sở hữu kinh doanh | Quyết định và kết quả được theo dõi và cải thiện | Tài chính, kỹ thuật, kinh doanh và nhà cung cấp chia sẻ mục tiêu và dữ liệu |
| Tối ưu hóa | Tiết kiệm đến từ khủng hoảng | Một số lãng phí được tìm thấy | Lãng phí, kích cỡ và cam kết được rà soát đều đặn | Tiết kiệm được đo so với rủi ro cho độ tin cậy | Tối ưu hóa là thường quy, được chia sẻ và cân bằng với mục tiêu dịch vụ |

## Danh mục kiểm tra

- [ ] Chúng ta nêu được chi phí hằng tháng của từng dịch vụ chính và ai sở hữu nó.
- [ ] Nguồn lực đám mây mang thẻ chủ sở hữu, dịch vụ và môi trường, và chi tiêu chưa gắn thẻ được báo cáo hằng tuần hoặc hằng tháng.
- [ ] Các nhóm nhận một báo cáo chi phí định kỳ cho các dịch vụ họ sở hữu (showback).
- [ ] Chúng ta theo dõi ít nhất một chi phí đơn vị cho mỗi dịch vụ chính.
- [ ] Ngân sách và cảnh báo tồn tại với chủ sở hữu, và cảnh báo nổ từ rất sớm trước giới hạn.
- [ ] Tài chính, kỹ thuật và một chủ sở hữu kinh doanh gặp nhau định kỳ về chi phí và giá trị.
- [ ] Chúng ta rà soát nguồn lực và gói thuê bao không dùng và quá cỡ ít nhất hằng quý.
- [ ] Việc cắt chi phí được rà soát về tác động lên độ tin cậy và hiệu năng.
- [ ] Cam kết mua dựa trên mức dùng ổn định và được rà soát.
- [ ] Chúng ta đã đối chiếu số liệu từ khảo sát của nhà cung cấp với nguồn gốc trước khi dùng chúng.

## Lời nhắc AI

**Mục đích: phân tích một báo cáo chi phí tìm chi tiêu không có chủ và bất thường.**

```text
Here is a cost report for the last [period], grouped by account, service, and tag: [paste real data; remove sensitive details].

Using only this data, calculate: total cost, the share with no owner tag, the five largest cost items and their share of total, and any item whose cost changed by more than [threshold you choose, e.g. 25%] from the previous period if I included it. For each unusual item, suggest a question for its owner. Do not guess at causes or invent numbers. List what you are unsure of.
```

**Mục đích: định nghĩa một chi phí đơn vị cho một dịch vụ.**

```text
Help me define a unit cost for [service].

What the service does: [describe].
What the business cares about (transactions, users, searches, documents): [describe].
Cost data we have: [describe sources and how they are grouped].
Demand data we have: [describe].

Propose two or three candidate unit costs, how to calculate each from the data I listed, what could distort them, and what decisions each would help. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị cho một buổi rà soát chung giữa kỹ thuật và tài chính.**

```text
Plan a 45-minute monthly review between engineering, finance, and a business owner about the cost of [service or portfolio].

Inputs: [cost report, unit cost, budget status, forecast; describe what you have].
Concerns on each side: engineering [list]; finance [list]; business [list].

Provide a timed agenda, five questions for each group, a one-page summary template with only the figures I supply, and a closing step that records decisions and owners. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: cân nhắc một đề xuất tiết kiệm chi phí với độ tin cậy.**

```text
We are considering this cost-saving change: [describe].
Expected saving, with source: [paste, or write "not estimated"].
What the service promises to users (service levels): [paste].
Current performance against those promises: [paste].
Known dependencies: [list].

List the ways the change could affect availability, performance, recovery, and security, as questions for the service owner. Suggest a small trial, what to monitor, and what would make us reverse it. Do not invent estimates. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): dùng để dự báo chi tiêu CNTT và đám mây và giải thích chênh lệch.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): dùng để ước lượng tải tương lai để dự báo chi phí phản ánh nhu cầu.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): dùng để nối nhu cầu nguồn lực với chi phí và với mức dịch vụ.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng để quản lý hợp đồng và cam kết với nhà cung cấp.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): dùng để chọn và cấp vốn cho dịch vụ và sáng kiến theo giá trị và chi phí.

## Nguồn chính

- **What is FinOps?** (FinOps Foundation, finops.org): định nghĩa riêng của Foundation và mô tả về sự cộng tác giữa các nhóm kỹ thuật, tài chính và kinh doanh.
- **Cloud computing** (Wikipedia): bối cảnh về các mô hình giá, kiểm soát chi phí và trách nhiệm chia sẻ, kèm thông báo về văn bản chưa xác minh.
- **Total cost of ownership** (Wikipedia): bối cảnh về việc đếm mọi chi phí của một tài sản hay dịch vụ trong vòng đời.
- **Software as a service** (Wikipedia): bối cảnh về giá thuê bao.

## Tài liệu tham khảo

1. What is FinOps? — FinOps Foundation, finops.org — https://www.finops.org/introduction/what-is-finops/
2. Cloud computing — Wikipedia — https://en.wikipedia.org/wiki/Cloud_computing
3. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
4. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
5. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
6. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
7. Operating expense — Wikipedia — https://en.wikipedia.org/wiki/Operating_expense
8. Capital expenditure — Wikipedia — https://en.wikipedia.org/wiki/Capital_expenditure
9. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
