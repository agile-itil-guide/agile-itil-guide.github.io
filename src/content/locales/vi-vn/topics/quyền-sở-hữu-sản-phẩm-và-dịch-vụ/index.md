# Quyền sở hữu sản phẩm và dịch vụ

**Quyền sở hữu sản phẩm và dịch vụ giao cho mỗi sản phẩm hay dịch vụ một người chịu trách nhiệm và một nhóm xây dựng và vận hành nó, để các quyết định về giá trị, chất lượng và chi phí được đưa ra bởi những người sống với kết quả.**

## Vì sao điều này quan trọng

Trong nhiều tổ chức, không ai sở hữu một dịch vụ như một tổng thể. Một dự án xây nó, một nhóm vận hành chạy nó, một nhà cung cấp cấp một phần và một phòng tài chính trả tiền cho nó. Khi có gì sai, có bốn cuộc họp và không có quyết định nào. Khi người dùng muốn cải thiện một thứ, yêu cầu đi vào một hàng đợi không thuộc về ai. Dịch vụ mục nát giữa các nhóm.

Quyền sở hữu giải quyết trực tiếp điều này. Nó đòi hai thứ: một người chịu trách nhiệm về giá trị của sản phẩm hay dịch vụ, và một nhóm có kỹ năng và thẩm quyền để xây, vận hành và cải tiến nó. Ý tưởng này cũ ở một số dạng và thời thượng ở những dạng khác, và chi tiết khác nhau nhiều giữa các tổ chức. Làm đúng là một trong những điều kiện quan trọng nhất để mọi thứ khác trong cuốn sách này hoạt động.

