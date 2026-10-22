# DevOps

**DevOps là nỗ lực đưa phát triển và vận hành vào một dòng công việc với quyền sở hữu chung, tự động hóa và phản hồi nhanh, và nó bổ sung cho quản lý dịch vụ bằng cách đặt các kiểm soát mà ITIL quan tâm vào pipeline.**

## Vì sao điều này quan trọng

DevOps là tên mà hầu hết các tổ chức dùng cho điểm gặp nhau giữa giao hàng liên tục và vận hành CNTT. Nó lớn lên từ một sự bực bội: lập trình viên được thưởng cho thay đổi còn nhân viên vận hành được thưởng cho sự ổn định, nên hai nhóm kéo về hai hướng ngược nhau, và lần bàn giao giữa họ là nơi tốc độ và chất lượng bị mất. DevOps đòi cả hai chia sẻ trách nhiệm cho toàn bộ con đường từ ý tưởng đến dịch vụ đang chạy.

Với những người làm ITSM, DevOps có thể có vẻ đe dọa hoặc thừa. Đe dọa, vì nó dường như gạt bỏ các quy trình mà vận hành đã xây sau những trải nghiệm đau đớn. Thừa, vì nhiều điều nó khuyến nghị, như rà soát sự cố, tự động hóa và cải tiến liên tục, đã có trong ITIL. Không cách nhìn nào hoàn toàn đúng. Bài viết Wikipedia về DevOps đối chiếu DevOps với khung mà nó gọi là "từ trên xuống" và cứng nhắc của ITIL những năm 1990, điều đúng với các phiên bản cũ; ITIL 4 được viết để căn chỉnh với agile, DevOps và lean (xem Chủ đề 2.2 — ITIL).

Định nghĩa của DevOps còn tranh cãi, và bài viết Wikipedia nói vậy. Chủ đề này dùng bài viết đó, các trang nghiên cứu của DORA và bản tường thuật của Gene Kim về "Three Ways" (Ba Con đường), và nêu điều đã được xác lập, điều còn tranh luận và điều cuốn sách này không thể xác minh.

## Các khái niệm cốt lõi

### DevOps là gì

