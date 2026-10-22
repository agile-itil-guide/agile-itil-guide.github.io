# Bàn dịch vụ

**Bàn dịch vụ là nơi người dùng và nhà cung cấp dịch vụ gặp nhau, và trong một tổ chức agile, đầu ra có giá trị nhất của nó không phải là các ticket đã đóng mà là điều nó học được về cách người dùng trải nghiệm dịch vụ.**

## Vì sao điều này quan trọng

Với hầu hết người dùng, bàn dịch vụ chính là dịch vụ. Họ hiếm khi thấy các kỹ sư, kiến trúc hay pipeline; họ thấy người trả lời khi có gì đó hỏng. Cuộc trò chuyện đó diễn ra thế nào định hình lòng tin của họ vào mọi thứ đằng sau. Một bàn thân thiện, có năng lực có thể làm dịu một lần ngừng hoạt động tồi tệ, và một bàn thờ ơ có thể làm hỏng một dịch vụ tốt.

Bàn dịch vụ cũng là cảm biến tốt nhất mà một tổ chức có. Mỗi lần liên hệ là một mẩu bằng chứng nhỏ về điều người dùng thấy khó hiểu, điều gì hỏng và họ ước dịch vụ làm gì. Các nhóm agile phát hành thường xuyên cần bằng chứng đó nhanh chóng. Một bàn bị cô lập khỏi các nhóm phân phối tạo ra ticket, còn một bàn được kết nối tạo ra cải tiến.

