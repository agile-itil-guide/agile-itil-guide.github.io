# Giám sát và quản lý sự kiện

**Giám sát cho bạn biết một dịch vụ có hoạt động theo cách người dùng trải nghiệm hay không, và quản lý sự kiện tốt biến một cơn lũ tín hiệu thành một số ít cảnh báo mà con người có thể hiểu và hành động.**

## Vì sao điều này quan trọng

Một dịch vụ bạn không thấy là một dịch vụ bạn không vận hành được. Không có giám sát, một nhóm biết về lỗi từ người dùng, và biết về sự suy thoái chậm từ không ai. Với giám sát kém thì vấn đề ngược lại: quá nhiều cảnh báo đến mức kỹ sư trực thôi tin chúng, và cái thực sự quan trọng bị lạc trong nhiễu. Cả hai thái cực đều tốn giấc ngủ, lòng tin và thời gian.

Giám sát và quản lý sự kiện cũng quyết định một sự cố được tìm và sửa nhanh đến đâu. Mọi thứ trong quản lý sự cố phụ thuộc vào việc biết có điều gì sai nhanh chóng và có đủ thông tin để tìm ra vì sao (xem Chủ đề 3.2 — Quản lý sự cố). Các nhóm agile phát hành thường xuyên cần điều này còn nhiều hơn, vì mỗi bản phát hành là một cơ hội làm hỏng thứ gì đó và mỗi quyết định hoàn tác phụ thuộc vào việc thấy tác động.

Cuốn *Site Reliability Engineering* của Google có hai chương đề cập trực tiếp chủ đề này: "Monitoring Distributed Systems" và "Practical Alerting from Time-Series Data". Chúng mô tả thực hành của một tổ chức và lập luận cho một cách tiếp cận cố ý đơn giản, hướng người dùng. Chủ đề này dùng chúng làm nguồn chính, vì các bài viết Wikipedia đã tham khảo cho cuốn sách này đưa rất ít về thực hành. Từ vựng ITIL ở đây, như sự kiện, cảnh báo và quản lý sự kiện, rút từ các mô tả được xuất bản rộng rãi mà cuốn sách này không thể đối chiếu với văn bản của chủ sở hữu khung. Hãy đọc các chương SRE như một lựa chọn được giải thích rõ.

## Các khái niệm cốt lõi

### Giám sát

Chương SRE định nghĩa **giám sát** là việc thu thập, xử lý và hiển thị dữ liệu định lượng thời gian thực về một hệ thống. Nó nói giám sát hỗ trợ phân tích xu hướng dài hạn, so sánh giữa các thí nghiệm, cảnh báo, bảng điều khiển và gỡ lỗi tùy biến sau sự việc. Nó nhấn mạnh rằng giám sát là một nỗ lực kỹ thuật đáng kể và các nhóm thường giao ít nhất một người cho nó.

### Sự kiện, cảnh báo và sự cố

Trong cách dùng ITSM, một **sự kiện** là một thay đổi trạng thái có ý nghĩa với việc quản lý một dịch vụ. Hầu hết sự kiện mang tính thông tin. Một số chỉ ra một cảnh báo hoặc một ngoại lệ. Một **cảnh báo** là, như chương SRE nói, một thông báo cho con người, được gửi dưới dạng ticket, email hay page (lần gọi trực). Một **sự cố** là một sự gián đoạn ngoài kế hoạch hoặc suy giảm chất lượng (xem Chủ đề 3.2 — Quản lý sự cố). Quản lý sự kiện là thực hành quyết định sự kiện nào quan trọng, làm gì với chúng và ai nên được báo. Dòng chảy là sự kiện đến cảnh báo đến, đôi khi, sự cố.

### Giám sát hộp đen và hộp trắng

Chương phân biệt hai loại:

| Loại | Nó làm gì | Điểm mạnh |
|---|---|---|
| **Hộp đen** | Kiểm tra hành vi nhìn thấy từ bên ngoài, như một người dùng sẽ thấy | Phát hiện các vấn đề đang xảy ra; phù hợp để gọi trực |
| **Hộp trắng** | Dùng các chỉ số do phần bên trong của hệ thống cung cấp, như log hay các handler nội bộ | Cho thấy các vấn đề sắp xảy ra và các lỗi bị che bởi việc thử lại; thiết yếu cho gỡ lỗi |

Cuốn sách kết hợp cả hai. Một đầu dò hộp đen cho bạn biết thanh toán đang lỗi; dữ liệu hộp trắng giúp bạn tìm ra vì sao.

