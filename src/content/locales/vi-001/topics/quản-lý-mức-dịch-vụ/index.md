# Quản lý mức dịch vụ

**Quản lý mức dịch vụ biến điều người dùng cần thành các mục tiêu mà một nhóm có thể đo và bảo vệ, và dạng hữu ích nhất cho các nhóm agile là một số ít mục tiêu hướng người dùng với một ngân sách tường minh cho thất bại.**

## Vì sao điều này quan trọng

Mọi dịch vụ đều có một mức chất lượng, dù có ai đo hay không. Nếu nó không được nêu ra, người dùng giả định một mức còn nhóm giả định mức khác, và khoảng cách được phát hiện trong lúc ngừng hoạt động. Quản lý mức dịch vụ là thực hành nêu mức đó, đo nó và hành động theo kết quả. Nó cho một nhóm thứ để định hướng và cho khách hàng thứ để dựa vào.

Các nhóm agile thường chống lại mức dịch vụ vì họ gắn nó với hợp đồng và tiền phạt. Thế nhưng một nhóm agile phát hành hằng tuần đang đưa ra một quyết định, dù biết hay không, về việc chấp nhận bao nhiêu rủi ro với tính sẵn sàng. Một mục tiêu rõ ràng làm quyết định đó tường minh. Cuốn *Site Reliability Engineering* của Google, trong chương về mục tiêu mức dịch vụ, mô tả cách làm điều này theo cách hợp với các nhóm chuyển động nhanh: chọn vài chỉ báo quan trọng với người dùng, đặt mục tiêu, và dùng khoảng giữa hoàn hảo và chấp nhận được, tức ngân sách lỗi, để quyết định khi nào phát hành.

