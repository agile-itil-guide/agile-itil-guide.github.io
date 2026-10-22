# Quản lý tài sản phần cứng

**Quản lý tài sản phần cứng theo dõi thiết bị vật lý từ lúc mua đến lúc thanh lý, và các rủi ro âm thầm của nó là thiết bị không ai biết, thiết bị bị giữ quá lâu và thiết bị rời đi mà dữ liệu vẫn còn trên đó.**

## Vì sao điều này quan trọng

Phần cứng vẫn quan trọng trong một thế giới ưu tiên đám mây. Con người làm việc trên laptop, điện thoại và máy tính bảng. Mạng chạy trên switch và điểm truy cập. Nhiều tổ chức giữ máy chủ, lưu trữ và thiết bị chuyên dụng tại chỗ. Khi một laptop bị mất, một máy chủ hết bảo hành hoặc một lô thiết bị cần thay, các câu hỏi vẫn như nhau: chúng ta có gì, nó ở đâu, ai giữ, nó đáng giá bao nhiêu và nó chứa gì?

Quản lý phần cứng kém hiện ra theo những cách quen thuộc. Nhân viên chờ thiết bị vì không ai biết trong kho có gì. Thiết bị cũ ở lại dịch vụ vì không ai có dữ liệu để biện minh cho việc thay, rồi hỏng vào lúc không đúng chỗ. Thiết bị bị vứt đi mà dữ liệu vẫn còn trên đó. Các yêu cầu bảo hành bị bỏ lỡ. Với một nhóm agile, hậu quả là việc đón người mới chậm, bản phát hành hỏng trên phần cứng kiểm thử không được bảo trì, và các điểm phơi bày về an ninh mà không pipeline nào thấy.