### Triệu chứng và nguyên nhân

Chương nói giám sát nên trả lời hai câu hỏi: cái gì hỏng, và vì sao. Nó khuyên tập trung cảnh báo vào triệu chứng, tức điều người dùng trải nghiệm, và chỉ gọi trực theo nguyên nhân khi chúng chắc chắn và sắp xảy ra. Một máy đơn lẻ hỏng, theo lời chương cảnh báo, là điều không chấp nhận được để phải cảnh báo, vì nó quá nhiễu. Đây là cốt lõi của một cách tiếp cận cảnh báo tốt: báo cho con người khi người dùng đang hoặc sẽ bị tổn hại, không phải mỗi khi một bộ phận giật mình.

### Bốn tín hiệu vàng

Chương đề xuất bốn tín hiệu cần theo dõi cho một hệ thống hướng người dùng:

- **Độ trễ:** thời gian phục vụ một yêu cầu. Theo dõi các yêu cầu thất bại riêng, vì "một lỗi chậm còn tệ hơn một lỗi nhanh."
- **Lưu lượng:** nhu cầu đặt lên hệ thống.
- **Lỗi:** các yêu cầu thất bại, dù tường minh, ngầm hay theo chính sách.
- **Bão hòa:** dịch vụ "đầy" đến đâu. Hiệu năng thường giảm trước khi đạt 100% mức sử dụng.

Chúng khớp tự nhiên với các chỉ báo mức dịch vụ (xem Chủ đề 3.7 — Quản lý mức dịch vụ). Chương cũng cảnh báo rằng trung bình che giấu các giá trị ngoại lai chậm và gợi ý ghi số lượng yêu cầu vào các nhóm độ trễ để thấy phân bố.

### Điều gì làm nên một cảnh báo tốt

Chương đưa ra các câu hỏi cần hỏi trước khi viết một cảnh báo: nó có phát hiện một điều kiện khẩn, có thể hành động và người dùng thấy được không; nó có thể bị bỏ qua an toàn không; và phản hồi có thể được tự động hóa không? Các page nên có thể hành động, cần phán đoán và liên quan đến các vấn đề mới. Nó nói cảnh báo không bao giờ nên nổ chỉ vì "có vẻ hơi lạ." Các page có phản hồi máy móc, theo thuật toán, theo quan điểm của nó, là một cờ đỏ đòi hỏi tự động hóa hoặc sửa nguyên nhân gốc.

### Định tuyến cảnh báo

Chương cảnh báo mô tả gửi các cảnh báo đáng gọi trực đến nhân viên trực, các cảnh báo dưới mức nghiêm trọng đến hàng đợi ticket, và phần còn lại đến các bảng trạng thái. Nó mô tả công cụ để định tuyến, loại trùng và ức chế cảnh báo, và lưu ý rằng cảnh báo nên chờ một khoảng tối thiểu trước khi nổ vì chúng có thể chập chờn. Nó cảnh báo rằng "bạn chỉ có thể cảnh báo về những lỗi mà bạn đã lường trước", đó là vì sao việc kết hợp đầu dò hộp đen với dữ liệu hộp trắng quan trọng.

### Giữ đơn giản

Chương lập luận cho các hệ thống đơn giản, nhanh hơn là "phép màu" tự học ngưỡng hoặc phát hiện quan hệ nhân quả, và lưu ý rằng các cây phụ thuộc phức tạp chỉ thành công hạn chế. Nó nói hãy giữ đơn giản các quy tắc bắt sự cố thật, bỏ các cảnh báo hiếm khi được dùng và các tín hiệu không dùng, và giữ chi phí bảo trì tăng chậm hơn quy mô dịch vụ. Các trường hợp nó mô tả, như một nhóm bị ngập trong cảnh báo đã tạm thời nới mục tiêu của mình và tắt cảnh báo email để dành thời gian cho các bản sửa lâu dài, cho thấy sự sẵn lòng loại bỏ nhiễu.

### Bảng điều khiển và góc nhìn dài hạn

Chương coi bảng điều khiển là các góc nhìn tóm tắt dựng sẵn về các chỉ số chính của một dịch vụ và nói bảng điều khiển tốt hơn cảnh báo email, mà nó gọi là có giá trị rất hạn chế. Nó cũng khuyến nghị rà soát tần suất page theo thời gian, chẳng hạn trong các báo cáo hằng quý, để giữ lãnh đạo nắm tải trực. Điều này biến chất lượng cảnh báo thành thứ các quản lý thấy được (xem Chủ đề 1.2 — Các nguyên tắc Agile về nhịp độ bền vững).