Hai ý tưởng nằm sau chủ đề. Thứ nhất là Product Owner của Scrum Guide, người chịu trách nhiệm tối đa hóa giá trị của sản phẩm và sắp xếp backlog của nó, và là một người chứ không phải một ủy ban (xem Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch). Thứ hai là khẩu hiệu "bạn xây nó, bạn vận hành nó", gắn với giám đốc công nghệ của Amazon là Werner Vogels trong một cuộc phỏng vấn đăng trên ACM Queue năm 2006, mà cuốn sách này không đọc trực tiếp được (trang trả về lỗi truy cập) và biết từ các mô tả thứ cấp. Như các mô tả đó báo cáo, Vogels đối chiếu mô hình cũ, trong đó lập trình viên ném phần mềm qua một bức tường cho vận hành, với một mô hình trong đó lập trình viên giữ liên hệ hằng ngày với việc vận hành phần mềm của họ và với khách hàng. [Bài viết Wikipedia về quản lý sản phẩm](https://en.wikipedia.org/wiki/Product_management) cho một mô tả chung về ngành nhưng không nói gì về vai trò Product Owner agile hay quyền sở hữu dịch vụ, nên chủ đề này làm việc nối và nói rõ như vậy.

## Các khái niệm cốt lõi

### Sản phẩm, dịch vụ, dự án

| Thuật ngữ | Ý nghĩa, trong cách dùng phổ biến | Chân trời thời gian |
|---|---|---|
| **Dự án** | Một nỗ lực tạm thời với phạm vi, điểm bắt đầu và kết thúc xác định | Kết thúc khi phạm vi được giao |
| **Sản phẩm** | Thứ được đưa đến khách hàng hay người dùng, được phát triển và cải tiến theo thời gian | Tiếp tục khi nó còn tạo giá trị |
| **Dịch vụ** | Một cách đem lại giá trị cho người khác mà họ không phải sở hữu chi phí và rủi ro (xem Chủ đề 2.1 — Quản lý dịch vụ CNTT) | Tiếp tục khi nó còn được cung cấp |

Một sản phẩm số thường cũng là một dịch vụ: người dùng phụ thuộc vào việc nó chạy tốt. Sự phân biệt giữa sản phẩm và dịch vụ ít quan trọng hơn bước chuyển từ dự án sang trách nhiệm liên tục, như Chủ đề 1.9 — Quản lý Agile mô tả.

### Quản lý sản phẩm

Bài viết Wikipedia mô tả quản lý sản phẩm là quy trình kinh doanh lập kế hoạch, phát triển, ra mắt và quản lý một sản phẩm hay dịch vụ, bảo đảm sản phẩm đáp ứng nhu cầu của thị trường mục tiêu và hỗ trợ chiến lược kinh doanh trong toàn vòng đời sản phẩm. Nó liệt kê trách nhiệm của các quản lý sản phẩm: quản lý dòng sản phẩm hằng ngày, sở hữu luận chứng kinh doanh và việc đưa ra thị trường, phân tích nghiên cứu khách hàng và đối thủ, ghi tài liệu yêu cầu, đặt chiến lược và tạo lộ trình, và căn chỉnh với thiết kế, phát triển, tiếp thị, bán hàng, hỗ trợ và pháp lý. Nó truy khái niệm về một bản ghi nhớ năm 1931 của chủ tịch Procter & Gamble là Neil H. McElroy đề nghị "Brand Men" quản lý sản phẩm. Nó nói các quản lý sản phẩm thường được đo theo trách nhiệm lãi lỗ.

Bài viết không nối quản lý sản phẩm với Product Owner agile, nên mối liên hệ là cách đọc của cuốn sách này: một Product Owner chịu trách nhiệm về giá trị của sản phẩm và sắp xếp backlog của nó, và ở nhiều tổ chức một quản lý sản phẩm đảm nhận vai trò kinh doanh rộng hơn. Trong các nhóm nhỏ, một người có thể làm cả hai.

### Product Owner và chủ sở hữu dịch vụ

| Vai trò | Chịu trách nhiệm về | Câu hỏi điển hình |
|---|---|---|
| **Product Owner** (Scrum) | Tối đa hóa giá trị của sản phẩm; sắp xếp product backlog | Chúng ta nên xây hay cải tiến gì tiếp theo, và vì sao? |
| **Quản lý sản phẩm** | Luận chứng kinh doanh, chiến lược và lộ trình của một sản phẩm | Đây có phải sản phẩm đúng, cho thị trường đúng không? |
| **Chủ sở hữu dịch vụ** (cách dùng ITSM) | Hiệu suất và cải tiến của một dịch vụ trong suốt vòng đời | Dịch vụ có đáp ứng nhu cầu người dùng, ở chi phí và rủi ro chấp nhận được không? |

Các vai trò chồng lấn. Với một dịch vụ CNTT nội bộ, một người có thể vừa là Product Owner vừa là chủ sở hữu dịch vụ. Scrum Guide nhấn mạnh Product Owner là một người, không phải một ủy ban, để các quyết định về thứ tự có một chủ rõ ràng. Dù chức danh là gì, phép thử là một người có tên có thể đưa ra các đánh đổi giữa tính năng mới, độ tin cậy và chi phí hay không.

### "Bạn xây nó, bạn vận hành nó"

Như được mô tả trong các tóm tắt thứ cấp về cuộc phỏng vấn 2006 của Vogels, cụm từ biểu đạt một mô hình trong đó nhóm xây một dịch vụ cũng vận hành nó, và nhờ đó giữ liên hệ hằng ngày với người dùng và với hậu quả của thiết kế. Cuộc phỏng vấn do Jim Gray thực hiện và đăng trên ACM Queue năm 2006; blog riêng của Amazon ghi nhận cuộc phỏng vấn khi nó xuất hiện. Cuốn sách này chưa đọc bản gốc, nên không trích dẫn nó. Mô hình có chi phí cũng như lợi ích:

| Lợi ích | Chi phí hoặc rủi ro |
|---|---|
| Người xây cảm nhận nỗi đau của khả năng vận hành kém và sửa nó | Người xây gánh tải trực và có thể kiệt sức |
| Phản hồi ngắn hơn từ người dùng và sự cố | Kỹ năng vận hành, an ninh và tuân thủ phải có trong nhóm |
| Không có bàn giao làm mất tri thức | Các chuẩn xuyên nhóm cần cơ chế khác |
| Trách nhiệm rõ ràng | Các nhóm nhỏ có thể thấy toàn bộ tải quá nặng |

Kỹ thuật độ tin cậy hệ thống và DevOps đưa ra những cách hỗ trợ các nhóm như vậy (xem Chủ đề 5.2 — DevOps và Chủ đề 5.3 — Kỹ thuật độ tin cậy hệ thống). Các nhóm nền tảng có thể cung cấp công cụ chung để mỗi nhóm sản phẩm không phải xây lại chúng.

### Các nhóm sở hữu

Quyền sở hữu cần một nhóm có kỹ năng để giao và vận hành, và thẩm quyền để hành động. Scrum mô tả một nhóm nhỏ liên chức năng, tự quản lý, không phụ thuộc người khác cho toàn bộ công việc. Trong thực tế, các nhóm sản phẩm cũng phụ thuộc vào nền tảng chung, an ninh và dịch vụ dữ liệu. Quản lý các phụ thuộc này là một phần của quyền sở hữu (xem Chủ đề 1.8 — Mở rộng quy mô Agile).

### Cấp vốn và mục tiêu

Quyền sở hữu cần nguồn vốn ổn định và mục tiêu rõ ràng. Một nhóm được cấp vốn từng dự án một sẽ bị giải tán khi dự án kết thúc, và một chủ sở hữu dịch vụ không có nhóm. Một nhóm thường trực được cấp vốn cho một sản phẩm hay dịch vụ, với mục tiêu thay đổi khi nó học, là câu trả lời thông thường (xem Chủ đề 1.9 — Quản lý Agile). Mục tiêu nên về kết quả cho người dùng và doanh nghiệp, và nên được đặt cùng chủ sở hữu.

### Quyền sở hữu trong quản lý dịch vụ

Các thực hành ITIL cần chủ sở hữu: mỗi dịch vụ có chủ sở hữu, mỗi thực hành có chủ sở hữu, và mỗi quy trình lớn có chủ sở hữu (xem Chủ đề 5.1 — Quản lý dịch vụ Agile). Chủ sở hữu dịch vụ giữ mức dịch vụ, mục trong danh mục, danh sách cải tiến và quan hệ với khách hàng (xem Chủ đề 3.7 — Quản lý mức dịch vụ và Chủ đề 3.8 — Quản lý danh mục dịch vụ).

### Giới hạn và lưu ý

Các nguồn đã đọc cho cuốn sách này không đưa bằng chứng về các mô hình sở hữu hoạt động tốt đến đâu, và bài viết Wikipedia về quản lý sản phẩm không liệt kê lời chỉ trích nào. Các lưu ý thực tế rút từ kinh nghiệm gồm chủ sở hữu có chức danh mà không có thẩm quyền, chủ sở hữu quá tải với vài sản phẩm, "bạn xây nó, bạn vận hành nó" mà không hỗ trợ dẫn đến kiệt sức, và quyền sở hữu dừng ở ranh giới nhóm trong khi luồng giá trị vượt qua nó (xem Chủ đề 5.4 — Quản lý luồng giá trị).

## Thực hành tốt

1. **Chỉ định một người chịu trách nhiệm cho mỗi sản phẩm hay dịch vụ.** Viết tên vào danh mục dịch vụ (ITIL viết là "service catalogue"). Bảo đảm họ có thẩm quyền về ưu tiên và tiếng nói trong cấp vốn.
2. **Xác định chủ sở hữu quyết định gì.** Nêu quyết định nào chủ sở hữu tự đưa ra, quyết định nào cùng nhóm, và quyết định nào cần chuyển lên cấp trên. Không có điều này, quyền sở hữu chỉ là một chức danh.
3. **Cho chủ sở hữu thời gian.** Đừng biến chủ sở hữu của nhiều sản phẩm lớn, hay chủ sở hữu còn có một công việc phân phối đầy đủ. Quyền sở hữu là công việc thật.
4. **Cấp vốn cho nhóm trong suốt vòng đời dịch vụ.** Tránh giải tán các nhóm khi dự án kết thúc. Rà soát nguồn vốn theo chu kỳ đều đặn so với kết quả.
5. **Đặt mục tiêu kết quả cùng chủ sở hữu.** Mô tả điều nên tốt hơn cho người dùng và doanh nghiệp, với vài thước đo mà nhóm có thể tự tạo ra (xem Chủ đề 5.6 — Chỉ số và đo lường).
6. **Đặt xây dựng và vận hành vào một nhóm khi có thể.** Gồm các kỹ năng phát triển, vận hành và hỗ trợ, và cho nhóm quyền truy cập dữ liệu và công cụ sản xuất trong giới hạn an toàn. Khi không thể, hãy tạo các thỏa thuận làm việc mạnh.
7. **Hỗ trợ nhóm bằng một nền tảng.** Cung cấp công cụ chung cho triển khai, giám sát và an ninh để mỗi nhóm không phải tự xây. Coi nền tảng là một sản phẩm có người dùng.
8. **Chia sẻ tải trực công bằng.** Giới hạn cuộc gọi đêm, tinh chỉnh cảnh báo và để ý kiệt sức. "Bạn xây nó, bạn vận hành nó" thất bại khi những người vận hành đã kiệt sức.
9. **Giữ một backlog cho mỗi sản phẩm.** Gồm tính năng, lỗi, công việc vận hành và hạng mục cải tiến trong một danh sách có thứ tự, để chủ sở hữu cân nhắc chúng với nhau.
10. **Nối các chủ sở hữu với nhau.** Tổ chức các cuộc trò chuyện định kỳ giữa chủ sở hữu của các sản phẩm và dịch vụ phụ thuộc nhau, để giải quyết xung đột và căn chỉnh kế hoạch.
11. **Rà soát quyền sở hữu hằng năm.** Kiểm tra mỗi dịch vụ vẫn còn một chủ sở hữu tích cực, một nhóm và một backlog, và các vai trò vẫn phù hợp.
12. **Dành chỗ cho các nhóm nhỏ.** Khi một nhóm sở hữu nhiều dịch vụ nhỏ, hãy nhóm chúng hợp lý và dùng thực hành nhẹ. Đừng áp một mô hình nặng nề cho một dịch vụ nhỏ.

## Câu hỏi để thảo luận với nhóm của bạn

**Ai chịu trách nhiệm về từng dịch vụ của chúng ta, và họ có nói vậy không?**

Liệt kê các dịch vụ chính và nêu chủ sở hữu. Rồi hỏi từng người được nêu tên xem họ có gọi mình là chủ sở hữu không. Khoảng cách giữa danh sách và các câu trả lời cho thấy quyền sở hữu mang tính danh nghĩa đến đâu. Người điều phối có thể hỏi dịch vụ nào không có chủ sở hữu và điều đó đã tốn gì.

**Chủ sở hữu của chúng ta hiện quyết định được gì mà không cần hỏi ai?**

Xin ví dụ: ưu tiên, chi tiêu, một bản phát hành, một cam kết với khách hàng. Nếu hầu hết quyết định cần người khác phê duyệt, hãy bàn cái nào nên được ủy quyền và dưới giới hạn nào. Thống nhất một quyết định để chuyển.

**Khi có gì sai trong sản xuất, ai bị đánh thức, và họ có phương tiện để sửa không?**

Hỏi ai trực và họ có thể đổi gì. Nếu không phải người xây, hỏi vì sao. Bàn phản hồi từ sự cố đến những người thiết kế dịch vụ thế nào. Thống nhất một đường để rút ngắn.

**Chúng ta cấp vốn cho dịch vụ này thế nào, và điều gì xảy ra khi một dự án kết thúc?**

Lần theo nguồn vốn cho một dịch vụ chính. Hỏi ai có thể chi cho cải tiến và ai quyết định dừng. Nếu nhóm bị giải tán sau một dự án, hãy bàn chi phí của tri thức bị mất. Đề xuất một thử nghiệm cấp vốn thường trực cho một dịch vụ.

**Chúng ta thiếu kỹ năng nào để xây và vận hành dịch vụ, và làm sao có được?**

Liệt kê các kỹ năng công việc cần: phát triển, vận hành, an ninh, dữ liệu, hỗ trợ. Đánh dấu khoảng trống. Bàn làm cặp, đào tạo, mượn một chuyên gia hay một nền tảng chung. Chọn một khoảng trống để khép.

**Chúng ta đang đòi một người làm bao nhiêu chủ sở hữu?**

Đếm số sản phẩm và dịch vụ mà mỗi chủ sở hữu chịu trách nhiệm. Chủ sở hữu quá tải không thể ra quyết định tốt. Bàn chia tách, ủy quyền hoặc cho ngừng dịch vụ. Thống nhất một mức tối đa và một kế hoạch cho chủ sở hữu vượt mức.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan việc làm quốc gia vận hành một dịch vụ ghép việc làm trực tuyến do người tìm việc và nhà tuyển dụng dùng. Dịch vụ được một nhóm dự án xây, bàn giao cho một nhóm vận hành và nay được cấp vốn qua một loạt dự án nhỏ. Trưởng bộ phận dịch vụ số nhận thấy không ai nói được ai sở hữu nó: nhà tài trợ dự án gốc đã nghỉ hưu, vận hành xử lý sự cố, và một đơn vị chính sách yêu cầu thay đổi qua một hàng đợi mất hàng tháng. Các nhà tuyển dụng phàn nàn về một biểu mẫu đăng ký không đổi suốt ba năm.

Trưởng bộ phận chỉ định một chủ sở hữu dịch vụ từ đơn vị quan hệ nhà tuyển dụng, một người hiểu cả nhà tuyển dụng lẫn dịch vụ, và cho cô tiếng nói với backlog và một phần ngân sách. Một nhóm thường trực tám người, gồm lập trình viên, một kỹ sư vận hành, một người kiểm thử và một nhà thiết kế, được lập từ những người vốn đã làm việc trên dịch vụ. Nhóm tham gia lịch trực, với giới hạn cuộc gọi đêm, và dùng một nền tảng chung cho triển khai và giám sát do một nhóm trung tâm duy trì. Các yêu cầu của đơn vị chính sách đi vào backlog duy nhất, nơi chủ sở hữu xếp hạng chúng với các cải tiến và bản sửa. Nhóm và chủ sở hữu thống nhất ba mục tiêu kết quả cho năm với vài thước đo: tỷ lệ đăng ký của nhà tuyển dụng được hoàn tất, thời gian người tìm việc tìm được một công việc phù hợp và số sự cố lặp lại.

Sau tám tháng, biểu mẫu đăng ký được xây lại, tỷ lệ hoàn tất cải thiện, và sự cố lặp lại giảm. Chủ sở hữu có thể trả lời câu hỏi của nhà tuyển dụng về điều đang được lên kế hoạch. Một số khó khăn còn lại. Chủ sở hữu còn chịu trách nhiệm một dịch vụ nhỏ khác và bị căng, đơn vị chính sách bực vì phải cạnh tranh chỗ trong backlog, và các kỹ sư trực nói nền tảng chung thiếu một công cụ họ cần. Trưởng bộ phận dịch vụ số giảm các nhiệm vụ khác của chủ sở hữu, nhờ đơn vị chính sách và chủ sở hữu lập một cuộc họp lập kế hoạch hằng tháng, và đặt yêu cầu về nền tảng vào backlog của nhóm trung tâm.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối nên làm việc với một chủ sở hữu rõ ràng và đảm nhận việc vận hành những gì họ xây. Hãy đưa cho chủ sở hữu bằng chứng từ người dùng, sự cố và chi phí, và thành thật về các đánh đổi. Hãy xin công cụ và hỗ trợ bạn cần để gánh việc trực công bằng.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành hỗ trợ các nhóm sản phẩm bằng chuyên môn, nền tảng và chuẩn chung. Khi họ vận hành dịch vụ cho người khác, hãy nêu chủ sở hữu và thống nhất mức dịch vụ. Cưỡng lại việc giao mọi vấn đề vận hành cho một nhóm trung tâm không sở hữu gì.

### Lãnh đạo và quản trị

Lãnh đạo tạo ra quyền sở hữu bằng cách nêu tên chủ sở hữu, cho họ thẩm quyền và thời gian, và cấp vốn cho các nhóm thường trực. Hãy hỏi chủ sở hữu về kết quả và bằng chứng, và tránh ghi đè ưu tiên của họ mà không thảo luận. Để ý những chủ sở hữu có chức danh mà không có quyền lực.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi khi họ biết ai chịu trách nhiệm về một dịch vụ và liên hệ được họ. Hãy nói với chủ sở hữu điều gì quan trọng nhất và điều gì làm bạn đau. Hãy mong thông tin rõ ràng về điều đang được lên kế hoạch, và có tiếng nói trong cách ưu tiên được đặt.

## Các kiểu thất bại thường gặp

- **Chức danh không có thẩm quyền.** Một chủ sở hữu không quyết định được gì. Thay vào đó, nêu chủ sở hữu quyết định gì và ủng hộ họ.
- **Quyền sở hữu bởi ủy ban.** Không ai chịu trách nhiệm. Thay vào đó, chỉ định một người cho mỗi sản phẩm hay dịch vụ.
- **Chủ sở hữu quá tải.** Một người sở hữu quá nhiều sản phẩm. Thay vào đó, giới hạn số lượng và ủy quyền.
- **Giải tán nhóm sau dự án.** Tri thức ra đi theo. Thay vào đó, cấp vốn cho các nhóm thường trực cho dịch vụ tiếp diễn.
- **"Bạn xây nó, bạn vận hành nó" mà không hỗ trợ.** Các nhóm kiệt sức. Thay vào đó, cung cấp nền tảng, lịch trực chung và cảnh báo được tinh chỉnh.
- **Quyền sở hữu dừng ở nhóm.** Luồng giá trị vượt qua các nhóm. Thay vào đó, nối chủ sở hữu của các dịch vụ phụ thuộc nhau.
- **Nhiều backlog.** Tính năng, lỗi và vận hành cạnh tranh trong các hàng đợi ẩn. Thay vào đó, giữ một backlog có thứ tự cho mỗi sản phẩm.
- **Sao chép mô hình mà không có bối cảnh.** Một mẫu của công ty lớn được áp cho một dịch vụ nhỏ. Thay vào đó, khớp mô hình với quy mô và rủi ro.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Trách nhiệm | Dịch vụ không có chủ sở hữu rõ ràng | Một số dịch vụ có chủ sở hữu không chính thức | Mọi dịch vụ có chủ sở hữu có tên với quyền quyết định và thời gian xác định | Hiệu quả của chủ sở hữu và kết quả được rà soát | Chủ sở hữu điều phối giữa các dịch vụ phụ thuộc nhau và với khách hàng |
| Nhóm và kỹ năng | Xây và vận hành là các nhóm riêng | Một số nhóm chia sẻ việc trực | Các nhóm thường trực sở hữu xây và vận hành với kỹ năng họ cần | Khoảng trống kỹ năng và tải được đo và xử lý | Kỹ năng và nền tảng được chia sẻ giữa các nhóm và nhà cung cấp |
| Cấp vốn và mục tiêu | Cấp vốn theo dự án | Có một số nhóm thường trực | Dịch vụ có nguồn vốn thường trực và mục tiêu kết quả | Nguồn vốn đi theo kết quả đã đo | Nguồn vốn và mục tiêu được căn chỉnh giữa các dịch vụ và với khách hàng |
| Backlog và ưu tiên | Ưu tiên đến từ nhiều hàng đợi | Một số chủ sở hữu giữ danh sách | Một backlog có thứ tự cho mỗi sản phẩm gồm mọi loại công việc | Dòng chảy backlog và ưu tiên được rà soát cùng các bên liên quan | Ưu tiên được căn chỉnh giữa các chủ sở hữu và với khách hàng |

## Danh mục kiểm tra

- [ ] Mỗi sản phẩm hay dịch vụ có một chủ sở hữu có tên, chịu trách nhiệm, được liệt kê trong danh mục dịch vụ.
- [ ] Điều mỗi chủ sở hữu quyết định một mình, cùng nhóm và qua chuyển lên cấp trên được viết ra.
- [ ] Chủ sở hữu có thời gian cho vai trò và một số lượng dịch vụ quản lý được.
- [ ] Một nhóm thường trực được cấp vốn cho mỗi dịch vụ tiếp diễn.
- [ ] Mỗi dịch vụ có mục tiêu kết quả với vài thước đo.
- [ ] Nhóm xây một dịch vụ có kỹ năng và quyền truy cập để vận hành nó, hoặc có thỏa thuận làm việc rõ ràng với những người làm.
- [ ] Tải trực được chia sẻ công bằng với giới hạn và cảnh báo được tinh chỉnh.
- [ ] Một nền tảng chung hỗ trợ các nhóm với triển khai, giám sát và an ninh.
- [ ] Mỗi sản phẩm có một backlog có thứ tự bao gồm tính năng, lỗi, vận hành và cải tiến.
- [ ] Quyền sở hữu được rà soát ít nhất mỗi năm một lần.

## Lời nhắc AI

**Mục đích: soạn quyền quyết định cho chủ sở hữu sản phẩm hay dịch vụ.**

```text
Help me draft decision rights for the owner of [product or service].

What the service does and who uses it: [describe].
Decisions that come up often: [list 8-12, such as priorities, spending, releases, customer commitments, supplier choices].
Rules we must follow (financial, security, legal), with source text if you have it: [paste, or write "none known"].
Current arrangement: [describe].

Produce a table with three columns: owner decides alone, owner decides with the team, and escalate. Place each decision in one column with a one-sentence reason. Mark any placement that is a guess. Do not invent rules. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: tìm các dịch vụ không có chủ sở hữu rõ ràng.**

```text
Here is a list of our services with the owner we have recorded, the team that builds, the team that runs, and who funds each: [paste].

Using only this list, identify services with no owner, with different people named as owner by different columns, or with build and run split between teams. For each, suggest a question to ask. Do not decide who should own anything. List what you are unsure of.
```

**Mục đích: lập kế hoạch mô hình trực cho một nhóm xây và vận hành.**

```text
Help me plan an on-call model for a team of [number] people who build and run [service].

Current incidents and pages (counts by week, out-of-hours share): [paste real data].
Skills in the team: [list].
Constraints: [for example time zones, leave rules].

Propose a rota design, limits on night calls, how alerts will be tuned, what support the team needs from a platform or operations group, and what to review each quarter. Leave numeric limits as [to be agreed]. Do not invent data. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: chuẩn bị luận chứng cho việc cấp vốn thường trực cho một dịch vụ.**

```text
Help me prepare a short case for funding [service] with a standing team instead of by project.

How it is funded today and what happens at the end of each project: [describe].
Costs of the current arrangement, in facts (rework, lost knowledge, delays; use only real examples): [paste].
What a standing team would need: [describe roles and rough size].
Outcome goals proposed: [list].

Write a one-page case with the problem, the proposal, risks (including the risk of a standing team becoming complacent), what we will measure, and how funding would be reviewed. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để làm rõ ai sở hữu, hỗ trợ và được tham vấn cho mỗi sản phẩm hay dịch vụ.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): dùng để mô tả hướng đi và kế hoạch ngắn hạn cho một sản phẩm hay dịch vụ.
- [agile-charter](../../../../skills/agile-charter/SKILL.md): dùng để đặt mục đích, kết quả và giới hạn của một nhóm khi bắt đầu.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): dùng để giúp một chủ sở hữu sắp xếp backlog theo giá trị và chi phí.
- [agile-discovery](../../../../skills/agile-discovery/SKILL.md): dùng để xác thực sản phẩm hay dịch vụ nên làm gì tiếp theo trước khi xây.

## Nguồn chính

- **The Scrum Guide** (Ken Schwaber và Jeff Sutherland, scrumguides.org): định nghĩa trách nhiệm của Product Owner và nhóm liên chức năng, tự quản lý.
- **Product management** (Wikipedia): mô tả chung về ngành, trách nhiệm và lịch sử của nó.
- **A Conversation with Werner Vogels** (Jim Gray, ACM Queue, 2006): cuộc phỏng vấn trong đó "bạn xây nó, bạn vận hành nó" được mô tả; hãy đọc bản gốc để có lời lẽ chính xác.
- **Site Reliability Engineering** (Google, sre.google): một cách hỗ trợ các nhóm vận hành những gì họ xây.

## Tài liệu tham khảo

1. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
2. Product management — Wikipedia — https://en.wikipedia.org/wiki/Product_management
3. ACM Queue interview with Werner Vogels (2006), noted on the AWS News Blog — Amazon Web Services — https://aws.amazon.com/blogs/aws/acm_queue_inter/
4. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Project management — Wikipedia — https://en.wikipedia.org/wiki/Project_management
8. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
9. Platform engineering — Wikipedia — https://en.wikipedia.org/wiki/Platform_engineering