[Phần của Wikipedia về quản lý tài sản CNTT](https://en.wikipedia.org/wiki/IT_asset_management), nằm trong bài về quản lý trung tâm dữ liệu, mô tả quản lý tài sản phần cứng bao gồm các thành phần máy tính và mạng vật lý từ lúc thu thập đến lúc thanh lý, với các thực hành yêu cầu và phê duyệt, mua sắm, quản lý vòng đời, tái triển khai và thanh lý, và nói rằng nắm bắt thông tin tài chính xuyên vòng đời là một thành phần then chốt. Nó ngắn. Chủ đề này thêm các bài về rác thải điện tử và xóa dữ liệu cho việc thanh lý, và hướng dẫn thực tế rút từ thực hành phổ biến, nói rõ khi làm vậy.

## Các khái niệm cốt lõi

### Phạm vi

Tài sản phần cứng gồm thiết bị người dùng cuối (laptop, máy tính để bàn, điện thoại, máy tính bảng), máy chủ và lưu trữ, thiết bị mạng, ngoại vi, và công nghệ chuyên dụng hoặc vận hành. Chúng cũng gồm các phụ kiện làm cho chúng dùng được. Với mỗi loại, tổ chức muốn biết những điều cơ bản: nó là gì, ai chịu trách nhiệm, nó ở đâu, nó tốn bao nhiêu và đang ở tình trạng nào.

### Vòng đời phần cứng

Phần của Wikipedia liệt kê yêu cầu và phê duyệt, mua sắm, quản lý vòng đời, tái triển khai và thanh lý. Một mở rộng thực tế, được dùng rộng rãi và được đưa ra ở đây như vậy:

| Giai đoạn | Câu hỏi cần trả lời | Bản ghi điển hình |
|---|---|---|
| **Yêu cầu và phê duyệt** | Cần gì và ai phê duyệt? | Yêu cầu, phê duyệt, mã ngân sách |
| **Mua sắm** | Chúng ta đã mua gì, từ ai, theo điều khoản nào? | Đơn hàng, hóa đơn, bảo hành, nhà cung cấp |
| **Nhận và chuẩn bị** | Nó đã đến chưa? Đã cấu hình và gắn thẻ chưa? | Số sê-ri, thẻ tài sản, cấu hình |
| **Giao và vận hành** | Ai giữ nó? Nó dùng cho việc gì? | Chủ sở hữu hoặc người dùng, vị trí, dịch vụ được hỗ trợ |
| **Bảo trì** | Tình trạng, bảo hành và trạng thái vá của nó thế nào? | Sửa chữa, ngày hết bảo hành, trạng thái firmware |
| **Tái triển khai** | Người khác có dùng được không? | Xóa, bản ghi gán lại |
| **Cho ngừng và thanh lý** | Dữ liệu đã được xóa chưa? Nó đã đi đâu? | Bằng chứng xóa, bản ghi thanh lý |

### Thông tin tài chính

Phần của Wikipedia nhấn mạnh việc nắm bắt thông tin tài chính về vòng đời phần cứng. Các dữ kiện hữu ích gồm chi phí mua, khấu hao, chi phí bảo hành và hỗ trợ, và chi phí giữ nó chạy. Chúng nuôi các quyết định thay thế và ngân sách (xem Chủ đề 4.5 — Quản lý tài chính CNTT và FinOps). Một thiết bị tốn kém để hỗ trợ hơn là thay là ứng viên để cho ngừng.

### Thay thế và làm mới

Các tổ chức thường thay thiết bị theo chu kỳ, như vài năm một lần cho laptop. Các nguồn đã đọc cho cuốn sách này không nêu khoảng thời gian khuyến nghị, và khoảng đúng phụ thuộc vào thiết bị, công việc và chi phí của việc hỏng. Một cách tiếp cận dựa trên dữ liệu xem tỷ lệ hỏng, chi phí hỗ trợ, hỗ trợ bảo mật và hiệu năng, và thay khi bằng chứng nói vậy. Một chu kỳ cố định dễ lập kế hoạch hơn, còn một chu kỳ dựa trên bằng chứng có thể tiết kiệm tiền hoặc tránh lỗi.

### An toàn dữ liệu ở cuối vòng đời

Thanh lý là nơi quản lý phần cứng gặp an toàn thông tin (xem Chủ đề 3.13 — Quản lý an toàn thông tin). Bài viết Wikipedia về xóa dữ liệu mô tả xóa dữ liệu là một phương pháp phần mềm ghi đè mọi sector của một ổ đĩa để dữ liệu lưu trữ không thể khôi phục; xóa tệp thông thường chỉ gỡ các con trỏ, và các công cụ phổ biến thường có thể khôi phục dữ liệu. Những điểm chính từ bài viết:

- **Ghi đè** để ổ đĩa vẫn dùng được. **Khử từ** và **phá hủy vật lý** làm phương tiện không dùng được và thêm vào rác thải điện tử.
- **Ổ cứng thể rắn và phương tiện flash** có thể giữ dữ liệu tồn dư mà việc xóa bỏ sót. Bài viết trích dẫn một nghiên cứu năm 2011 thấy các lệnh sanitize tích hợp hoạt động khi được triển khai đúng, trong khi các kỹ thuật phần mềm hoạt động phần lớn, nhưng không phải mọi lúc.
- **Mã hóa** cung cấp một con đường khác: hủy các khóa của một ổ tự mã hóa làm dữ liệu của nó không truy cập được.
- **Xác minh và chứng nhận:** phần mềm tốt nên xác minh rằng việc ghi đè đã chạm toàn bộ thiết bị, gồm các vùng ẩn, và cấp một chứng nhận xác thực và một nhật ký các sector không ghi đè được.
- **Tiêu chuẩn:** bài viết liệt kê nhiều tiêu chuẩn, gồm NIST Special Publication 800-88 (2006, sửa đổi năm 2014), mà nó trích dẫn là nói rằng một lượt ghi đè với một mẫu cố định như số không nhị phân thường cản trở việc khôi phục. Nó nêu rằng một lượt thường là đủ cho các ổ cứng hiện đại.

Bài viết được gắn thẻ cần trích dẫn và một số nhận định bị đánh dấu. Hãy kiểm tra các tiêu chuẩn mà ngành hay quốc gia của bạn yêu cầu và tình trạng kỹ thuật hiện nay cho thiết bị của bạn; đừng dựa vào tóm tắt Wikipedia cho một quyết định tuân thủ.

### Rác thải điện tử

Bài viết Wikipedia về rác thải điện tử định nghĩa nó là các thiết bị điện hoặc điện tử bị bỏ đi, gồm cả những thứ định để tái sử dụng, bán lại, tận dụng, tái chế hoặc thanh lý. Nó báo cáo khoảng 62 triệu tấn được tạo ra trên toàn cầu năm 2022, tăng 82 phần trăm so với 2010, chỉ 22,3 phần trăm được thu gom và tái chế chính thức theo một nghiên cứu năm 2024; nó cũng trích dẫn các con số khác mâu thuẫn, và mang các thẻ bảo trì cho nhận định chưa xác minh, nên hãy đối chiếu số liệu với nguồn gốc trước khi trích dẫn. Nó mô tả các mối nguy từ các vật liệu như chì, cadmium, thủy ngân và chất chống cháy, và từ việc xử lý phi chính thức, với ví dụ từ Guiyu ở Trung Quốc và Agbogbloshie ở Ghana. Nó lưu ý rằng Công ước Basel, được thông qua tháng 3 năm 1989, điều chỉnh việc di chuyển chất thải nguy hại xuyên biên giới, và rằng các đơn vị tái chế được chứng nhận theo các chương trình như R2 và E-Stewards phải hủy mọi dữ liệu lưu trên thiết bị điện tử. Tái sử dụng kéo dài vòng đời thiết bị và trì hoãn việc tái chế.

Với một tổ chức, các bài học mang tính thực tế: chọn đối tác thanh lý được chứng nhận và có thể cho thấy thiết bị đi đâu, ưu tiên tái sử dụng khi an toàn và giữ bản ghi. Luật về rác thải điện tử khác nhau theo quốc gia và khu vực; hãy hỏi bộ phận tuân thủ của bạn điều gì áp dụng.

### Phần cứng và quản lý dịch vụ

Bản ghi phần cứng nối với dịch vụ: switch này mang dịch vụ kia, máy chủ này lưu trữ ứng dụng nọ. Những liên kết đó biến sổ đăng ký tài sản thành công cụ cho ứng phó sự cố, lập kế hoạch thay đổi và đánh giá rủi ro (xem Chủ đề 4.4 — Quản lý cấu hình). Không có chúng, một thiết bị hỏng chỉ là một ticket; có chúng, nó là một phát biểu tác động.

### Agile và phần cứng

Các nhóm agile coi phần cứng là một ràng buộc để thiết kế quanh, không phải sự kiện chính. Đám mây và ảo hóa giảm tài sản vật lý, nhưng không về không. Thiết bị kiểm thử cho ứng dụng di động, build agent, thiết bị phòng thí nghiệm và thiết bị biên đều cần được theo dõi. Hãy coi chúng là tài sản có chủ sở hữu và vòng đời, và đừng để chúng trong tủ.

## Thực hành tốt

1. **Gắn thẻ và ghi mọi thiết bị quan trọng.** Gán một thẻ tài sản duy nhất hoặc bản ghi số sê-ri khi nhận, và ghi loại, chủ sở hữu, vị trí và trạng thái. Biến đây thành bước đầu tiên sau khi giao hàng.
2. **Nối thiết bị với con người và dịch vụ.** Ghi ai giữ từng thiết bị và nó hỗ trợ dịch vụ nào, và cập nhật khi di chuyển và thay đổi. Dùng quy trình người nghỉ việc để thu hồi thiết bị và gỡ quyền truy cập.
3. **Giữ dữ liệu tài chính cùng tài sản.** Ghi chi phí, bảo hành, điều khoản hỗ trợ và khấu hao. Dùng nó để so sánh sửa chữa, hỗ trợ và thay thế.
4. **Dùng khám phá để tìm cái chưa biết.** So sánh sổ đăng ký với khám phá mạng và thiết bị đầu cuối, và điều tra ngay các thiết bị lạ (xem Chủ đề 4.1 — Quản lý tài sản CNTT).
5. **Theo dõi tình trạng và trạng thái hỗ trợ.** Theo dõi ngày hết bảo hành, trạng thái hỗ trợ firmware và bảo mật, và lịch sử hỏng. Lập kế hoạch thay thế trước khi thiết bị hỏng hoặc hết hỗ trợ.
6. **Thay dựa trên bằng chứng.** Xem dữ liệu hỏng và hỗ trợ, hiệu năng và hỗ trợ bảo mật để quyết định thay thế, không chỉ dựa vào tuổi. Rà soát chính sách mỗi năm một lần.
7. **Chuẩn bị thiết bị nhất quán.** Dùng một bản build chuẩn và đăng ký tự động để thiết bị mới đến là sẵn sàng, với các kiểm soát bảo mật đã có.
8. **Tái triển khai khi an toàn.** Xóa và gán lại các thiết bị vẫn đáp ứng nhu cầu, kèm bản ghi việc xóa. Tránh tích trữ thiết bị không dùng.
9. **Xóa dữ liệu đúng cách và giữ bằng chứng.** Dùng phương pháp phù hợp với loại thiết bị và độ nhạy cảm của dữ liệu, xác minh nó và giữ một chứng nhận hoặc nhật ký. Với lưu trữ flash, dùng lệnh sanitize được thiết bị hỗ trợ hoặc hủy khóa khi phù hợp (xem các ghi chú về xóa dữ liệu ở trên).
10. **Chọn đối tác thanh lý cẩn thận.** Ưu tiên các đơn vị tái chế được chứng nhận, hỏi thiết bị và vật liệu đi đâu, và giữ bản ghi. Đưa điều khoản hủy dữ liệu vào hợp đồng.
11. **Lập kế hoạch cho thiết bị mất và bị đánh cắp.** Có một cách báo nhanh, khóa hoặc xóa từ xa khi có thể, và một quy tắc về khi nào coi một vụ mất là sự cố an ninh (xem Chủ đề 3.2 — Quản lý sự cố).
12. **Rà soát đều đặn.** Ít nhất hai lần mỗi năm, kiểm tra một mẫu sổ đăng ký với thực tế vật lý cho các loại thiết bị chính, và sửa quy trình đằng sau mọi khoảng trống.

## Câu hỏi để thảo luận với nhóm của bạn

**Nếu hôm nay chúng ta đếm mọi thiết bị mình sở hữu, chúng ta có khớp với sổ đăng ký không?**

Chọn một tầng, một nhóm hay một kho và đếm nhanh so với sổ đăng ký. Các khác biệt là bài học. Hỏi sai lệch nào quan trọng nhất: thiết bị có dữ liệu trên đó, thiết bị chưa được vá. Người điều phối có thể hỏi điều gì ngăn mọi người cập nhật sổ đăng ký ngay lúc thay đổi. Chọn một quy trình để siết chặt.

**Chúng ta làm gì với một laptop khi ai đó rời đi?**

Đi qua các bước: ai thu hồi nó, nó đi đâu, ai xóa, ai cập nhật bản ghi. Khoảng trống thường xuất hiện giữa các nhóm. Xin ví dụ gần nhất và lần theo nó. Thống nhất một chủ sở hữu và một danh mục kiểm tra.

**Chúng ta quyết định thay thiết bị khi nào?**

Hỏi quy tắc hiện tại và nguồn của nó. Thường đó là một độ tuổi cố định do ai đó đặt từ lâu. Bàn chúng ta có dữ liệu gì về hỏng, chi phí hỗ trợ và hỗ trợ bảo mật. So sánh với chi phí thay sớm hay muộn. Thống nhất thu thập dữ liệu nào.

**Làm sao chúng ta chứng minh dữ liệu trên một thiết bị đã thanh lý đã bị hủy?**

Lấy một lần thanh lý gần đây và hỏi có bằng chứng gì. Nếu câu trả lời là "đơn vị tái chế nói vậy", hãy bàn một chứng nhận hay nhật ký nên chứa gì. Hỏi phương pháp nào đã dùng cho lưu trữ thể rắn. Thống nhất một chuẩn tối thiểu và bằng chứng.

**Thiết bị nào của chúng ta hết bảo hành hoặc hết hỗ trợ bảo mật, và cái gì phụ thuộc vào chúng?**

Liệt kê các thiết bị gần hết hỗ trợ. Hỏi mỗi cái hỗ trợ gì. Thiết bị không được hỗ trợ đứng sau các dịch vụ quan trọng là rủi ro. Lập kế hoạch thay thế theo thứ tự tác động và quyết định nơi cần biện pháp bù trừ.

**Ai xử lý một thiết bị bị mất hoặc đánh cắp, và nhanh đến đâu?**

Hỏi người dùng báo mất thế nào và điều gì xảy ra tiếp theo. Kiểm tra khóa hay xóa từ xa có sẵn không và có ai thử chưa. Bàn khi nào một vụ mất trở thành sự cố an ninh. Thống nhất một bước đầu tiên rõ ràng cho người dùng.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan y tế cấp tỉnh cung cấp khoảng 4.000 laptop và máy tính bảng cho các y tá cộng đồng, những người đến thăm bệnh nhân tại nhà. Thiết bị thường xuyên bị mất hoặc hỏng. Hồ sơ của cơ quan cho thấy 4.300 thiết bị, nhưng bàn dịch vụ tin rằng mình quản lý ít hơn. Một cuộc rà soát an ninh thấy một số laptop được liệt kê là đã cho ngừng vẫn được thấy đang dùng, và một kho thiết bị cũ trong tủ vẫn chứa dữ liệu bệnh nhân.

Trưởng dịch vụ người dùng cuối đặt ra một chương trình nhỏ. Mỗi thiết bị nhận một thẻ duy nhất và một bản ghi gắn với một y tá có tên và một nhóm. Một công cụ khám phá so sánh sổ đăng ký với các thiết bị kết nối mạng, và một danh sách hằng tháng các thiết bị không khớp được gửi cho quản lý nhóm, những người có hai tuần để giải thích hoặc trả lại chúng. Thiết bị được đăng ký tự động với mã hóa bật và phần mềm chuẩn, để một laptop bị mất lộ ra rất ít. Một danh mục kiểm tra người nghỉ việc thêm việc trả thiết bị như một bước mà quản lý ký xác nhận. Với việc cho ngừng, cơ quan ký hợp đồng với một đơn vị tái chế được chứng nhận, xóa ổ đĩa, hủy những ổ không xóa được và cấp một chứng nhận cho mỗi lô. Chiếc tủ được dọn sạch, nội dung của nó được xóa và ghi lại.

Trong vòng sáu tháng, sổ đăng ký và khám phá khớp nhau với biên sai nhỏ, và một laptop bị mất được khóa từ xa trong vòng một giờ trong hầu hết trường hợp. Một số vấn đề vẫn còn. Các y tá đôi khi dùng chung thiết bị trong những ca bận, nên trường chủ sở hữu bị sai, và các chứng nhận của đơn vị tái chế liệt kê các lô nhưng không liệt kê từng thiết bị, điều kiểm toán viên hỏi đến. Trưởng dịch vụ người dùng cuối giới thiệu một bản ghi thiết bị dùng chung với việc ký nhận hằng ngày và đề nghị đơn vị tái chế đưa số sê-ri vào các chứng nhận. Cô cũng quyết định rà soát chính sách thay thế bằng dữ liệu hỏng của năm đầu, thay vì giữ một độ tuổi cố định.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối giữ thiết bị kiểm thử, máy chủ build và thiết bị phòng thí nghiệm. Hãy đăng ký chúng, giao chủ sở hữu và cho ngừng chúng đúng cách. Nói với quản lý tài sản khi bạn cần thiết bị, để nguồn cung khớp với dự án.

### Nhóm dịch vụ và vận hành

Vận hành và bàn dịch vụ chạy phần lớn vòng đời: dựng, triển khai, hỗ trợ và cho ngừng. Giữ bản ghi luôn mới ở mỗi bước, dùng khám phá để bắt khoảng trống và giữ bằng chứng thanh lý. Chia sẻ dữ liệu tình trạng và hỏng với bất kỳ ai lập kế hoạch thay thế.

### Lãnh đạo và quản trị

Lãnh đạo quyết định ngân sách thay thế và khẩu vị rủi ro. Hãy hỏi số thiết bị hết hỗ trợ, quy trình cho thiết bị mất và bằng chứng về việc hủy dữ liệu. Ủng hộ việc làm mới dựa trên bằng chứng và các kiểm soát nhỏ, như thẻ và danh mục kiểm tra, giữ bản ghi đúng sự thật.

### Khách hàng và người dùng

Người dùng giữ thiết bị hằng ngày. Hãy chăm sóc nó, báo mất hay hỏng nhanh chóng và trả lại thiết bị khi bạn rời đi. Hãy nói với bàn dịch vụ nếu bạn dùng chung thiết bị hoặc chuyển sang địa điểm khác, để bản ghi đúng.

## Các kiểu thất bại thường gặp

- **Thiết bị không gắn thẻ.** Thiết bị không phân biệt được. Thay vào đó, gắn thẻ và ghi khi nhận.
- **Bản ghi cũ.** Việc di chuyển và người nghỉ việc không được nắm bắt. Thay vào đó, gắn cập nhật với các sự kiện như quy trình người vào, người chuyển và người nghỉ việc.
- **Làm mới theo tuổi cố định mà không có dữ liệu.** Thiết bị được thay quá sớm hoặc quá muộn. Thay vào đó, rà soát dữ liệu hỏng, chi phí và hỗ trợ.
- **Thanh lý yếu.** Dữ liệu vẫn còn trên thiết bị đã thanh lý. Thay vào đó, xóa và xác minh bằng phương pháp phù hợp với phương tiện, giữ bằng chứng và dùng đối tác được chứng nhận.
- **Bỏ qua lưu trữ flash.** Việc ghi đè được giả định là hiệu quả. Thay vào đó, dùng lệnh sanitize hoặc hủy khóa và xác minh.
- **Tích trữ.** Thiết bị không dùng chất đống. Thay vào đó, tái triển khai hoặc cho ngừng theo lịch.
- **Không nối với dịch vụ.** Một thiết bị hỏng chỉ là một ticket. Thay vào đó, ghi dịch vụ mà mỗi thiết bị hỗ trợ.
- **Tái chế không được chứng nhận.** Thiết bị kết thúc ở nơi không ai biết. Thay vào đó, chọn đối tác được chứng nhận và hỏi vật liệu đi đâu.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Kiểm kê và theo dõi | Thiết bị được biết không chính thức | Một sổ đăng ký bao phủ các thiết bị chính | Mọi thiết bị được gắn thẻ và ghi, đối chiếu với khám phá | Độ chính xác và khoảng trống được đo và sửa | Kiểm kê bao gồm thiết bị sở hữu, thuê và của đối tác với dữ liệu chung |
| Vòng đời và làm mới | Thay thế xảy ra khi hỏng | Một số thiết bị theo kế hoạch làm mới | Các bước vòng đời và chính sách làm mới được xác định | Dữ liệu hỏng và chi phí dẫn dắt quyết định thay thế | Làm mới được lập kế hoạch trong toàn tổ chức cùng nhà cung cấp và tài chính |
| Thanh lý và bảo vệ dữ liệu | Thanh lý tùy hứng | Một số thiết bị được xóa | Một phương pháp xóa chuẩn và thanh lý được chứng nhận kèm bằng chứng | Bằng chứng thanh lý được kiểm toán và khoảng trống được đóng | Thanh lý được điều phối với đối tác và chương trình tái sử dụng |
| Liên kết với dịch vụ và tài chính | Thiết bị không nối với dịch vụ hay chi phí | Một số dữ liệu chi phí được giữ | Thiết bị được nối với chủ sở hữu, dịch vụ và chi phí | Dữ liệu chi phí và hỗ trợ được rà soát và dùng trong ngân sách | Dữ liệu tài sản được chia sẻ liên tục với tài chính, an ninh và nhà cung cấp |

## Danh mục kiểm tra

- [ ] Mọi thiết bị chúng ta theo dõi có một thẻ duy nhất hoặc bản ghi số sê-ri và một chủ sở hữu hoặc người dùng có tên.
- [ ] Thiết bị được nối với dịch vụ chúng hỗ trợ.
- [ ] Khám phá được so sánh với sổ đăng ký ít nhất hằng tháng cho các loại thiết bị chính.
- [ ] Ngày hết bảo hành và hỗ trợ được ghi và rà soát.
- [ ] Chính sách thay thế của chúng ta dựa trên dữ liệu và được rà soát hằng năm.
- [ ] Quy trình người nghỉ việc và người chuyển thu hồi hoặc gán lại thiết bị.
- [ ] Việc xóa dữ liệu dùng phương pháp phù hợp với phương tiện, có xác minh và bản ghi.
- [ ] Đối tác thanh lý được chứng nhận và cung cấp bằng chứng theo thiết bị hoặc lô.
- [ ] Thiết bị mất và bị đánh cắp có thể được báo nhanh và khóa hoặc xóa từ xa khi có thể.
- [ ] Một mẫu sổ đăng ký được kiểm tra với thực tế vật lý hai lần mỗi năm.

## Lời nhắc AI

**Mục đích: đối chiếu số đếm vật lý với sổ đăng ký.**

```text
I have a physical count of devices in [location or team] and the register entries for the same scope.

Physical count (tag or serial, type, who has it): [paste].
Register (tag or serial, type, owner, status): [paste]. 

Using only these lists, identify items present physically but missing from the register, items in the register but not found, and items where the owner or status differs. For each group, suggest a question to ask. Do not guess about items that cannot be matched. List what you are unsure of.
```

**Mục đích: chuẩn bị một buổi rà soát thay thế dựa trên dữ liệu.**

```text
Help me prepare a replacement review for [device class, e.g. "field laptops"].

Data we have (age, repairs, failures, support tickets, warranty end, security support end, cost): [paste a table of real data].
Current replacement rule and its source: [paste, or write "unknown"].
Budget limits: [describe, or write "unknown"].

Using only this data, describe patterns by age group (for example failure and repair counts), identify devices near end of support, and suggest questions about whether the current rule fits. Do not invent failure rates or costs. If the data are too thin, say what to collect. List what you are unsure of.
```

**Mục đích: viết danh mục kiểm tra thanh lý thiết bị với yêu cầu bằng chứng.**

```text
Help me write a disposal checklist for [device type, e.g. "laptops and phones"].

Data sensitivity: [describe].
Storage types: [for example hard drives, SSDs, phones with encrypted storage].
Disposal partner and what they provide: [describe, or write "not yet chosen"].
Rules we must follow, with source text: [paste, or write "none known"].

Produce a checklist covering authorization, removal of accounts and licenses, data erasure or destruction method by storage type, verification, evidence kept (certificate content, serial numbers), disposal route, and register update. Mark steps that are assumptions. Do not state that any law or standard requires a method unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: lập kế hoạch ứng phó với thiết bị bị mất.**

```text
Draft a short response procedure for a lost or stolen [device type].

What controls exist today (encryption, remote lock, remote wipe, location): [describe, or write "unknown"].
Data the device may hold: [describe].
Who is told today: [list].

Write steps for the user, the service desk, and security: how to report, what to do in the first hour, when to treat the loss as a security incident, and how to record it. Leave any notification duty as [CHECK WITH LEGAL] unless I give the source text. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): dùng để nối thiết bị với các dịch vụ chúng hỗ trợ.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): dùng để lập kế hoạch cần bao nhiêu thiết bị và khi nào.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): dùng để dự báo chi phí làm mới và hỗ trợ.
- [data-governance](../../../../skills/data-governance/SKILL.md): dùng để quyết định ai sở hữu dữ liệu trên thiết bị và nó được bảo vệ thế nào khi cho ngừng.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng để chọn và rà soát nhà cung cấp phần cứng và đối tác thanh lý.