### Giới hạn của các nguồn

Các chương SRE không đưa ngưỡng ngoài một ví dụ làm sẵn, không bàn về runbook hay giới hạn tải trực, và không mô tả cách rà soát và cho ngừng cảnh báo theo thời gian, nên đó là việc của thực hành riêng của bạn. Chúng đến từ một tổ chức lớn với nguồn lực kỹ thuật mạnh. Các nhóm nhỏ hơn có thể áp dụng các nguyên tắc với công cụ đơn giản hơn.

## Thực hành tốt

1. **Giám sát điều người dùng trải nghiệm.** Thêm ít nhất một đầu dò hộp đen thực hiện một hành động người dùng thật, như đăng nhập hay đặt hàng, và cảnh báo khi nó thất bại.
2. **Theo dõi bốn tín hiệu vàng.** Với mỗi dịch vụ, theo dõi độ trễ, lưu lượng, lỗi và bão hòa. Chỉ thêm các thước đo khác nếu chúng trả lời một câu hỏi bạn đã đặt ra.
3. **Cảnh báo theo triệu chứng.** Gọi trực khi người dùng bị tổn hại hoặc sắp bị. Coi các điều kiện nội bộ, như một máy đơn lẻ hỏng, là thông tin ưu tiên thấp trừ khi chúng chắc chắn và sắp xảy ra.
4. **Làm mọi page có thể hành động.** Trước khi tạo một cảnh báo, viết người ứng phó nên làm gì. Nếu không có gì để làm, nó không phải là một page.
5. **Định tuyến theo độ khẩn.** Gửi cảnh báo khẩn đến người trực, cảnh báo ít khẩn hơn đến hàng đợi ticket và thông tin đến bảng điều khiển. Đừng gửi cảnh báo email cho những người sẽ bỏ qua chúng.
6. **Dùng phân bố, không chỉ trung bình.** Xem phân vị cao cho độ trễ, hoặc các nhóm, để các giá trị ngoại lai chậm nhìn thấy được.
7. **Đặt một khoảng tối thiểu.** Yêu cầu một điều kiện kéo dài một lúc ngắn trước khi cảnh báo, để tránh chập chờn. Tinh chỉnh khoảng đó bằng dữ liệu thật.
8. **Cho ngừng cảnh báo gây nhiễu.** Rà soát cảnh báo nào nổ nhiều nhất và không dẫn đến hành động. Bỏ hoặc sửa chúng. Chương SRE coi phản hồi máy móc là tín hiệu cho tự động hóa hoặc sửa chữa.
9. **Kiểm thử giám sát của bạn.** Cố ý làm hỏng thứ gì đó trong môi trường kiểm thử và kiểm tra rằng cảnh báo đúng nổ lên. Đưa cả hệ thống giám sát vào các kiểm tra, để lỗi của nó được nhận ra.
10. **Rà soát tải trực.** Đếm số page mỗi ca, các gián đoạn ngoài giờ và báo động giả mỗi quý. Chia sẻ kết quả với các quản lý và dùng chúng trong lập kế hoạch.
11. **Giữ giám sát trong định nghĩa hoàn thành.** Với mỗi tính năng mới, hỏi tín hiệu nào cho thấy nó có hoạt động không và nó cần cảnh báo nào, nếu có (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).
12. **Giữ đơn giản.** Ưu tiên vài quy tắc dễ hiểu hơn một sơ đồ phức tạp. Bỏ các tín hiệu không dùng và rà soát quy tắc sau các sự cố.

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta phát hiện ra ba sự cố gần nhất bằng cách nào?**

Liệt kê từng sự cố và nó được nhận ra lần đầu thế nào: một cảnh báo, một người dùng, một đồng nghiệp. Nếu phần lớn đến từ người dùng, giám sát đang bỏ sót các triệu chứng quan trọng. Người điều phối có thể hỏi một đầu dò sẽ cho thấy gì. Chọn một hành động người dùng để giám sát trước.

**Chúng ta bỏ qua cảnh báo nào, và vì sao?**

Hỏi các kỹ sư trực về các cảnh báo họ tắt hoặc bỏ qua. Mỗi cái là một ứng viên để sửa hoặc xóa. Hỏi điều gì làm mọi người tin hay không tin một cảnh báo. Một câu trả lời thẳng thắn thường cho thấy các cảnh báo nổ trên những điều kiện không ai hành động được. Thống nhất cho ngừng hoặc sửa ba cái.