[Bài viết Wikipedia về quản lý dịch vụ CNTT](https://en.wikipedia.org/wiki/IT_service_management) mô tả bàn dịch vụ là đầu mối liên hệ duy nhất giữa nhà cung cấp và người dùng hay khách hàng, xử lý sự cố và yêu cầu dịch vụ. [Bài viết Wikipedia về bàn trợ giúp](https://en.wikipedia.org/wiki/Help_desk) ngắn: nó bao gồm định nghĩa, quản lý hàng đợi và định tuyến cuộc gọi, và không nói gì về lịch sử, các tuyến hỗ trợ, thước đo hay sự khác biệt giữa bàn trợ giúp và bàn dịch vụ. Vì vậy chủ đề này dựa vào hai bài viết đó cho các định nghĩa, và phần còn lại là hướng dẫn thực tế được đưa ra như vậy, không phải các phát hiện đã được xác lập.

## Các khái niệm cốt lõi

### Bàn dịch vụ là gì

Một **bàn trợ giúp**, theo Wikipedia, là một bộ phận hay một người đưa ra sự hỗ trợ và thông tin, thường cho các vấn đề điện tử hay máy tính. Một **bàn dịch vụ**, theo cách dùng trong ITSM, rộng hơn: đầu mối liên hệ duy nhất cho người dùng và khách hàng, xử lý cả sự cố (các gián đoạn hoặc gián đoạn tiềm tàng đối với một dịch vụ) lẫn yêu cầu dịch vụ (các yêu cầu thường lệ về một thứ dịch vụ thường cung cấp). Bài viết về bàn trợ giúp chỉ liệt kê "bàn dịch vụ" như một chủ đề liên quan, nên ranh giới chính xác giữa hai thuật ngữ không được nêu ở đó. Nhiều tổ chức dùng hai từ thay thế nhau; điều quan trọng là bàn của bạn được kỳ vọng làm gì.

### Người dùng và khách hàng

Bài viết về ITSM phân biệt người dùng, người dùng dịch vụ, với khách hàng, người trả tiền hoặc đặt hàng cho nó. Một bàn chủ yếu nghe từ người dùng. Nó cũng nên biết khách hàng là ai, vì họ quyết định ưu tiên và nguồn vốn. Một bàn tốt nói chuyện được với cả hai.

### Hàng đợi và định tuyến

Wikipedia nói các bàn trợ giúp lớn có một người hay một nhóm quản lý các yêu cầu đến, thường gọi là quản lý hàng đợi hay giám sát hàng đợi, người giao mỗi vấn đề cho một nhóm chuyên biệt theo loại. Một số bàn dùng hệ thống điện thoại với phân phối cuộc gọi tự động chuyển các cuộc gọi về chủ đề cụ thể đến những chuyên viên có kinh nghiệm phù hợp. Định tuyến là công cụ chính của bàn để ghép vấn đề với người có thể giải quyết nó.

### Các tuyến hỗ trợ

Nhiều bàn tổ chức hỗ trợ thành các tuyến. Các nguồn đã đọc cho cuốn sách này không mô tả các tuyến, nên phần sau là một thực hành phổ biến được mô tả một cách chung chung, không phải nhận định từ một nguồn:

| Tuyến | Vai trò điển hình |
|---|---|
| Tuyến một | Tiếp nhận liên hệ, ghi lại, giải quyết các vấn đề thông thường bằng tri thức đã ghi chép, và định tuyến phần còn lại |
| Tuyến hai | Xử lý các vấn đề khó hơn cần kỹ năng kỹ thuật sâu hơn |
| Tuyến ba | Các chuyên gia, thường là kỹ sư xây dựng dịch vụ, sửa các lỗi gốc |

Mô hình có một điểm yếu đã biết: nó có thể biến mỗi tuyến thành một nơi công việc chờ. Các nhóm agile thường cố rút ngắn đường đi để một chuyên viên bàn dịch vụ có thể tiếp cận kỹ sư trực tiếp (xem Chủ đề 3.2 — Quản lý sự cố).

### Các kênh

Liên hệ đến qua điện thoại, email, chat, một cổng thông tin web hoặc trực tiếp. Mỗi kênh phù hợp với những người dùng và vấn đề khác nhau. Một cổng thông tin có thể làm yêu cầu có cấu trúc và nhanh. Một đường dây điện thoại hợp với một sự cố ngừng hoạt động khẩn cấp. Cung cấp nhiều kênh là tốt, miễn là tất cả đều nuôi cùng một bản ghi, để nhu cầu nhìn thấy được ở một nơi (xem Chủ đề 2.1 — Quản lý dịch vụ CNTT về cửa trước duy nhất).

### Tự phục vụ và tri thức

Nhiều bàn cung cấp tự phục vụ: một cổng thông tin nơi người dùng có thể tìm câu trả lời và gửi yêu cầu thường lệ mà không cần nói chuyện với ai. Các nguồn đã đọc không mô tả tự phục vụ, nhưng nó nối với hai thực hành trong cuốn sách này: một cơ sở tri thức tốt (xem Chủ đề 3.9 — Quản lý tri thức) và một danh sách dịch vụ rõ ràng (xem Chủ đề 3.8 — Quản lý danh mục dịch vụ).

### Bàn dịch vụ như một nguồn bằng chứng

Những gì một bàn ghi lại có thể có giá trị với cả tổ chức: các câu hỏi phổ biến nhất, các lỗi phổ biến nhất, mọi việc mất bao lâu và người dùng nói gì. Bằng chứng này giúp các nhóm phân phối quyết định cần sửa gì, giúp quản lý vấn đề tìm nguyên nhân (xem Chủ đề 3.3 — Quản lý vấn đề), và giúp quản lý mức dịch vụ thống nhất các mục tiêu thực tế (xem Chủ đề 3.7 — Quản lý mức dịch vụ). Một bàn chỉ ghi vừa đủ để đóng ticket đã lãng phí điều này.

### Thước đo

Các bàn thường bị đánh giá bằng số đếm: số liên hệ đã xử lý, thời gian trả lời, thời gian đóng. Số đếm dễ thu thập và dễ bị lạm dụng. Thời gian đóng có thể bị gian lận bằng cách đóng ticket sớm, và số liên hệ có thể thưởng cho việc xử lý các vấn đề lặp lại thay vì loại bỏ chúng. Các thước đo tốt hơn gồm mức hài lòng của người dùng, tần suất một liên hệ được giải quyết ngay lần chạm đầu và liệu các liên hệ lặp lại về cùng một vấn đề có giảm theo thời gian không. Hãy coi mọi thước đo là gợi ý cho một câu hỏi và thống nhất bạn sẽ làm gì với nó (xem Chủ đề 5.6 — Chỉ số và đo lường).

### Lời chỉ trích và giới hạn

Các bài viết Wikipedia đã đọc cho cuốn sách này không nêu lời chỉ trích nào về bàn trợ giúp hay bàn dịch vụ. Những người thực hành thường nêu một số mối lo quen thuộc: rằng các bàn bị coi là chi phí cần tối thiểu hóa, rằng kịch bản thay thế phán đoán, rằng người trả lời không có quyền sửa gì và rằng tỷ lệ nghỉ việc cao. Những điều này được bàn rộng rãi nhưng ở đây được trình bày như những mối lo phổ biến, không phải phát hiện từ các nguồn.

## Thực hành tốt

1. **Cho bàn một mục đích rõ ràng.** Viết ra bàn dùng để làm gì: phục vụ ai, xử lý gì và chuyển tiếp gì. Một bàn không có mục đích nêu rõ sẽ trôi dần vào việc xử lý bất cứ thứ gì đến.
2. **Cung cấp vài kênh tốt cùng nuôi một bản ghi.** Chọn các kênh mà người dùng thích, và bảo đảm mỗi kênh tạo một bản ghi ở cùng một nơi. Các kênh ẩn, như tin nhắn cá nhân gửi cho kỹ sư, che giấu nhu cầu.
3. **Tách sự cố khỏi yêu cầu và khỏi câu hỏi.** Dùng các danh mục và ví dụ đơn giản, để chuyên viên phân loại nhất quán. Sự tách biệt này quan trọng cho ưu tiên và báo cáo (xem Chủ đề 3.6 — Quản lý yêu cầu dịch vụ).
4. **Đặt tri thức trước mặt chuyên viên.** Cung cấp hướng dẫn ngắn, tìm kiếm được cho các vấn đề phổ biến nhất, và cập nhật khi câu trả lời đổi. Hỏi các chuyên viên họ dùng bài nào và bài nào sai.
5. **Để bàn sửa những gì nó sửa được.** Khi an toàn, hãy trao cho chuyên viên thẩm quyền và công cụ để giải quyết các vấn đề thông thường, như đặt lại mật khẩu và cấp quyền truy cập. Mỗi lần chuyển lên cấp trên không cần thiết đều tốn thời gian của người dùng.
6. **Tạo một đường dây trực tiếp đến kỹ sư.** Làm cho chuyên viên dễ hỏi một nhóm phân phối về một lỗi mới, và nhóm dễ báo cho bàn về một bản phát hành. Một kênh chung và một đầu mối có tên là đủ để bắt đầu.
7. **Báo cho bàn về các thay đổi trước khi người dùng cảm nhận chúng.** Chia sẻ ghi chú phát hành và các vấn đề đã biết với bàn từ trước (xem Chủ đề 3.5 — Quản lý phát hành và triển khai). Những bất ngờ làm bàn trông thiếu thông tin.
8. **Ghi đủ để học, và không hơn.** Nắm bắt danh mục, dịch vụ bị ảnh hưởng, điều đã xảy ra và cách sửa. Rà soát các trường đều đặn và bỏ những trường không ai dùng.
9. **Rà soát các liên hệ theo chủ đề.** Mỗi tháng một lần, nhóm các liên hệ gần đây theo nguyên nhân và nhìn vào vài nhóm đầu. Chia sẻ các chủ đề với các nhóm phân phối và quản lý vấn đề.
10. **Hỏi người dùng mọi việc diễn ra thế nào.** Dùng một câu hỏi ngắn sau mỗi liên hệ, như vấn đề đã được giải quyết chưa. Đọc các bình luận. Kết hợp với bằng chứng khác, vì chỉ một điểm hài lòng thì dễ bị hiểu sai.
11. **Chăm sóc con người.** Cung cấp đào tạo, sự đa dạng và một con đường sang các vai trò khác. Một bàn chỉ tốt như những người làm việc ở đó, và tỷ lệ nghỉ việc cao là một chi phí không hiện trong số đếm ticket.
12. **Coi bàn là một phần của phân phối.** Đưa một đại diện của bàn vào sprint review và lập kế hoạch, và coi phản hồi của bàn là đầu vào cho backlog (xem Chủ đề 5.1 — Quản lý dịch vụ Agile).

## Câu hỏi để thảo luận với nhóm của bạn

**Người dùng trải nghiệm gì khi liên hệ với chúng ta, từ khoảnh khắc đầu tiên đến câu trả lời?**

Đi qua một liên hệ điển hình từ góc nhìn của người dùng. Ghi lại cách họ tìm ra bàn, họ được hỏi gì, họ chờ bao lâu và họ nghe thấy gì. Nếu có thể, hãy hỏi vài người dùng. Mục đích là thấy dịch vụ từ bên ngoài. Người điều phối có thể hỏi người dùng dễ cảm thấy bị phớt lờ nhất ở đâu. Tiếp theo, chọn một bước để cải thiện.

**Chúng ta nghe thấy gì thường nhất, và đã làm gì về nó?**

Liệt kê năm lý do liên hệ phổ biến nhất trong tháng qua. Bên cạnh mỗi lý do, viết điều gì, nếu có, đã được làm để giảm nó. Một khoảng trống cho thấy bằng chứng của bàn chưa đến được ai có thể hành động. Hỏi ai nên nhận danh sách và bao lâu một lần. Thống nhất gửi bản đầu tiên trong tháng này.

**Chuyên viên không giải quyết được việc gì mà lẽ ra họ giải quyết được với đúng công cụ, quyền truy cập hay tri thức?**

Xin các chuyên viên ví dụ về những lần chuyển lên cấp trên mà họ thấy không cần thiết. Các câu trả lời điển hình gồm quyền truy cập họ thiếu, tri thức đã lỗi thời và nỗi sợ mắc sai lầm. Hãy coi các câu trả lời là danh sách cải tiến. Hỏi cái nào có thể làm an toàn ngay bây giờ, và biện pháp bảo vệ nào sẽ giúp cho phần còn lại.

**Làm sao chúng ta biết về các thay đổi ảnh hưởng đến người dùng, và sớm đến đâu?**

Xem vài bản phát hành hoặc sự cố ngừng hoạt động gần nhất và hỏi bàn biết về từng cái khi nào. Thông tin muộn là phổ biến. Hỏi kênh nào sẽ hiệu quả: một nguồn cấp chung, một buổi thông báo ngắn, một đầu mối có tên. Các nhóm phân phối nên có mặt. Thống nhất một quy tắc đơn giản, như không phát hành nếu chưa có ghi chú cho bàn.

**Thước đo nào của chúng ta giúp chúng ta cải tiến, và thước đo nào chúng ta chỉ báo cáo?**

Liệt kê các thước đo bàn tạo ra và hỏi ai dùng từng cái. Các thước đo không ai dùng là ứng viên để bỏ. Hỏi mọi người sợ thước đo nào, và vì sao. Nếu các chuyên viên gian lận một thước đo, nó cần thay đổi. Chọn một thước đo để thay hoặc thêm vào cho thấy người dùng có tốt hơn không.

**Làm sao chúng ta giữ những người làm việc ở đây, và họ nói họ cần gì?**

Hỏi các chuyên viên điều gì sẽ làm công việc tốt hơn và điều gì sẽ khiến họ rời đi. Các câu trả lời phổ biến là sự đa dạng, đào tạo, sự ghi nhận và một con đường để phát triển. Đừng hứa điều bạn không thể thực hiện; hãy cam kết một thay đổi nhìn thấy được. Người điều phối nên coi tỷ lệ nghỉ việc là một rủi ro dịch vụ chứ không chỉ là chuyện nhân sự.

## Trong thực tế: một ví dụ agile ITIL

Bàn dịch vụ CNTT nội bộ của một cơ quan thuế quốc gia hỗ trợ khoảng 9.000 nhân viên với một nhóm 25 chuyên viên. Liên hệ đến qua điện thoại, email và một cổng thông tin. Nhân viên phàn nàn rằng họ phải giải thích vấn đề nhiều lần, và các nhóm phân phối phàn nàn rằng họ chỉ nghe về lỗi khi một quản lý giận dữ gọi.

Quản lý bàn dịch vụ gặp các trưởng nhóm của ba nhóm phân phối và đề xuất ba thay đổi. Thứ nhất, một kênh chat chung nối các chuyên viên và các nhóm phân phối, với quy tắc phản hồi đầu tiên được mong đợi trong vòng một giờ làm việc. Thứ hai, mỗi bản phát hành có một ghi chú ngắn gửi bàn trước khi triển khai, do nhóm phân phối viết bằng mẫu một trang. Thứ ba, bàn tạo một danh sách hằng tháng gồm mười lý do liên hệ phổ biến nhất và chia sẻ với mọi nhóm phân phối, những người cam kết xem ba lý do đầu.

Sau ba tháng, bàn và các nhóm phân phối báo cáo rằng nhiều lỗi lặp lại đã được sửa, và các chuyên viên nói họ cảm thấy được thông tin tốt hơn. Một số khó khăn còn lại. Kênh chung đã trở nên ồn ào và một số chuyên viên bỏ qua nó, ghi chú phát hành đến muộn vào những ngày bận, và một nhóm phân phối hoàn toàn không phản hồi danh sách hằng tháng. Quản lý bàn đề nghị các nhóm phân phối chỉ định một người theo dõi kênh, chuyển ghi chú phát hành muộn vào danh mục kiểm tra phát hành, và nêu sự im lặng của nhóm không phản hồi với trưởng CNTT, người nhờ trưởng nhóm đó tham dự buổi rà soát hằng tháng tiếp theo.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối nên coi bàn dịch vụ là đồng nghiệp và là khách hàng. Hãy nói với bàn điều gì đang thay đổi và nên chờ đợi gì. Đọc các chủ đề hằng tháng của bàn và đưa những chủ đề đầu vào backlog. Mời một chuyên viên đến các buổi rà soát, để những người nghe người dùng mỗi ngày định hướng các bước tiếp theo.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành bố trí nhân sự cho bàn hoặc làm việc sát với nó. Hãy trao cho chuyên viên tri thức và thẩm quyền để giải quyết các vấn đề thông thường, và làm cho việc chuyển lên cấp trên nhanh và tôn trọng. Dùng bằng chứng của bàn trong quản lý vấn đề và lập kế hoạch năng lực, và bảo vệ con người khỏi bị coi như một nhà máy ticket.

### Lãnh đạo và quản trị

Lãnh đạo quyết định bàn là một chi phí cần tối thiểu hóa hay một nguồn thấu hiểu. Hãy đòi các chủ đề và kết quả, không chỉ khối lượng. Bảo vệ đào tạo và con đường nghề nghiệp. Hãy cảnh giác với các mục tiêu thưởng cho việc đóng nhanh hay đẩy lùi liên hệ, vốn làm giảm chất lượng trong khi cải thiện số liệu.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi từ một bàn dễ liên hệ, hiểu vấn đề và cập nhật cho họ. Hãy mô tả vấn đề rõ ràng, nói bạn đang làm gì và nói với bàn bạn cần kết quả nào. Hãy phản hồi sau một liên hệ, vì đó là một trong số ít tín hiệu đến được nhóm.

## Các kiểu thất bại thường gặp

- **Chỉ coi bàn là trung tâm chi phí.** Bàn được bố trí nhân sự tối thiểu và chấm điểm theo khối lượng. Thay vào đó, đo kết quả và đầu tư vào kỹ năng và công cụ của bàn.
- **Các kênh ẩn.** Người dùng đi vòng bàn bằng cách nhắn tin cho kỹ sư. Thay vào đó, làm các kênh chính thức dễ dùng và định tuyến các yêu cầu không chính thức vào bản ghi.
- **Chuyển lên cấp trên theo mặc định.** Chuyên viên chuyển mọi thứ đi để tránh bị đổ lỗi. Thay vào đó, đào tạo, trang bị và tin tưởng chuyên viên giải quyết những gì họ có thể.
- **Tri thức lỗi thời.** Các bài mô tả những hệ thống đã đổi. Thay vào đó, chỉ định chủ sở hữu và ngày rà soát, và hỏi chuyên viên bài nào làm họ thất vọng.
- **Bàn biết sau cùng.** Bản phát hành và sự cố ngừng hoạt động làm bàn bất ngờ. Thay vào đó, đưa việc thông báo cho bàn vào danh mục kiểm tra phát hành.
- **Thước đo mời gian lận.** Thời gian đóng thúc đẩy việc đóng sớm. Thay vào đó, ghép một thước đo tốc độ với một thước đo chất lượng và để ý các mẫu hình.
- **Không có phản hồi cho phân phối.** Bằng chứng của bàn đi vào hư không. Thay vào đó, chia sẻ các chủ đề hằng tháng và mong có phản hồi.
- **Bỏ qua con người.** Tỷ lệ nghỉ việc cao và tinh thần thấp được chấp nhận. Thay vào đó, cho đào tạo, sự đa dạng và các con đường sang vai trò khác.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Xử lý liên hệ | Liên hệ đến qua nhiều con đường không chính thức | Có một bàn với một số kênh chung | Một cửa trước với các danh mục và định tuyến đã thống nhất | Việc xử lý và kết quả được đo và rà soát | Việc xử lý liên hệ được điều phối giữa các nhóm và nhà cung cấp |
| Tri thức và công cụ | Câu trả lời nằm trong đầu từng người | Có một số hướng dẫn | Tri thức được duy trì và công cụ chung hỗ trợ giải quyết ở tuyến một | Việc dùng và độ chính xác của tri thức được theo dõi | Tri thức và công cụ được chia sẻ với người dùng, nhóm phân phối và nhà cung cấp |
| Liên kết với phân phối | Bàn biết về thay đổi từ người dùng | Một số nhóm phân phối thông báo cho bàn | Bản phát hành kèm ghi chú cho bàn và một đầu mối có tên | Luồng thông tin được đo và khoảng trống được đóng | Bàn và các nhóm phân phối cùng lập kế hoạch và rà soát |
| Học từ liên hệ | Liên hệ được đóng và quên | Một số chủ đề được nhận ra | Các chủ đề hằng tháng được chia sẻ và theo dõi | Các chủ đề dẫn đến những bản sửa có kế hoạch có tác động được kiểm tra | Các chủ đề nuôi lập kế hoạch giữa các dịch vụ và với khách hàng |

## Danh mục kiểm tra

- [ ] Bàn có một mục đích bằng văn bản nói rõ phục vụ ai và xử lý gì.
- [ ] Mọi kênh tạo bản ghi ở cùng một nơi.
- [ ] Sự cố, yêu cầu và câu hỏi được phân loại nhất quán.
- [ ] Chuyên viên có hướng dẫn tìm kiếm được cho các vấn đề phổ biến nhất, với chủ sở hữu và ngày rà soát.
- [ ] Chuyên viên có thể giải quyết các vấn đề thông thường mà không cần chuyển lên cấp trên.
- [ ] Có một đường trực tiếp giữa chuyên viên và các nhóm phân phối.
- [ ] Bàn được báo về bản phát hành và các vấn đề đã biết trước khi người dùng cảm nhận chúng.
- [ ] Các chủ đề hằng tháng được chia sẻ với các nhóm phân phối và quản lý vấn đề.
- [ ] Người dùng được hỏi ngắn gọn một liên hệ diễn ra thế nào.
- [ ] Có đào tạo và con đường nghề nghiệp cho nhân viên bàn.

## Lời nhắc AI

**Mục đích: tìm các chủ đề trong một tháng liên hệ.**

```text
Below is a list of contacts to our service desk from the last [period]: [paste short, anonymized descriptions, one per line; remove names and personal data first].

Group them into themes based only on what is written. For each theme, give a name, the number of contacts in my list, one example, and one question that delivery teams or problem management could ask. Highlight the top three themes by count from my list. Mark contacts you could not classify. Do not invent categories beyond the text or estimate counts for contacts I did not provide. List what you are unsure of.
```

**Mục đích: viết ghi chú phát hành một trang cho bàn dịch vụ.**

```text
Help me write a one-page release note for a service desk about this change.

What changed (plain words): [describe].
Who is affected and when: [describe].
What users might ask or report: [list, or write "unknown"].
Known issues and workarounds: [list, or write "none known"].
How to roll back or who to call: [describe].

Write the note in short sections: what changed, what users will notice, what to tell users, what to do if it goes wrong, and who to contact. Use only my information. Mark assumptions as such, ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Mục đích: cải thiện một bài tri thức mà chuyên viên dùng.**

```text
Here is a knowledge article that service desk analysts use: [paste it].
Here is what analysts say is wrong or missing: [paste their comments, or write "none yet"].

Rewrite it so that a first-line analyst can follow it in under two minutes: a one-line symptom, steps to check, the fix, when to escalate and to whom, and the date and owner of the article. Do not add technical facts that are not in the article or the comments. Mark any step you are unsure of with [CHECK], and list what you are unsure of.
```

**Mục đích: lên kế hoạch một cuộc trò chuyện giữa bàn dịch vụ và một nhóm phân phối.**

```text
Plan a 45-minute conversation between a service desk of [number] analysts and a delivery team of [number] people.

Recent frictions: [describe in a few sentences].
What each side says it needs: [describe, or write "unknown"].

Give a timed agenda, five questions for each side, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): dùng để cho bàn một danh sách rõ ràng các dịch vụ nó hỗ trợ và các yêu cầu nó xử lý.
- [runbook](../../../../skills/runbook/SKILL.md): dùng để biến các bản sửa phổ biến thành quy trình ngắn mà chuyên viên tuyến một có thể theo.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): dùng để thiết kế cách bàn xin phản hồi từ người dùng.
- [survey-design](../../../../skills/survey-design/SKILL.md): dùng để thiết kế một khảo sát mức hài lòng ngắn cho ra câu trả lời dùng được.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): dùng để hiểu khối lượng và các loại liên hệ và để lập kế hoạch nhân sự.

## Nguồn chính

- **IT service management** (Wikipedia): định nghĩa bàn dịch vụ là đầu mối liên hệ duy nhất, với sự cố và yêu cầu dịch vụ.
- **Help desk** (Wikipedia): một tổng quan ngắn về định nghĩa bàn trợ giúp, quản lý hàng đợi và định tuyến cuộc gọi.
- **Technical support** (Wikipedia): bối cảnh về lĩnh vực hỗ trợ rộng hơn mà các bàn trợ giúp thuộc về.
- **ITIL** (Wikipedia): bối cảnh về vị trí của thực hành bàn dịch vụ trong ITIL.

## Tài liệu tham khảo

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
3. Technical support — Wikipedia — https://en.wikipedia.org/wiki/Technical_support
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Customer service — Wikipedia — https://en.wikipedia.org/wiki/Customer_service
6. Issue tracking system — Wikipedia — https://en.wikipedia.org/wiki/Issue_tracking_system
7. Knowledge base — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_base
8. Call centre — Wikipedia — https://en.wikipedia.org/wiki/Call_centre