## Nguồn chính

- **IT asset management** (Wikipedia): định nghĩa và mô tả về quản lý tài sản phần cứng, trong bài về quản lý trung tâm dữ liệu.
- **Data erasure** (Wikipedia): phương pháp, tiêu chuẩn, xác minh và trường hợp đặc biệt của lưu trữ thể rắn.
- **Electronic waste** (Wikipedia): quy mô, mối nguy, tái chế và Công ước Basel, với lưu ý về các con số mâu thuẫn.
- **Guidelines for Media Sanitization** (NIST Special Publication 800-88): hướng dẫn gốc mà bài viết Wikipedia trích dẫn; hãy đọc bản sửa đổi hiện hành trước khi đặt một chuẩn.

## Tài liệu tham khảo

1. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
2. Data erasure — Wikipedia — https://en.wikipedia.org/wiki/Data_erasure
3. Electronic waste — Wikipedia — https://en.wikipedia.org/wiki/Electronic_waste
4. Basel Convention — Wikipedia — https://en.wikipedia.org/wiki/Basel_Convention
5. Data center management — Wikipedia — https://en.wikipedia.org/wiki/Data_center_management
6. Total cost of ownership — Wikipedia — https://en.wikipedia.org/wiki/Total_cost_of_ownership
7. Mobile device management — Wikipedia — https://en.wikipedia.org/wiki/Mobile_device_management
8. Information security — Wikipedia — https://en.wikipedia.org/wiki/Information_security