**Đêm trực tồi tệ nhất của chúng ta là gì, và điều gì sẽ làm nó tốt hơn?**

Thu thập các câu chuyện không đổ lỗi. Tìm các mẫu hình: page lặp lại, cảnh báo không rõ, thiếu runbook, không có chuyển lên cấp trên. Mỗi mẫu hình là một cải tiến. Hỏi hai thay đổi nào sẽ giúp nhiều nhất. Mục đích là tải nhẹ hơn và tín hiệu rõ hơn.

**Nếu hệ thống giám sát của chúng ta hỏng, làm sao chúng ta biết?**

Hỏi ai canh người canh. Nhiều nhóm không có kiểm tra nào rằng giám sát đang hoạt động. Bàn một nhịp tim đơn giản hoặc một đầu dò từ một hệ thống riêng. Thống nhất một kiểm tra để thêm.

**Bảng điều khiển của chúng ta cho thấy gì, và ai nhìn chúng?**

Liệt kê các bảng điều khiển và hỏi ai dùng từng cái trong tháng qua. Bảng điều khiển không dùng là rác; những bảng hữu ích kể một câu chuyện về dịch vụ. Hỏi mỗi bảng trả lời câu hỏi nào. Giữ một tập nhỏ trả lời các câu hỏi thật.

**Làm sao chúng ta biết một bản phát hành đã làm mọi thứ tệ đi?**

Chọn một bản phát hành gần đây và hỏi tín hiệu nào sẽ cho thấy vấn đề. Nếu câu trả lời là "chúng tôi sẽ nghe từ người dùng", hãy bàn nên theo dõi tín hiệu nào sau một bản phát hành và ai chịu trách nhiệm. Câu hỏi này nối giám sát với triển khai. Viết một danh mục kiểm tra sau phát hành ngắn.

## Trong thực tế: một ví dụ agile ITIL

Cơ quan giao thông công cộng của một thành phố vận hành một website và ứng dụng lập hành trình mà 400.000 người dùng mỗi ngày. Một nhóm nền tảng mười người sở hữu dịch vụ với lịch trực bốn người. Nhóm có hàng trăm cảnh báo: CPU trên mọi máy chủ, dung lượng đĩa, độ dài hàng đợi và số lỗi. Các kỹ sư trực nhận 40 page trong một tuần điển hình, phần lớn ngoài giờ làm việc, và hai sự cố trong quý vừa qua được người dùng báo đầu tiên trên mạng xã hội.

Trưởng nhóm và một kỹ sư rà soát ba tháng page. Họ thấy ba phần tư là về các điều kiện không cần hành động hoặc tự giải quyết. Họ thống nhất theo một cách tiếp cận đơn giản từ cuốn SRE: cảnh báo theo điều người dùng trải nghiệm. Họ thêm một đầu dò lập một hành trình chuẩn mỗi phút và đo thành công và tốc độ, và giữ một tập nhỏ cảnh báo về bão hòa của cơ sở dữ liệu và hàng đợi. Họ chuyển phần còn lại sang một bảng điều khiển và một ticket hằng ngày. Mỗi page còn lại có một mục runbook ngắn nói cần kiểm tra gì.

Sau một tháng, page giảm xuống còn khoảng năm mỗi tuần, và hai sự cố tiếp theo đều được đầu dò phát hiện trước khi người dùng phàn nàn. Một số vấn đề vẫn còn. Đầu dò chỉ bao phủ một loại hành trình, và một lỗi ảnh hưởng đến các hành trình bằng xe đạp không được nhận ra trong một ngày. Một kỹ sư cũng báo rằng quyết định "chuyển sang bảng điều khiển" đã che giấu một vấn đề đĩa chậm sau đó gây ra một lỗi. Nhóm thêm đầu dò cho các loại hành trình khác, thêm một lần xem bảng điều khiển hằng ngày vào lịch trực, và thống nhất rà soát tải trực mỗi quý.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối biết phần mềm được dự định làm gì và nó dễ hỏng ở đâu. Hãy xây các tín hiệu vào mã: log hữu ích, chỉ số và kiểm tra sức khỏe. Định nghĩa đầu dò cho các hành động người dùng chính, và coi giám sát là một phần của hoàn thành. Tham gia các buổi rà soát cảnh báo để các page phản ánh vấn đề thật.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành mang chiếc pager và các bảng điều khiển. Giữ cảnh báo ít và có thể hành động, định tuyến theo độ khẩn và theo dõi tải trực. Đẩy các cảnh báo nhiễu về cho các nhóm sở hữu chúng, kèm bằng chứng, và chia sẻ điều bạn học từ sự cố về những gì cần theo dõi.