Chủ đề này kết hợp chương đó với [bài viết Wikipedia về thỏa thuận mức dịch vụ](https://en.wikipedia.org/wiki/Service-level_agreement) cho các định nghĩa về thỏa thuận, và với từ vựng ITIL được dùng rộng rãi mà cuốn sách này không thể đối chiếu với văn bản của chủ sở hữu khung. Chương SRE phản ánh thực hành của một tổ chức và lập luận cho một cách tiếp cận cụ thể; hãy đọc nó như một lựa chọn được giải thích rõ chứ không phải quy tắc phổ quát.

## Các khái niệm cốt lõi

### Chỉ báo, mục tiêu, thỏa thuận

Chương SRE phân biệt ba thuật ngữ thường bị lẫn lộn:

| Thuật ngữ | Ý nghĩa | Ví dụ |
|---|---|---|
| **Chỉ báo mức dịch vụ (SLI)** | Một thước đo định lượng được định nghĩa cẩn thận về một khía cạnh của mức dịch vụ | Tỷ lệ các yêu cầu hợp lệ thành công |
| **Mục tiêu mức dịch vụ (SLO)** | Một giá trị hoặc khoảng mục tiêu cho một SLI | Ít nhất 99,9% yêu cầu thành công trong một tháng |
| **Thỏa thuận mức dịch vụ (SLA)** | Một hợp đồng tường minh hoặc ngầm với người dùng gồm hệ quả khi đạt hay trượt các mục tiêu, thường nhất là tài chính | Hoàn tiền nếu tính sẵn sàng giảm xuống dưới một mức đã nêu |

Phép thử của chương để phân biệt một SLA với một SLO là có hệ quả tường minh hay không. Nếu không, nó là một SLO. Các con số ví dụ trong bảng là minh họa, không phải khuyến nghị.

Bài viết Wikipedia mô tả một SLA là một thỏa thuận, thường là hợp đồng ràng buộc, giữa nhà cung cấp và khách hàng xác định các khía cạnh của dịch vụ như chất lượng, tính sẵn sàng và trách nhiệm. Nó liệt kê nội dung điển hình: mô tả dịch vụ, các mức hiệu suất, giám sát và báo cáo, cách báo vấn đề, khung thời gian phản hồi và giải quyết, và hệ quả khi không đạt. Nó nêu các chỉ số phổ biến như thời gian trung bình giữa các lỗi, thời gian trung bình để sửa, thời gian hoạt động, giải quyết ngay cuộc gọi đầu và thời gian hoàn tất. Nó lưu ý rằng các tổ chức lớn thường dùng SLA nội bộ giữa các đơn vị. Nó mô tả các loại theo phạm vi: theo khách hàng, theo dịch vụ và nhiều tầng.

### Chọn chỉ báo

Chương SRE khuyên chọn vài chỉ báo phản ánh điều người dùng quan tâm, không phải mọi chỉ số bạn theo dõi được. Các hệ thống hướng người dùng thường tập trung vào tính sẵn sàng, độ trễ và thông lượng. Các hệ thống lưu trữ thêm độ bền, và mọi hệ thống nên theo dõi tính đúng đắn. Nó gợi ý rằng đo ở phía máy khách có thể bắt các vấn đề mà chỉ số phía máy chủ bỏ sót. Một hệ quả thực tế cho các nhóm dịch vụ: bắt đầu với trải nghiệm của người dùng, như "tôi đặt được lịch hẹn và mất vài giây", rồi tìm một chỉ báo xấp xỉ nó.

### Trung bình che giấu nỗi đau

Chương lập luận chống lại việc dựa vào trung bình: "Hầu hết các chỉ số nên được xem như phân bố hơn là trung bình." Các phân vị cao, như phân vị 99 hay 99,9, cho thấy các trường hợp xấu nhất có thể xảy ra, còn trung vị cho thấy trường hợp điển hình. Trung bình có thể che giấu cái đuôi dài các yêu cầu chậm. Nếu thước đo của bạn là một giá trị trung bình, một vài người dùng có thể đang gặp thời gian rất tệ mà con số không nhúc nhích.

### Chọn mục tiêu

Hướng dẫn của chương về mục tiêu thẳng thắn và hữu ích:

- **Bắt đầu từ người dùng.** "Hãy bắt đầu bằng việc nghĩ về (hoặc tìm hiểu!) điều người dùng của bạn quan tâm, không phải điều bạn đo được."
- **Đừng neo vào hiệu suất hiện tại.** Chọn mục tiêu dựa trên điều bạn đạt bây giờ có thể khóa chặt nỗ lực anh hùng.
- **Giữ đơn giản.** Các phép gộp phức tạp làm mờ thay đổi và khó suy luận hơn.
- **Tránh tuyệt đối.** Lời hứa sẵn sàng "luôn luôn" là phi thực tế.
- **Có càng ít SLO càng tốt.** Mỗi cái nên đáng để bảo vệ trong một cuộc thảo luận ưu tiên.
- **Sự hoàn hảo có thể chờ.** Tốt hơn là bắt đầu với một mục tiêu lỏng rồi siết chặt hơn là một mục tiêu về sau phải nới ra.

### Ngân sách lỗi

Chương nói đòi hỏi tuân thủ 100% là phi thực tế và làm chậm đổi mới. Thay vào đó, các nhóm cho phép một **ngân sách lỗi**: tốc độ mà một SLO có thể bị trượt, được theo dõi hằng ngày, hằng tuần hay hằng tháng. Ngân sách cung cấp thông tin cho các quyết định về phát hành. Khi còn nhiều ngân sách, một nhóm có thể chấp nhận nhiều rủi ro hơn với thay đổi; khi nó gần hết, nhóm làm chậm thay đổi và đầu tư vào độ tin cậy. Điều này cho các nhóm agile và vận hành một cách chung, bằng con số, để tranh luận về tốc độ so với độ ổn định, thay cho tranh luận bằng thẩm quyền.

### Đặt kỳ vọng

Chương lưu ý rằng công bố một SLO đặt ra kỳ vọng của người dùng. Các nhóm có thể giữ một biên an toàn bằng một mục tiêu nội bộ chặt hơn. Nó cũng cảnh báo chống lại việc vượt mức, vì người dùng sẽ phụ thuộc vào bất kỳ hiệu suất nào họ quan sát. Nếu một dịch vụ tốt hơn nhiều so với mục tiêu đã nêu, người dùng sẽ xây dựng trên đó, và mục tiêu không còn bảo vệ nhóm.

### Vòng điều khiển

Chương mô tả SLI và SLO là cơ sở của một vòng điều khiển: giám sát các SLI, so sánh chúng với các SLO, quyết định có cần hành động không, tìm ra hành động nào sẽ đạt mục tiêu và thực hiện nó. Không có SLO, một nhóm không thể biết có hay khi nào cần hành động (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện).

### Thỏa thuận nội bộ và bên ngoài

Một SLA nằm giữa một nhà cung cấp và một khách hàng. Bên trong một nhà cung cấp, các nhóm phụ thuộc lẫn nhau và vào các nhà cung cấp. Bài viết Wikipedia nhắc rằng SLA có thể được hỗ trợ bởi các thỏa thuận mức vận hành (OLA) nhưng không giải thích chúng. Trong từ vựng ITIL, một OLA là một thỏa thuận giữa các nhóm nội bộ hỗ trợ một SLA, và một hợp đồng nền tảng là tương đương với một nhà cung cấp bên ngoài. Các nguồn đã đọc ở đây không xác nhận các định nghĩa đó, nên hãy đối chiếu với các ấn phẩm ITIL. Điểm thực tế là một lời hứa với khách hàng chỉ tốt như những lời hứa đứng đằng sau nó (xem Chủ đề 3.14 — Quản lý nhà cung cấp).

### Kỳ vọng mức dịch vụ trong Kanban

Trong Kanban, một **kỳ vọng mức dịch vụ** là một dự báo về một hạng mục công việc nên mất bao lâu, dựa trên các thời gian chu trình trước đây (xem Chủ đề 1.5 — Kanban). Nó không phải một thỏa thuận, nhưng nó phục vụ một mục đích tương tự cho các hạng mục công việc, và có thể nuôi các mục tiêu cho yêu cầu và sự cố.

## Thực hành tốt

1. **Bắt đầu với điều người dùng cần.** Hỏi người dùng và khách hàng điều gì quan trọng nhất và điều gì đau khi nó hỏng. Viết nó bằng lời của họ trước khi bạn chọn một thước đo.
2. **Chọn vài chỉ báo.** Với mỗi dịch vụ, chọn hai đến bốn chỉ báo phản ánh trải nghiệm người dùng, như tỷ lệ thành công và tốc độ. Cưỡng lại việc thêm nữa cho đến khi bạn đã dùng những cái này.
3. **Dùng phân vị cho tốc độ.** Đo đầu chậm của phân bố, không chỉ trung bình, để những người dùng có trải nghiệm tệ nhìn thấy được.
4. **Đặt mục tiêu lỏng trước, rồi siết chặt.** Bắt đầu với mục tiêu bạn đạt và bảo vệ được, và siết nó khi bạn có dữ liệu và sự tự tin. Điều này theo lời khuyên của chương rằng sự hoàn hảo có thể chờ.
5. **Đừng sao chép hiệu suất hiện tại.** Nếu dịch vụ của bạn hiện rất xuất sắc, đừng đặt mục tiêu ở mức đó trừ khi người dùng cần. Một mục tiêu lỏng hơn cho chỗ để thay đổi và tránh nỗ lực anh hùng.
6. **Thống nhất một ngân sách lỗi và dùng nó.** Định nghĩa mức thất bại chấp nhận được trong một giai đoạn, và để phần ngân sách còn lại dẫn dắt các quyết định phát hành. Rà soát nó ở một cuộc họp định kỳ với phân phối và vận hành cùng nhau.
7. **Viết thỏa thuận bằng ngôn ngữ đơn giản.** Một SLA nên nói cái gì được cung cấp, đo thế nào, báo vấn đề ra sao, điều gì xảy ra khi mục tiêu bị trượt và khi nào được rà soát. Tránh các thuật ngữ chỉ luật sư hay kỹ sư đọc được.
8. **Tách mục tiêu khỏi thỏa thuận.** Giữ các mục tiêu nội bộ chặt hơn các thỏa thuận bạn ký. Biên đó cho bạn chỗ để phản ứng trước khi bạn nợ bất cứ điều gì.
9. **Biết lời hứa của bạn phụ thuộc vào gì.** Liệt kê các nhóm và nhà cung cấp mà mức dịch vụ của bạn dựa vào, và kiểm tra cam kết của họ hỗ trợ cam kết của bạn.
10. **Báo cáo theo dạng khách hàng dùng được.** Chia sẻ kết quả đều đặn, kèm một bình luận ngắn về điều đã xảy ra và điều bạn đang làm. Tránh bảng điều khiển không có bình luận.
11. **Rà soát mục tiêu cùng khách hàng.** Ít nhất hằng năm, hỏi các mức còn khớp với điều khách hàng cần và điều bạn có thể giao không. Đổi chúng khi câu trả lời là không.
12. **Đừng dùng mức dịch vụ để trừng phạt con người.** Dùng chúng để bắt đầu các cuộc trò chuyện và quyết định. Một mục tiêu được dùng như cây gậy sẽ bị gian lận (xem Chủ đề 5.6 — Chỉ số và đo lường).

## Câu hỏi để thảo luận với nhóm của bạn

**Một ngày tốt đẹp của người dùng chúng ta trông thế nào, và làm sao chúng ta biết?**

Mời nhóm mô tả, bằng lời của người dùng, trải nghiệm tốt về dịch vụ là gì. Rồi hỏi chúng ta đo gì tương ứng với nó. Thường các thước đo chúng ta có mô tả hệ thống của mình chứ không phải trải nghiệm của người dùng. Người điều phối có thể hỏi chúng ta có nhận ra nếu một nhóm người dùng có một ngày tồi tệ không. Chọn một chỉ báo để thêm hoặc đổi.

**Chúng ta có một con số mà chúng ta hứa hoặc nhắm tới không, và ai đã đồng ý với nó?**

Liệt kê các mục tiêu đang tồn tại, chính thức hay không chính thức. Với mỗi cái, hỏi ai đặt, khi nào và dựa trên cơ sở nào. Nhiều mục tiêu hóa ra được đặt theo thói quen hay bởi người đã rời đi. Bàn cái nào nên được xác nhận, đổi hay bỏ. Thống nhất ai sở hữu từng cái.

**Chúng ta chịu được bao nhiêu thất bại, và chúng ta sẽ làm gì với khoảng dư đó?**

Giới thiệu ý tưởng ngân sách lỗi. Hỏi mức không sẵn sàng nào người dùng sẽ chịu đựng và nhóm có thể làm gì với khoảng dư, như phát hành nhanh hơn. Mục đích là thấy sự đánh đổi bằng con số. Đừng chờ câu trả lời chính xác; hãy xin một ước đoán đầu tiên để thử.

**Trung bình của chúng ta đang che giấu những trải nghiệm tồi tệ ở đâu?**

Xem một thước đo báo cáo giá trị trung bình. Hỏi một phần trăm người dùng chậm nhất trải nghiệm gì. Nếu bạn không biết, hãy bàn cách tìm ra. Thường một nhóm nhỏ người dùng hoặc một giờ cụ thể trong ngày có trải nghiệm tệ hơn nhiều. Lên kế hoạch xem một phân vị trong một tháng.

**Chúng ta phụ thuộc vào những gì mà chưa hỏi?**

Liệt kê các dịch vụ, nhà cung cấp và nhóm mà dịch vụ của bạn dựa vào. Với mỗi cái, hỏi họ đã hứa gì và bạn sẽ biết thế nào nếu họ trượt. Nhiều phụ thuộc không có mức được nêu. Chọn cái quan trọng nhất và mở một cuộc trò chuyện.

**Lần cuối một mục tiêu thay đổi là khi nào, và điều gì đã kích hoạt?**

Hỏi lần thay đổi gần nhất. Nếu đã lâu, hỏi từ đó nhu cầu của người dùng hay năng lực của nhóm đã thay đổi gì. Bàn một lần rà soát định kỳ. Các yếu tố kích hoạt tốt là nhu cầu mới của người dùng, sự cố làm lộ một mục tiêu phi thực tế hoặc một thay đổi về kiến trúc.

## Trong thực tế: một ví dụ agile ITIL

Một nhà điều hành xổ số quốc gia vận hành một dịch vụ mua vé trực tuyến. Một nhóm mười hai người xây dựng và vận hành nó. Doanh nghiệp có một quy tắc không chính thức rằng dịch vụ phải "luôn hoạt động", trong khi nhóm phát hành hai lần một tuần và đã có bốn lần ngừng hoạt động ngắn trong một năm. Sau một cuối tuần tồi tệ, nhà tài trợ điều hành đòi "tính sẵn sàng 100%", và trưởng nhóm lo rằng điều này sẽ chấm dứt việc phát hành thường xuyên.

Trưởng nhóm và nhà tài trợ tổ chức một buổi workshop với trưởng bộ phận chăm sóc khách hàng. Họ hỏi điều gì quan trọng với người chơi. Câu trả lời là người chơi phải mua được vé trong giờ trước khi kỳ quay đóng; ngoài giờ đó dịch vụ có thể ngừng vài phút mà không hại gì. Họ định nghĩa một chỉ báo: phần các lần thử mua thành công trong hai giờ trước khi mỗi kỳ quay đóng. Họ đặt một mục tiêu mà nhóm tin mình đạt được, thấp hơn một chút so với hiệu suất gần đây, và thống nhất một ngân sách lỗi cho mỗi tháng. Họ cũng thống nhất rằng khi ngân sách gần hết, các bản phát hành chạm vào việc mua vé dừng lại đến tháng sau, và nhóm đầu tư vào độ tin cậy.

Ba tháng sau ngân sách đã bị dùng hết một lần, trong một tháng có sự cố của nhà cung cấp thanh toán, và nhóm tạm dừng các bản phát hành rủi ro hai tuần mà không xung đột. Mục tiêu cho nhóm và nhà tài trợ một cách chung để nói chuyện. Một số khó khăn còn lại. Cam kết của chính nhà cung cấp thanh toán yếu hơn mục tiêu của nhóm, nên lời hứa của nhóm phụ thuộc vào một nhà cung cấp chưa đồng ý với nó. Thước đo cũng bỏ qua một trang thanh toán chậm mà người dùng phàn nàn, vì nó chỉ đếm thành công. Nhóm thêm một chỉ báo tốc độ ở phân vị 99 và mở các cuộc nói chuyện với nhà cung cấp về mức dịch vụ của họ.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối nên giúp chọn chỉ báo và dùng ngân sách lỗi trong lập kế hoạch. Xây việc đo lường vào dịch vụ để các con số đáng tin. Hãy coi một ngân sách cạn là lý do để làm việc về độ tin cậy, không phải một hình phạt.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thường chạy giám sát và báo cáo về các mức. Giữ tập thước đo nhỏ, trình bày chúng kèm bình luận và mang dữ liệu đến các cuộc trò chuyện lập kế hoạch. Giữ một danh sách những gì dịch vụ của bạn phụ thuộc vào và kiểm tra các cam kết khớp nhau.

### Lãnh đạo và quản trị

Lãnh đạo và nhà tài trợ đặt kỳ vọng. Tránh đòi sự hoàn hảo; hãy hỏi người dùng cần gì và đánh đổi tốn gì. Ủng hộ việc dùng ngân sách lỗi như một quy tắc chung, và bảo đảm nó cũng áp dụng cho các yêu cầu của chính bạn. Rà soát mức dịch vụ với khách hàng theo lịch.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi khi mức dịch vụ được nêu và đạt. Hãy nói điều gì quan trọng với bạn, kể cả khi nào. Hãy xin báo cáo ở dạng bạn hiểu được, và nói với nhà cung cấp khi mức đã nêu không còn khớp nhu cầu của bạn.

## Các kiểu thất bại thường gặp

- **Quá nhiều chỉ số.** Không ai biết cái nào quan trọng. Thay vào đó, chọn vài cái phản ánh trải nghiệm người dùng.
- **Chỉ có trung bình.** Một nhóm người dùng chịu khổ trong khi trung bình trông ổn. Thay vào đó, thêm một thước đo phân vị cao.
- **Mục tiêu sao chép từ hiệu suất hiện tại.** Nhóm bị khóa vào nỗ lực anh hùng. Thay vào đó, đặt mục tiêu từ nhu cầu người dùng và siết chặt bằng dữ liệu.
- **Đòi 100%.** Phát hành dừng lại và đổi mới chậm. Thay vào đó, thống nhất một ngân sách lỗi và một quy tắc dùng nó.
- **Lời hứa bạn không thể đảm bảo.** Mức dịch vụ phụ thuộc vào các nhà cung cấp chưa đồng ý. Thay vào đó, kiểm tra phụ thuộc và căn chỉnh cam kết.
- **Thỏa thuận không ai đọc.** Điều khoản bằng ngôn ngữ pháp lý. Thay vào đó, viết đơn giản và rà soát cùng khách hàng.
- **Bảng điều khiển không bình luận.** Con số được báo cáo mà không có ý nghĩa. Thay vào đó, thêm một giải thích ngắn về điều đã xảy ra và điều sẽ đổi.
- **Trừng phạt khi trượt.** Mọi người giấu vấn đề. Thay vào đó, dùng những lần trượt để thúc đẩy quyết định và học hỏi.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Định nghĩa các mức | Mức được giả định hoặc không chính thức | Một số dịch vụ có mục tiêu được nêu | Mỗi dịch vụ có chỉ báo và mục tiêu dựa trên người dùng với chủ sở hữu | Mục tiêu được rà soát theo nhu cầu người dùng và dữ liệu | Mức được đặt chung với khách hàng và nhà cung cấp |
| Đo lường | Thước đo tùy hứng | Một số chỉ báo được đo | Chỉ báo được đo đáng tin, gồm cả phân vị | Chất lượng đo lường được rà soát và khoảng trống được sửa | Đo lường được chia sẻ và xác thực giữa các nhóm và nhà cung cấp |
| Dùng ngân sách lỗi | Thất bại không có kế hoạch | Một số nhóm bàn về thất bại chấp nhận được | Ngân sách dẫn dắt quyết định phát hành trên các dịch vụ chính | Việc dùng ngân sách được rà soát và quy tắc được tinh chỉnh | Ngân sách được điều phối giữa các dịch vụ phụ thuộc nhau |
| Thỏa thuận và phụ thuộc | Lời hứa không chính thức | Có một số thỏa thuận | Thỏa thuận bằng ngôn ngữ đơn giản, với phụ thuộc đã biết | Thỏa thuận và cam kết nhà cung cấp được đối chiếu với kết quả | Thỏa thuận tạo thành một chuỗi nhất quán giữa các nhóm, nhà cung cấp và khách hàng |

## Danh mục kiểm tra

- [ ] Với mỗi dịch vụ, chúng ta đã mô tả bằng lời người dùng thế nào là tốt.
- [ ] Mỗi dịch vụ có hai đến bốn chỉ báo phản ánh trải nghiệm người dùng.
- [ ] Ít nhất một thước đo tốc độ dùng một phân vị cao, không chỉ trung bình.
- [ ] Mục tiêu được đặt từ nhu cầu người dùng, không chỉ từ hiệu suất hiện tại.
- [ ] Một ngân sách lỗi tồn tại và dẫn dắt quyết định phát hành cho ít nhất một dịch vụ.
- [ ] Thỏa thuận được viết bằng ngôn ngữ đơn giản và rà soát cùng khách hàng.
- [ ] Phụ thuộc vào các nhóm và nhà cung cấp khác được liệt kê cùng cam kết của họ.
- [ ] Kết quả được báo cáo đều đặn kèm bình luận.
- [ ] Mục tiêu được rà soát ít nhất mỗi năm một lần.
- [ ] Dữ liệu mức dịch vụ được dùng trong lập kế hoạch và không như một cây gậy.

## Lời nhắc AI

**Mục đích: biến nhu cầu người dùng thành chỉ báo và mục tiêu ứng viên.**

```text
Help me move from user needs to indicators and objectives for [service].

What users do with the service and what matters to them (in their words, with any feedback or complaints): [paste].
Measurements we can already collect: [list].
Rules or contracts that set levels, with the source text: [paste, or write "none known"].

Propose two to four candidate indicators that reflect the user experience, say how each would be measured with the data I listed, and suggest how to express an objective for each, leaving numeric targets as [to be agreed with users and data]. Mark any indicator we cannot measure yet. Do not invent targets or performance figures. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: phân tích xem trung bình có đang che giấu trải nghiệm tồi tệ không.**

```text
Here are response times (or other measurements) for [service] over [period]: [paste a column of real values, or summary figures such as median, 90th, 99th percentile if you have them].

Using only my data, compute or describe the average, the median, and the high percentiles if the data allows. Explain in plain words what the gap between the average and the high percentiles suggests for users. Suggest one indicator and one question to ask. Do not invent data, and say if the data is too thin. List what you are unsure of.
```

**Mục đích: soạn dàn ý thỏa thuận mức dịch vụ bằng ngôn ngữ đơn giản.**

```text
Draft an outline for a service level agreement for [service] between [provider] and [customer].

What we provide: [describe].
Measures and targets already agreed or being proposed: [paste, or write "to be agreed"].
Support hours and contacts: [describe].
Dependencies on suppliers: [list].
Terms we must include because of contract or law, with source text: [paste, or write "none known"].

Produce an outline with plain-language sections: service description, hours, measures and how they are measured, how to report a problem, response and resolution expectations (marked [to be agreed]), what happens if targets are missed, reporting, review date. Do not invent legal terms. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: lập kế hoạch chính sách ngân sách lỗi.**

```text
Help me draft an error budget policy for [service].

Objective and period: [for example, "success rate of purchase attempts in the two hours before a draw closes, measured monthly"].
Current performance if known: [paste, or write "unknown"].
Release rhythm: [describe].
Who decides, and who is affected: [roles].

Draft a one-page policy: how the budget is calculated from the objective, how its use is tracked and shown, what happens at three stages of consumption (use [to be agreed] for thresholds), who may override and how, and how the policy is reviewed. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): dùng để soạn hoặc rà soát một thỏa thuận bằng ngôn ngữ đơn giản.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): dùng để chọn và diễn giải các thước đo về giao hàng và hiệu suất dịch vụ.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): dùng để chọn các chỉ báo cảnh báo sớm cho thấy một mức dịch vụ đang gặp rủi ro.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): dùng để kiểm tra năng lực có hỗ trợ các mức bạn hứa không.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng để căn chỉnh cam kết của nhà cung cấp với các mức bạn đưa ra.

## Nguồn chính

- **Service Level Objectives** (*Site Reliability Engineering*, Google, sre.google): lời giải thích công khai rõ ràng nhất về chỉ báo, mục tiêu, thỏa thuận, phân vị và ngân sách lỗi.
- **Service-level agreement** (Wikipedia): định nghĩa, nội dung điển hình, các loại và lịch sử của SLA.
- **DORA's software delivery performance metrics** (dora.dev): các thước đo liên quan về tốc độ và độ ổn định của giao hàng.
- **Quality of service** (Wikipedia): bối cảnh về cách chất lượng dịch vụ được mô tả và đo.

## Tài liệu tham khảo

1. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
2. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
3. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
4. Quality of service — Wikipedia — https://en.wikipedia.org/wiki/Quality_of_service
5. Percentile — Wikipedia — https://en.wikipedia.org/wiki/Percentile
6. Service-level objective — Wikipedia — https://en.wikipedia.org/wiki/Service-level_objective
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
9. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