[Bài viết Wikipedia về DevOps](https://en.wikipedia.org/wiki/DevOps) mô tả nó là sự tích hợp và tự động hóa phát triển phần mềm và vận hành CNTT, có thể rút ngắn thời gian phát triển và cải thiện vòng đời phát triển. Nó trích dẫn các nhà nghiên cứu học thuật Len Bass, Ingo Weber và Liming Zhu, những người mô tả nó là một tập thực hành nhằm giảm thời gian giữa việc commit một thay đổi vào hệ thống và việc đưa nó vào sản xuất bình thường. Bài viết lưu ý rằng thuật ngữ được dùng trong nhiều bối cảnh và định nghĩa của nó còn tranh luận, và các nghiên cứu học thuật từ 2015 đến 2017 không thấy đồng thuận về các đặc điểm của nó.

Bài viết báo cáo rằng các đề xuất kết hợp phương pháp phát triển với triển khai và vận hành có từ cuối những năm 1980 và đầu những năm 1990, và hội nghị DevOps Days đầu tiên được tổ chức tại Ghent, Bỉ, năm 2009, do Patrick Debois sáng lập. Nó thường mô tả DevOps bằng ba nguyên tắc, quyền sở hữu chung, tự động hóa luồng công việc và phản hồi nhanh, và lưu ý rằng chính cách mô tả này cũng còn tranh luận.

### Ba Con đường

Gene Kim, tác giả của *The Phoenix Project* và *The DevOps Handbook*, mô tả ba nguyên tắc mà từ đó, ông lập luận, các mẫu DevOps có thể được suy ra. Như được tóm tắt trong bài đăng của chính Kim trên trang IT Revolution và trong các tóm tắt thứ cấp:

| Con đường | Ý tưởng | Ví dụ |
|---|---|---|
| **Con đường thứ nhất: dòng chảy** | Nhìn hiệu suất của toàn hệ thống, không phải một ngăn riêng lẻ; tăng tốc công việc từ ý tưởng đến giá trị | Đừng chuyển các lỗi đã biết xuống hạ nguồn; đừng để tối ưu hóa cục bộ làm suy giảm tổng thể; luôn tìm cách tăng dòng chảy |
| **Con đường thứ hai: phản hồi** | Rút ngắn và khuếch đại các tín hiệu chảy ngược từ các giai đoạn sau về giai đoạn trước | Đo từ xa, pipeline thất bại nhanh, phản hồi của khách hàng |
| **Con đường thứ ba: học tập và thử nghiệm liên tục** | Xây một văn hóa chấp nhận những rủi ro nhỏ, có chủ ý và học từ chúng | Dành thời gian cho việc học, biến các khám phá cục bộ thành cải tiến toàn cục |

Chúng khớp với các chủ đề của chính cuốn sách này: dòng chảy (xem Chủ đề 1.5 — Kanban và Chủ đề 1.7 — Phát triển phần mềm Lean), phản hồi (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện) và học tập (xem Chủ đề 1.10 — Học tập Agile). Một lưu ý về thuật ngữ: bài đăng của Kim gọi Con đường thứ hai là "khuếch đại các vòng phản hồi", còn Handbook gọi nó là "phản hồi".

### Thực hành

Theo Wikipedia, tích hợp liên tục và giao hàng liên tục là then chốt cho thành công của DevOps, cùng với tự động hóa. Bài viết nhắc đến kiểm soát phiên bản, máy ảo, container hóa và DevOps cơ sở dữ liệu, áp dụng kiểm soát phiên bản, kiểm thử tự động và CI/CD cho thay đổi lược đồ và dữ liệu. Nó mô tả GitOps là quản lý cấu hình triển khai trong kiểm soát phiên bản, và DevSecOps là tích hợp an toàn vào giao hàng qua kiểm thử "shift left", gồm phân tích tĩnh và động. Danh sách năng lực của DORA gồm giao hàng liên tục, tích hợp liên tục, tự động hóa triển khai, tự động hóa kiểm thử, phát triển dựa trên trunk, kiểm soát phiên bản, quản lý thay đổi cơ sở dữ liệu, giám sát và khả năng quan sát, an toàn thấm khắp, làm việc theo lô nhỏ và giới hạn công việc đang làm dở (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).

### Văn hóa

Danh sách năng lực của DORA, đã đọc cho cuốn sách này, gồm các mục văn hóa: văn hóa tổ chức sinh sản, văn hóa học tập, lãnh đạo chuyển đổi, sự hài lòng công việc, phúc lợi và thử nghiệm của nhóm. Trang liệt kê chúng không giải thích chúng và không xếp hạng. Một trang khác của DORA nói các chỉ số của nó dự đoán hiệu suất tổ chức và phúc lợi của thành viên nhóm, và cảnh báo chống quyền sở hữu theo ngăn riêng, khuyến nghị quyền sở hữu chung giữa các nhóm phát triển, vận hành và phát hành. Điều này đồng ý với Con đường thứ ba: DevOps cũng là về cách mọi người làm việc cùng nhau nhiều như về công cụ.

Từ viết tắt dễ nhớ phổ biến **CALMS** (văn hóa, tự động hóa, lean, đo lường, chia sẻ) thường được dùng để tóm tắt DevOps. Bài viết Wikipedia về DevOps không nhắc đến nó, và cuốn sách này chưa xác minh nguồn gốc của nó, nên nó chỉ được nêu ở đây vì độc giả sẽ gặp nó.

### DevOps và agile

Bài viết nói build và kiểm thử tự động, tích hợp liên tục và giao hàng liên tục bắt nguồn từ thế giới agile, và việc Scrum bỏ qua các thực hành kỹ thuật đã khiến công việc tự động hóa tách ra thành DevOps. Điều này khớp với Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch, vốn lưu ý rằng Scrum không nói cách xây, kiểm thử, triển khai hay vận hành phần mềm. Extreme Programming đã chứa nhiều thực hành kỹ thuật (xem Chủ đề 1.6 — Extreme Programming). DevOps mở rộng mối quan tâm agile qua điểm phát hành.

### DevOps và ITIL

Bài viết đối chiếu DevOps với khung "từ trên xuống" và cứng nhắc của ITIL những năm 1990 và không bàn thêm về ITSM. Một bức tranh công bằng hơn cho ngày nay:

| | Có xu hướng nhấn mạnh | Rủi ro nếu dùng một mình |
|---|---|---|
| **DevOps** | Dòng chảy, tự động hóa, quyền sở hữu chung, phản hồi nhanh | Bỏ bê bản ghi, kiểm soát và cái nhìn dịch vụ rộng hơn |
| **ITIL 4** | Giá trị, thực hành, quản trị, nhiều thực hành dịch vụ | Coi thực hành là quy trình nặng nề |

Chương trình chứng chỉ riêng của ITIL 4 gồm một mô-đun chuyên biệt gọi là High Velocity IT (HVIT) trong lộ trình Managing Professional, như bài viết Wikipedia về ITIL liệt kê. Điều đó cho thấy chủ sở hữu coi công việc số, chuyển động nhanh là một chủ đề riêng. Một sự kết hợp thực tế: dùng các thực hành DevOps để triển khai các thực hành ITIL trong pipeline, như ghi thay đổi tự động, chạy kiểm thử làm kiểm soát rủi ro, và giám sát làm thực hành sự kiện (xem Chủ đề 3.4 — Kích hoạt thay đổi và Chủ đề 5.1 — Quản lý dịch vụ Agile).

### DevOps và kỹ thuật độ tin cậy hệ thống

Bài viết Wikipedia nói Google phát triển kỹ thuật độ tin cậy hệ thống năm 2003, và một số tác giả gốc của nó coi SRE là một cách triển khai DevOps. Bài viết về SRE gọi nó là một triển khai cụ thể của DevOps, hẹp hơn vì nó tập trung vào việc xây các hệ thống đáng tin (xem Chủ đề 5.3 — Kỹ thuật độ tin cậy hệ thống).

### Thước đo

Các thước đo hiệu suất giao phần mềm của DORA cho một từ vựng chung: thời gian chờ giao của thay đổi, tần suất triển khai, thời gian phục hồi sau triển khai thất bại, tỷ lệ thay đổi thất bại và tỷ lệ triển khai phải làm lại (xem Chủ đề 3.4 — Kích hoạt thay đổi và Chủ đề 5.6 — Chỉ số và đo lường). Bài viết Wikipedia báo cáo rằng các chỉ số được công bố năm 2016, thước đo phục hồi được đổi tên trong báo cáo 2023, một thước đo làm lại được thêm năm 2024, và năm 2025 DORA thay các bậc hiệu suất bằng bảy nguyên mẫu nhóm. Nó cũng ghi lại rằng một số chuyên gia chỉ trích phương pháp luận và chỉ số của nghiên cứu DORA. Hãy coi các thước đo là những câu hỏi hữu ích chứ không phải điểm số.

### Lời chỉ trích và giới hạn

Ngoài việc thiếu một định nghĩa ổn định, bài viết báo cáo lời chỉ trích về phương pháp luận DORA. Những lời chỉ trích thực tế phổ biến, được đưa ra ở đây như kinh nghiệm thực hành chứ không phải phát hiện từ nguồn, gồm "DevOps" bị dùng làm chức danh cho vai trò vận hành cũ, công cụ được áp dụng mà không đổi văn hóa, và tuân thủ bị bỏ bê trong việc theo đuổi tốc độ. Bài viết không đưa thống kê áp dụng.

## Thực hành tốt

1. **Thống nhất bạn hiểu DevOps là gì.** Viết một phát biểu ngắn về nó nghĩa là gì với các nhóm của bạn, như quyền sở hữu chung một dịch vụ, giao hàng tự động và phản hồi nhanh. Một định nghĩa chung ngăn các cuộc tranh cãi về nhãn.
2. **Chia sẻ quyền sở hữu dịch vụ.** Làm những người xây một dịch vụ chịu trách nhiệm về việc nó chạy ra sao, và cho họ phương tiện: trực, giám sát và quyền truy cập. Hỗ trợ họ bằng chuyên môn vận hành.
3. **Tự động hóa đường đến sản xuất.** Xây một pipeline build, kiểm thử và triển khai mọi thay đổi. Ghi lại nó đã làm gì. Coi pipeline là một sản phẩm có người dùng.
4. **Làm việc theo lô nhỏ.** Phát hành thay đổi nhỏ thường xuyên. Điều này giảm rủi ro và tăng tốc phản hồi, như danh sách năng lực của DORA gợi ý.
5. **Rút ngắn các vòng phản hồi.** Làm kết quả kiểm thử, giám sát và phản hồi người dùng nhìn thấy được với nhóm trong vài phút hoặc vài giờ. Theo Con đường thứ hai: khuếch đại các tín hiệu chảy ngược.
6. **Nhìn toàn bộ dòng chảy.** Vẽ con đường từ ý tưởng đến dịch vụ đang chạy và tìm các lần chờ dài nhất, gồm cả những lần ngoài nhóm phát triển. Theo Con đường thứ nhất: đừng tối ưu một ngăn với cái giá là tổng thể (xem Chủ đề 5.4 — Quản lý luồng giá trị).
7. **Xây an toàn và tuân thủ vào bên trong.** Đặt các kiểm tra an toàn và chính sách tự động vào pipeline, và ghi bằng chứng như sản phẩm phụ (xem Chủ đề 3.13 — Quản lý an toàn thông tin và Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ).
8. **Coi văn hóa là mối quan tâm hạng nhất.** Đầu tư vào học tập, rà soát không đổ lỗi, an toàn tâm lý và mục tiêu chung. Danh sách năng lực của DORA gồm văn hóa cạnh các mục kỹ thuật là có lý do.
9. **Dành thời gian để học và thử nghiệm.** Dành thời gian và nơi an toàn cho các thí nghiệm, và chia sẻ bài học. Theo Con đường thứ ba.
10. **Dùng các thực hành ITIL ở nơi chúng giúp.** Giữ các thực hành sự cố, vấn đề, thay đổi và tri thức, được triển khai qua tự động hóa và bản ghi nhẹ. Bỏ các bước không phục vụ mục đích.
11. **Đo cẩn thận.** Theo dõi các thước đo kiểu DORA theo từng dịch vụ, cải thiện so với hiệu suất quá khứ của chính bạn và tránh đặt chúng làm mục tiêu (xem Chủ đề 5.6 — Chỉ số và đo lường).
12. **Tránh cái bẫy chức danh.** Đừng tạo một "nhóm DevOps" riêng trở thành một ngăn mới giữa phát triển và vận hành. Lan truyền các thực hành giữa các nhóm, và dùng các nhóm nền tảng hay nhóm hỗ trợ để giúp.

## Câu hỏi để thảo luận với nhóm của bạn

**DevOps nghĩa là gì ở đây, và lần đầu chúng ta nghe từ này ở đâu?**

Hỏi mỗi người một định nghĩa một câu. So sánh. Bài viết Wikipedia nói định nghĩa còn tranh luận, nên khác biệt là điều được dự kiến. Viết một phát biểu chung cụ thể: ai sở hữu gì, cái gì được tự động hóa, có phản hồi nào. Người điều phối có thể hỏi từ này đã đổi được gì cho đến nay.

**Một thay đổi chờ ở đâu giữa "sẵn sàng" và "đã lên sóng", và ai sở hữu lần chờ?**

Lần theo một thay đổi gần đây và liệt kê các lần chờ: rà soát, phê duyệt, môi trường, khung giờ phát hành. Đánh dấu những lần ngoài nhóm. Hỏi lần chờ nào bảo vệ chống rủi ro thật và lần nào là thói quen. Chọn một cái để rút ngắn, làm việc cùng chủ sở hữu của nó.

**Khi có gì hỏng trong sản xuất, ai trực, và họ có phương tiện để sửa không?**

Hỏi ai bị gọi và họ có thể làm gì một mình. Nếu người xây không trực, hãy hỏi vì sao. Nếu nhân viên vận hành không đổi được mã, hãy hỏi họ làm gì. Bàn quyền sở hữu chung ở đây sẽ ra sao và cần hỗ trợ gì.

**Chúng ta nhận phản hồi gì sau một bản phát hành, và nhanh đến đâu?**

Liệt kê các tín hiệu: kiểm thử, giám sát, ticket hỗ trợ, bình luận người dùng. Hỏi mỗi cái mất bao lâu để đến nhóm. Các câu trả lời điển hình: kiểm thử trong vài phút, ticket trong vài ngày. Chọn một tín hiệu để tăng tốc.

**Thử một điều và thất bại an toàn đến đâu?**

Xin một ví dụ gần đây về một thí nghiệm thất bại và điều gì đã xảy ra với những người liên quan. Con đường thứ ba phụ thuộc vào việc học từ những thất bại nhỏ. Bàn điều gì sẽ làm thí nghiệm an toàn hơn, như giới hạn, hoàn tác và rà soát không đổ lỗi.

**Các thực hành ITIL của chúng ta xuất hiện trong pipeline thế nào, và ở đâu thì không?**

Lấy các thực hành thay đổi, sự cố và tri thức và hỏi mỗi cái xuất hiện ở đâu trong tự động hóa. Khoảng trống chỉ về công việc thủ công hoặc các kiểm soát không có bằng chứng. Thống nhất một thực hành để chuyển vào pipeline.

## Trong thực tế: một ví dụ agile ITIL

Một dịch vụ bưu chính quốc gia có nhóm phát triển 40 người và nhóm vận hành 25 người. Lập trình viên phát hành một phiên bản lớn mỗi quý và giao một gói cùng một tài liệu dài cho vận hành, những người triển khai nó trong một cuối tuần. Vận hành phàn nàn rằng lập trình viên không hiểu sản xuất, và lập trình viên phàn nàn rằng không liên lạc được với vận hành khi một lỗi cần sửa nhanh. Một bản phát hành gần đây mất 19 giờ, làm hỏng trang theo dõi bưu kiện và dẫn đến một ngày đổ lỗi qua lại.

Một trưởng bộ phận nền tảng mới đề xuất một thử nghiệm với một nhóm sản phẩm, dịch vụ theo dõi bưu kiện. Bốn lập trình viên và hai kỹ sư vận hành lập thành một nhóm duy nhất sở hữu dịch vụ từ đầu đến cuối. Lập trình viên tham gia lịch trực, được các kỹ sư vận hành hỗ trợ. Nhóm xây một pipeline build, kiểm thử và triển khai mọi thay đổi đã hợp nhất lên môi trường staging, và triển khai lên sản xuất với một bước phê duyệt do chủ sở hữu dịch vụ đưa ra. Bản ghi thay đổi do pipeline tạo ra. Giám sát được thêm vào, cảnh báo đến cả nhóm, và mỗi sự cố sản xuất có một buổi rà soát không đổ lỗi ngắn. Nhóm thống nhất phát hành ít nhất hằng tuần, và trưởng bộ phận nền tảng nhờ nhóm theo dõi thời gian chờ giao, tần suất triển khai, tỷ lệ thay đổi thất bại và thời gian phục hồi.

Sau bốn tháng, nhóm phát hành hai lần một tuần, thời gian trung vị từ hợp nhất đến sản xuất dưới một ngày, và sự cố gần nhất được lập trình viên viết thay đổi sửa trong chưa đầy một giờ. Không phải mọi thứ đều hiệu quả. Các kỹ sư vận hành thấy cảnh báo của lập trình viên nhiễu, và lập trình viên bực khi phải trực đêm. Một nhóm lân cận phụ thuộc vào theo dõi bưu kiện không được báo về nhịp mới và bị bất ngờ bởi một thay đổi. Trưởng bộ phận nền tảng dành thời gian cho nhóm tinh chỉnh cảnh báo, thêm một lịch trực với giới hạn số cuộc gọi đêm, và sắp xếp một cuộc họp hằng tháng với các nhóm phụ thuộc. Kiểm toán nội bộ yêu cầu xem bằng chứng về các phê duyệt, và trưởng bộ phận nền tảng cho xem các bản ghi pipeline và các buổi rà soát sự cố.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối đảm nhận trách nhiệm vận hành: giám sát, trực và học từ sự cố. Hãy xây pipeline và phản hồi bạn cần, và xin chuyên môn vận hành thay vì bàn giao. Giữ thay đổi nhỏ và nhìn thấy được.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành mang tri thức về dịch vụ hỏng thế nào và kiểm soát nào quan trọng. Hãy giúp xây nền tảng và các kiểm tra, chia sẻ việc trực và dạy. Tránh làm cổng chắn; hãy trở thành người tạo điều kiện làm cho đường an toàn trở thành đường dễ.

### Lãnh đạo và quản trị

Lãnh đạo tạo ra các điều kiện: mục tiêu chung giữa phát triển và vận hành, thời gian cho tự động hóa, một văn hóa học từ thất bại và sự tin cậy vào bằng chứng từ pipeline. Tránh đổi tên các nhóm mà không đổi động lực, và hãy đòi kết quả, không phải việc áp dụng DevOps.

### Khách hàng và người dùng

Khách hàng và người dùng thấy DevOps như cải tiến nhanh hơn và khôi phục nhanh hơn. Hãy mong các thay đổi nhỏ, thường xuyên và giao tiếp rõ ràng về chúng. Hãy phản hồi nhanh, vì nhóm được thiết lập để dùng nó.

## Các kiểu thất bại thường gặp

- **Một nhóm DevOps như ngăn riêng mới.** Phát triển và vận hành vẫn không nói chuyện. Thay vào đó, lan truyền thực hành giữa các nhóm và dùng các nhóm nền tảng để tạo điều kiện.
- **Công cụ không có văn hóa.** Một pipeline được xây và không có gì khác đổi. Thay vào đó, đổi quyền sở hữu, động lực và phản hồi cùng nhau.
- **Tốc độ không an toàn.** Phát hành nhanh lên và lỗi tăng. Thay vào đó, đầu tư vào kiểm thử, giám sát và hoàn tác trước nhịp độ.
- **Bỏ hẳn ITIL.** Bản ghi và kiểm soát biến mất. Thay vào đó, giữ các thực hành và triển khai chúng trong pipeline.
- **Lập trình viên trực mà không có hỗ trợ.** Kiệt sức theo sau. Thay vào đó, chia sẻ lịch trực, tinh chỉnh cảnh báo và giới hạn cuộc gọi đêm.
- **Chỉ số thành mục tiêu.** Các nhóm gian lận số lần triển khai. Thay vào đó, dùng nhiều thước đo và so sánh với lịch sử của chính bạn.
- **Bỏ qua các nhóm phụ thuộc.** Thay đổi làm các nhóm lân cận bất ngờ. Thay vào đó, thông báo nhịp và thay đổi cho các nhóm phụ thuộc vào nhóm của bạn.
- **Coi từ ngữ là mục tiêu.** Nhãn thay cho kết quả. Thay vào đó, hỏi dòng chảy, phản hồi và học tập tốt hơn trông thế nào với người dùng của bạn.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Quyền sở hữu chung | Phát triển và vận hành bàn giao lúc phát hành | Một số nhóm chia sẻ việc trực | Các nhóm sở hữu dịch vụ của mình từ đầu đến cuối với hỗ trợ | Tác động của quyền sở hữu lên chất lượng và tải được đo | Mô hình sở hữu được điều phối giữa các nhóm, nền tảng và nhà cung cấp |
| Tự động hóa và dòng chảy | Giao hàng thủ công và theo lô | Có một số pipeline | Một pipeline chung build, kiểm thử, triển khai và ghi thay đổi | Thời gian chờ giao, tần suất, thất bại và phục hồi được đo và tinh chỉnh | Pipeline và dòng chảy được tối ưu giữa các nhóm và luồng giá trị |
| Phản hồi | Phản hồi đến từ người dùng sau khi có vấn đề | Một số nhóm giám sát bản phát hành | Kiểm thử, giám sát và phản hồi người dùng đến các nhóm trong vài phút hoặc vài giờ | Tốc độ và chất lượng phản hồi được đo và cải thiện | Vòng phản hồi trải rộng các nhóm, nhà cung cấp và khách hàng |
| Văn hóa và học tập | Đổ lỗi theo sau thất bại | Một số buổi rà soát không đổ lỗi | Rà soát không đổ lỗi, thí nghiệm và thời gian học là thường lệ | Hành động học tập được theo dõi và kết quả được kiểm tra | Việc học lan liên tục trong toàn tổ chức |

## Danh mục kiểm tra

- [ ] Chúng ta có một định nghĩa chung bằng văn bản về DevOps nghĩa là gì với chúng ta.
- [ ] Các nhóm xây một dịch vụ chia sẻ trách nhiệm vận hành nó.
- [ ] Một pipeline build, kiểm thử và triển khai thay đổi và ghi lại nó đã làm gì.
- [ ] Thay đổi được phát hành theo lô nhỏ, thường xuyên.
- [ ] Phản hồi từ kiểm thử, giám sát và người dùng đến nhóm nhanh chóng.
- [ ] Kiểm tra an toàn và chính sách chạy trong pipeline.
- [ ] Việc trực được chia sẻ, với giới hạn cuộc gọi đêm và cảnh báo được tinh chỉnh.
- [ ] Rà soát sự cố không đổ lỗi và tạo ra hành động có chủ sở hữu.
- [ ] Chúng ta theo dõi thời gian chờ giao, tần suất triển khai, tỷ lệ thay đổi thất bại và thời gian phục hồi cho từng dịch vụ.
- [ ] Các nhóm phụ thuộc được báo về nhịp phát hành và các thay đổi lớn của chúng ta.

## Lời nhắc AI

**Mục đích: vẽ các lần chờ giữa "sẵn sàng" và "đã lên sóng".**

```text
Help me map the waits for a typical change in [team or service].

The steps from "ready" to "live," who does each, whether it is manual or automated, and how long work waits before it (use real data; mark estimates as estimates): [paste].

Produce a simple text diagram, highlight the three longest waits and which team owns each, and suggest, for each, a question to ask about whether the wait protects against a real risk. Do not invent durations. If the data are too thin, say what to collect. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: kiểm tra các thực hành ITIL xuất hiện ở đâu trong pipeline của bạn.**

```text
Help me compare our pipeline with service management practices.

What our pipeline does today, step by step: [paste].
The practices we want to check: change enablement, release and deployment, incident management, problem management, knowledge management, configuration management.

For each practice, say what in the pipeline description appears to support it (quote my words), what is missing, and one question to ask. Do not claim that a standard requires anything unless I pasted its text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: lập kế hoạch thử nghiệm quyền sở hữu chung với một nhóm.**

```text
Plan a four-month pilot of shared ownership for [service], bringing together [number] developers and [number] operations engineers.

Today's arrangement: [describe who builds, who runs, who is on call].
Concerns from each side: development [list]; operations [list].
Measures we have: [list].

Give a plan with: team formation, on-call arrangements with limits, pipeline and monitoring work, how the team learns from incidents, which measures to review (leave targets as [to be agreed]), what evidence to keep for audit, and how to tell dependent teams. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: thiết kế một buổi rà soát sự cố không đổ lỗi cho một nhóm hỗn hợp.**

```text
Design a 45-minute blameless review for this incident: [describe the incident factually].

People involved: [roles from development and operations].
Information available (timeline, alerts, changes): [list].

Provide an agenda that builds the timeline first, identifies contributing causes in systems and processes, notes what went well, and ends with at most three actions with owners. Include prompts that avoid blame. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): dùng để lập kế hoạch các bản phát hành nhỏ, thường xuyên và các kiểm tra quanh chúng.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): dùng để xây các kiểm thử tự động mà một pipeline phụ thuộc vào.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): dùng để chuyển kiểm thử và kiểm tra an toàn lên sớm hơn trong pipeline.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): dùng để thiết kế lịch trực chung với giới hạn công bằng.
- [postmortem](../../../../skills/postmortem/SKILL.md): dùng để chạy các buổi rà soát không đổ lỗi nuôi Con đường thứ ba.

## Nguồn chính

- **DevOps** (Wikipedia): tổng quan về định nghĩa, thực hành, quan hệ với agile, SRE và DevSecOps, và các chỉ số DORA, kèm những tranh luận được ghi nhận.
- **The Three Ways: The Principles Underpinning DevOps** (Gene Kim, IT Revolution): nguồn cho dòng chảy, phản hồi và học tập liên tục.
- **DORA capabilities and metrics** (dora.dev): danh sách năng lực của chương trình nghiên cứu và các thước đo giao phần mềm của nó.
- **The DevOps Handbook** và **The Phoenix Project** (Gene Kim và đồng tác giả): các cuốn sách phát triển Ba Con đường chi tiết.

## Tài liệu tham khảo

1. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
2. The Three Ways: The Principles Underpinning DevOps — Gene Kim, IT Revolution — https://itrevolution.com/the-three-ways-principles-underpinning-devops/
3. DORA capabilities — DORA, dora.dev — https://dora.dev/capabilities/
4. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
5. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
6. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
7. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
8. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
9. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