### Lãnh đạo và quản trị

Lãnh đạo nên hỏi tải trực và dữ liệu phát hiện sự cố, không phải thêm cảnh báo. Ủng hộ thời gian để cho ngừng nhiễu và thêm các tín hiệu hữu ích. Coi số page ngoài giờ tăng lên là rủi ro cho dịch vụ và cho con người.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi khi vấn đề được tìm ra trước khi họ nhận thấy. Hãy báo vấn đề kèm chi tiết, như bạn đã thử gì và khi nào, vì điều đó giúp tinh chỉnh giám sát. Hãy hỏi nhà cung cấp họ phát hiện lỗi thế nào và nhanh đến đâu, và họ có công bố thông tin trạng thái không.

## Các kiểu thất bại thường gặp

- **Cảnh báo mọi thứ.** Pager liên tục kêu và lòng tin mất đi. Thay vào đó, gọi trực theo triệu chứng và gửi phần còn lại đến ticket hoặc bảng điều khiển.
- **Giám sát hệ thống, không phải người dùng.** Mọi máy đều xanh trong khi người dùng không đăng nhập được. Thay vào đó, thêm đầu dò hộp đen cho các hành động người dùng thật.
- **Không gắn hành động.** Page đến mà không có gì để làm. Thay vào đó, yêu cầu mỗi page có một phản hồi được mô tả, hoặc bỏ nó.
- **Chỉ có trung bình.** Một nhóm người dùng chịu khổ trong khi giá trị trung bình trông ổn. Thay vào đó, xem phân vị cao hoặc phân bố.
- **Quy tắc phức tạp, tinh vi.** Ngưỡng học được và cây phụ thuộc làm người ứng phó rối. Thay vào đó, ưu tiên quy tắc đơn giản, dễ hiểu.
- **Giám sát không ai canh.** Hệ thống giám sát hỏng trong im lặng. Thay vào đó, kiểm tra nó bằng nhịp tim và kiểm thử.
- **Phản hồi máy móc.** Mọi người lặp lại cùng một bản sửa sau mỗi page. Thay vào đó, tự động hóa phản hồi hoặc sửa nguyên nhân.
- **Bỏ qua tải trực.** Page ban đêm bị coi là bình thường. Thay vào đó, đo và rà soát chúng, và coi tải cao là rủi ro.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Khả năng thấy trải nghiệm người dùng | Người dùng báo hầu hết vấn đề | Một số dịch vụ có đầu dò hoặc chỉ số cho hành động người dùng | Các hành động người dùng chính được dò và các tín hiệu vàng được theo dõi cho mọi dịch vụ | Thời gian phát hiện và phạm vi được đo và khoảng trống được sửa | Giám sát được chia sẻ giữa các nhóm, nhà cung cấp và khách hàng |
| Chất lượng cảnh báo | Nhiều cảnh báo, ít hành động | Một số nhóm cắt tỉa cảnh báo | Page dựa trên triệu chứng, có thể hành động và được định tuyến theo độ khẩn | Độ chính xác và nhiễu của cảnh báo được đo và rà soát | Thiết kế cảnh báo được cải thiện giữa các nhóm từ bằng chứng chung |
| Phản hồi và tự động hóa | Phản hồi được ứng biến | Có một số runbook | Page liên kết đến runbook, và phản hồi máy móc được tự động hóa | Thời gian phản hồi và việc dùng tự động hóa được đo | Phản hồi được điều phối giữa các nhóm và nhà cung cấp |
| Con người và tải | Tải trực không được theo dõi | Một số nhóm đếm page | Tải trực được rà soát mỗi quý | Tải được cân bằng và giảm từ dữ liệu | Tải và việc học được chia sẻ giữa các nhóm và phản ánh trong lập kế hoạch |

## Danh mục kiểm tra

- [ ] Mỗi dịch vụ quan trọng có ít nhất một đầu dò cho một hành động người dùng thật.
- [ ] Chúng ta theo dõi độ trễ, lưu lượng, lỗi và bão hòa cho mỗi dịch vụ.
- [ ] Mỗi page có phản hồi được viết ra và liên quan đến một điều kiện người dùng thấy được hoặc sắp xảy ra.
- [ ] Cảnh báo được định tuyến theo độ khẩn đến người trực, ticket hoặc bảng điều khiển.
- [ ] Phân vị cao hoặc phân bố của độ trễ nhìn thấy được.
- [ ] Chúng ta rà soát cảnh báo nào nổ nhiều nhất và cho ngừng những cái không dẫn đến hành động.
- [ ] Chính hệ thống giám sát được kiểm tra.
- [ ] Tải trực (số page mỗi ca, gián đoạn ngoài giờ) được rà soát mỗi quý.
- [ ] Tính năng mới gồm giám sát trong định nghĩa hoàn thành của chúng.
- [ ] Sau mỗi bản phát hành, ai đó kiểm tra các tín hiệu theo một danh sách ngắn.

## Lời nhắc AI

**Mục đích: rà soát một danh sách cảnh báo về nhiễu và khả năng hành động.**

```text
Here is a list of our alerts with how often each fired in the last [period], and what happened after (acted on, ignored, resolved by itself): [paste as a table; use real data].

Using only my data, group the alerts into: fired often with no action; fired and led to action; rarely fired. For each of the first group, suggest a question to ask its owner (for example whether it can be removed, routed to a ticket, or turned into a symptom-based alert). Do not invent frequencies or outcomes. Tell me what additional data would help, and list what you are unsure of.
```

**Mục đích: định nghĩa một đầu dò cho một hành trình người dùng.**

```text
Help me define a black-box probe for this user action in [service]: [describe, for example "a user searches for a journey and receives results"].

What counts as success: [describe].
What is too slow: [say "unknown" or describe in words, not numbers].
What systems the action touches: [list].

Describe the steps the probe should perform, what it should record (success, time taken, and where it failed), what alert condition to propose (leave thresholds as [to be agreed]), and what a responder would check first. Mark assumptions. Do not invent system details. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: viết phần phản hồi cho một cảnh báo.**

```text
For this alert, write a short response entry for on-call staff.

Alert name and condition: [paste].
What it means for users: [describe].
What I know to check first: [list].
Who to escalate to: [role, or write "unknown"].

Write: what the alert means, the first three checks, how to tell whether users are affected, when to escalate, and a note on whether the response could be automated. Use only my information; mark anything you added as [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị một buổi rà soát tải trực hằng quý.**

```text
Help me prepare a quarterly pager load review for [team].

Data for the quarter (pages by week, out-of-hours pages, pages with no action, incidents detected by monitoring versus by users): [paste real figures].
Context: [describe changes in the period].

Summarize the data in plain language, using only my figures. Highlight trends and outliers as questions, not conclusions. Suggest three questions for the team and one for management. Do not invent causes. If the data is incomplete, say what to collect. List what you are unsure of.
```

## Kỹ năng AI

- [runbook](../../../../skills/runbook/SKILL.md): dùng để viết phản hồi đi kèm với mỗi page.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): dùng để thiết kế một lịch trực công bằng và lập kế hoạch cách tải trực được chia sẻ và rà soát.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): dùng để chọn và diễn giải các thước đo về hiệu suất dịch vụ và giao hàng.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): dùng để kiểm tra độ trễ và bão hòa dưới tải trước khi vấn đề đến người dùng.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): dùng để kiểm tra rằng các lỗi được phát hiện và xử lý bằng cách cố ý gây ra chúng trong một môi trường an toàn.

## Nguồn chính

- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): các định nghĩa, bốn tín hiệu vàng, triệu chứng so với nguyên nhân và lời khuyên về cảnh báo đơn giản.
- **Practical Alerting from Time-Series Data** (*Site Reliability Engineering*, Google, sre.google): quy tắc cảnh báo, định tuyến và chập chờn hoạt động thế nào trong thực tế.
- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): mối liên hệ giữa chỉ báo, mục tiêu và cảnh báo.
- **IT service management** (Wikipedia): vị trí của giám sát và sự cố trong ITSM.

## Tài liệu tham khảo

1. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
2. Practical Alerting from Time-Series Data — Google SRE book, sre.google — https://sre.google/sre-book/practical-alerting/
3. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Network monitoring — Wikipedia — https://en.wikipedia.org/wiki/Network_monitoring
6. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Alarm fatigue — Wikipedia — https://en.wikipedia.org/wiki/Alarm_fatigue
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
