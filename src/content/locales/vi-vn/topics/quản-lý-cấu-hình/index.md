# Quản lý cấu hình

**Quản lý cấu hình giữ một bức tranh chính xác, dùng được về các bộ phận của một dịch vụ và quan hệ giữa chúng, và dạng hiện đại của nó là một bản ghi được xây từ mã và khám phá, được tin cậy vì chính hệ thống giữ nó luôn cập nhật.**

## Vì sao điều này quan trọng

Khi có gì hỏng, các câu hỏi đầu tiên luôn giống nhau. Thành phần này là gì? Nó nối với những gì? Cái gì đã thay đổi? Ai sở hữu nó? Nếu tìm ra câu trả lời mất một giờ, một sự cố lẽ ra sửa được trong vài phút sẽ kéo dài. Khi một thay đổi được lên kế hoạch, cùng những câu hỏi đó quyết định bạn có hiểu rủi ro không. Một bức tranh tốt về dịch vụ và các bộ phận của nó là một trong những thứ hữu ích nhất một nhóm vận hành có thể có.

Đó cũng là một trong những thứ khó giữ cho đúng sự thật nhất. Các tài liệu về hạ tầng, vẽ một lần, lỗi thời trong vài tuần. Cơ sở dữ liệu các thành phần, duy trì bằng tay, sai theo những cách không ai thấy. Cách làm việc agile và đám mây làm điều này tệ đi ở một mặt, với nhiều bộ phận nhỏ thay đổi nhanh, và tốt hơn ở mặt khác, vì cấu hình có thể được viết thành mã, lưu trong kiểm soát phiên bản và áp dụng tự động.

Bài viết của Wikipedia tiếng Anh về quản lý cấu hình mô tả nó là một quy trình quản lý để thiết lập và duy trì sự nhất quán giữa các thuộc tính của sản phẩm với yêu cầu, thiết kế và thông tin vận hành của nó trong suốt vòng đời, với nguồn gốc từ Bộ Quốc phòng Hoa Kỳ những năm 1950. Bài viết về cơ sở dữ liệu quản lý cấu hình mô tả thuật ngữ ITIL cho kho các hạng mục cấu hình và quan hệ của chúng. Bài viết về hạ tầng dưới dạng mã mô tả việc quản lý nguồn lực qua các tệp định nghĩa đọc được bằng máy. Cùng nhau chúng cho cái nhìn truyền thống và cái nhìn hiện đại, và chủ đề này nối chúng lại.

## Các khái niệm cốt lõi

### Quản lý cấu hình nói chung

Theo Wikipedia, quản lý cấu hình (CM) được dùng trong các hệ thống quân sự, trong quản lý dịch vụ CNTT theo ITIL và trong xây dựng dân dụng. Lịch sử của nó bắt đầu với Bộ Quốc phòng Hoa Kỳ những năm 1950 như một ngành kỹ thuật cho phần cứng, với các tiêu chuẩn quân sự vào cuối những năm 1960 và 1970 biến nó thành một ngành riêng. Bài viết nêu vài tiêu chuẩn, gồm ANSI/EIA-649, ISO 10007 (ấn bản 2017) và IEEE 828-2012. Các ngành cốt lõi nó liệt kê, từ các sổ tay quân sự và tiêu chuẩn EIA, là:

| Ngành | Nó làm gì |
|---|---|
| **Lập kế hoạch và quản lý** | Một kế hoạch bao gồm con người, đào tạo, quy ước đặt tên, kiểm toán và yêu cầu nhà cung cấp |
| **Xác định cấu hình** | Đặt và duy trì các đường cơ sở xác định kiến trúc và thành phần; các sản phẩm được theo dõi là **hạng mục cấu hình (CI)** |
| **Kiểm soát cấu hình** | Đánh giá các yêu cầu thay đổi và phê duyệt hoặc từ chối chúng |
| **Kế toán trạng thái cấu hình** | Ghi và báo cáo mô tả CI và các lệch khỏi đường cơ sở |
| **Xác minh và kiểm toán** | Các kiểm tra độc lập rằng hệ thống khớp với tài liệu và yêu cầu của nó |

Một **đường cơ sở (baseline)** là một điểm tham chiếu đã thống nhất; khi một thuộc tính đã vào đường cơ sở, các thay đổi đi qua kiểm soát chính thức, được đánh giá, phê duyệt rồi lập lại đường cơ sở. Bài viết phân biệt quản lý cấu hình với quản lý tài sản, vốn tập trung vào kế toán tài chính và giá trị của tài sản CNTT (xem Chủ đề 4.1 — Quản lý tài sản CNTT).

### Quản lý cấu hình phần mềm

Bài viết mô tả quản lý cấu hình phần mềm là xác định các thuộc tính phần mềm tại nhiều thời điểm và kiểm soát các thay đổi để duy trì tính toàn vẹn và khả năng truy vết, với cùng bốn quy trình là xác định, kiểm soát, kế toán trạng thái và kiểm toán. Hệ thống kiểm soát phiên bản, công cụ build và bản ghi phát hành là các ví dụ hiện đại.

### Cơ sở dữ liệu quản lý cấu hình

Wikipedia mô tả một **cơ sở dữ liệu quản lý cấu hình (CMDB)** là một thuật ngữ ITIL cho cơ sở dữ liệu lưu thông tin về tài sản phần cứng và phần mềm của một tổ chức, các CI, và các quan hệ giữa chúng. Nó "đại diện cho cấu hình được ủy quyền của các thành phần quan trọng của môi trường CNTT." Những điểm chính từ bài viết:

- **CI có các thuộc tính** như định danh, tên, mô tả, quyền sở hữu và mức độ quan trọng, có thể lên đến hàng trăm.
- **Quan hệ** thường nối một CI nguồn với một CI đích. Các quan hệ nâng cao hơn thêm một bộ mô tả, như một cơ sở dữ liệu là thành phần của một ứng dụng.
- **Liên kết (federation):** các triển khai thường liên kết dữ liệu từ các nguồn như quản lý tài sản, để mỗi nguồn giữ quyền kiểm soát dữ liệu của mình; bài viết đối chiếu điều này với việc sao chép dữ liệu vào CMDB.
- **Cách dùng:** phân tích tác động, phân tích nguyên nhân gốc, quản lý thay đổi, quản lý sự cố, kiểm kê và build.
- **Loại CI:** phần cứng, phần mềm, truyền thông và mạng, vị trí, tài liệu và con người; các tổ chức trưởng thành thêm các loại kinh doanh như sản phẩm và nhà cung cấp.
- **Thách thức:** tính liên quan (thu thập dữ liệu xuyên vòng đời của mỗi CI), bảo trì (giữ chất lượng dữ liệu cao, cần nhiều vai trò chuyên môn) và khả năng dùng (CMDB thường chỉ là cơ sở dữ liệu thuần túy thiếu trực quan hóa, nên có thể cần thêm một tầng ứng dụng).

Bài viết nêu khám phá tự động các CI và theo dõi thay đổi là các yếu tố thành công then chốt. Nó không nêu ngày thành lập, phiên bản ITIL cụ thể hay dữ liệu áp dụng, và bị đánh dấu cần thêm trích dẫn. Nó cũng nói ITIL đã đổi tên quy trình thành Service Asset and Configuration Management trong ITIL phiên bản 3 (điều này đến từ bài viết về quản lý cấu hình).

### Hạ tầng dưới dạng mã

Bài viết về hạ tầng dưới dạng mã mô tả thực hành quản lý và cấp phát nguồn lực trung tâm dữ liệu qua các tệp định nghĩa đọc được bằng máy, thay vì thiết lập thủ công hay công cụ tương tác, với các định nghĩa được giữ trong kiểm soát phiên bản. Nó phân biệt:

- Cách tiếp cận **khai báo**, mô tả trạng thái cuối mong muốn và để hệ thống tự tìm các bước, và cách tiếp cận **mệnh lệnh**, chỉ định các lệnh theo thứ tự. Bài viết nói IaC thường dùng định nghĩa khai báo hơn.
- Phương pháp **đẩy**, nơi một hệ thống điều khiển gửi chỉ thị đến máy chủ, và phương pháp **kéo**, nơi máy chủ tự lấy chỉ thị của mình.

Nó nêu nhiều công cụ từ CFEngine (1993) đến Terraform, Ansible, Puppet, Chef, Pulumi và OpenTofu, và liên hệ thực hành với DevOps bằng việc đưa lập trình viên vào cấu hình và đưa vận hành vào sớm hơn. Các nhận định về lợi ích của nó, về chi phí, tốc độ và giảm sai sót con người, được gắn thẻ cần trích dẫn. Nó trích dẫn một báo cáo năm 2020 của Unit 42 thấy khoảng 200.000 lỗ hổng tiềm tàng trong các mẫu IaC, một lời nhắc rằng mã cũng có thể mang lỗi. Bài viết không nhắc đến độ lệch cấu hình hay tính lũy đẳng.

### Cấu hình được khai báo và được khám phá

Một cách nghĩ hữu ích về quản lý cấu hình hiện đại là có hai nguồn sự thật, và giá trị nằm ở việc so sánh chúng:

| Nguồn | Nó nói gì | Điểm mạnh | Điểm yếu |
|---|---|---|---|
| **Được khai báo** (mã, định nghĩa trong kiểm soát phiên bản) | Điều chúng ta định hệ thống là | Rà soát được, có phiên bản, lặp lại được | Có thể không khớp với cái đang chạy |
| **Được khám phá** (quét, API đám mây, agent) | Cái đang tồn tại bây giờ | Phản ánh thực tế | Không nói điều gì được định và vì sao |

Một CMDB được nuôi bằng cả hai có thể cho thấy **độ lệch (drift)**, sự khác biệt giữa trạng thái định và thực tế. Các nguồn đã đọc cho cuốn sách này không dùng từ đó, nhưng nó gọi tên vấn đề mà các ngành CM về kế toán trạng thái và kiểm toán nhằm bắt.

### Quản lý cấu hình và thay đổi

Kiểm soát cấu hình và kích hoạt thay đổi là những đối tác gần gũi (xem Chủ đề 3.4 — Kích hoạt thay đổi). Các ngành CM nói các thay đổi lên hạng mục đã vào đường cơ sở được đánh giá và phê duyệt. Trong một thiết lập dựa trên pipeline, một thay đổi với mã định nghĩa hạ tầng được rà soát và kiểm thử như mã khác, và bản ghi của pipeline cho thấy ai đã đổi gì và khi nào. CMDB hay tương đương của nó rồi phản ánh kết quả.

### Cách dùng trong quản lý dịch vụ

Các quan hệ được ghi trong dữ liệu cấu hình trả lời câu hỏi xuyên các thực hành khác:

- **Sự cố:** cái gì phụ thuộc vào thành phần đang hỏng này, và ai sở hữu nó (xem Chủ đề 3.2 — Quản lý sự cố)?
- **Vấn đề:** những thành phần nào dính đến các sự cố lặp lại (xem Chủ đề 3.3 — Quản lý vấn đề)?
- **Thay đổi:** phạm vi ảnh hưởng của thay đổi này là gì?
- **Liên tục:** cái gì phải được khôi phục, và theo thứ tự nào (xem Chủ đề 3.12 — Quản lý tính liên tục của dịch vụ)?
- **An ninh:** cái gì bị phơi bày, và cái gì đã thay đổi?

### Giới hạn của các nguồn

Bài viết về quản lý cấu hình bị đánh dấu có thể cần viết lại và nói ít về triển khai thực tế. Bài viết CMDB không có phần chỉ trích và ít trích dẫn. Kinh nghiệm thực địa là CMDB thường thất bại vì cố giữ quá nhiều, quá chính xác, quá lâu. Hãy coi đó là kinh nghiệm thực tế mà cuốn sách này đưa ra, không phải phát hiện từ các nguồn.

## Thực hành tốt

1. **Bắt đầu từ những câu hỏi bạn cần trả lời.** Liệt kê các câu hỏi mà người ứng phó sự cố, người rà soát thay đổi và người lập kế hoạch liên tục hỏi, như "cái gì phụ thuộc vào cái này?" và "ai sở hữu nó?". Chỉ ghi những gì trả lời chúng.
2. **Định nghĩa một tập nhỏ các loại hạng mục cấu hình.** Bắt đầu với dịch vụ, ứng dụng, máy chủ hoặc container, cơ sở dữ liệu và các phụ thuộc bên ngoài chính. Thêm loại khi một câu hỏi đòi hỏi.
3. **Ghi quan hệ, không chỉ hạng mục.** Nắm bắt hạng mục nào phụ thuộc hạng mục nào và chúng hỗ trợ dịch vụ nào. Quan hệ làm dữ liệu hữu ích cho phân tích tác động.
4. **Chỉ định một chủ sở hữu cho mỗi hạng mục.** Một hạng mục không có chủ sở hữu là rủi ro. Biến quyền sở hữu thành một phần của cách hạng mục được tạo.
5. **Giữ cấu hình định trước trong kiểm soát phiên bản.** Diễn đạt hạ tầng và cấu hình dưới dạng mã, rà soát như mã khác và để pipeline áp dụng. Kho mã khi đó là bản ghi về ý định và lịch sử.
6. **Dùng khám phá để tìm thực tế.** Quét mạng và tài khoản đám mây để thấy cái gì tồn tại, và so sánh với cấu hình được khai báo. Điều tra các khác biệt (độ lệch) thay vì phớt lờ chúng.
7. **Liên kết thay vì sao chép khi có thể.** Để mỗi nguồn dữ liệu (sổ đăng ký tài sản, tài khoản đám mây, công cụ triển khai) sở hữu sự thật của nó, và liên kết đến chúng từ dữ liệu cấu hình, như bài viết CMDB mô tả.
8. **Tự động hóa cập nhật.** Nuôi dữ liệu cấu hình từ pipeline và từ khám phá để nó thay đổi khi hệ thống thay đổi. Cập nhật thủ công sẽ tụt lại.
9. **Lập đường cơ sở cho những gì quan trọng.** Với dịch vụ quan trọng, ghi cấu hình đã duyệt và áp dụng kiểm soát thay đổi chính thức cho các lệch khỏi nó. Với phần còn lại, kiểm soát nhẹ hơn là đủ.
10. **Kiểm toán đều đặn.** So sánh dữ liệu với thực tế cho một mẫu hạng mục mỗi quý, và sửa quy trình đằng sau mọi khác biệt. Đây là ngành xác minh và kiểm toán trong thực tế.
11. **Làm dữ liệu dễ dùng.** Cung cấp trực quan hóa và tìm kiếm cho người ứng phó và người lập kế hoạch, vì dữ liệu không đọc nhanh được sẽ không được dùng.
12. **Giữ an ninh trong tầm mắt.** Coi mã cấu hình là nhạy cảm, quét các mẫu tìm điểm yếu và kiểm soát ai có thể đổi đường cơ sở. Con số của Unit 42 trong bài về hạ tầng dưới dạng mã là một lời nhắc về rủi ro.

## Câu hỏi để thảo luận với nhóm của bạn

**Khi có sự cố, mất bao lâu để chúng ta biết cái gì phụ thuộc vào thành phần đang hỏng?**

Xem sự cố gần nhất và thời gian dành cho câu hỏi này. Hỏi câu trả lời đến từ đâu: một sơ đồ, một người, một lần tìm kiếm. Người điều phối có thể hỏi điều gì sẽ tiết kiệm nhiều thời gian nhất. Thường đó là một danh sách phụ thuộc và chủ sở hữu cho các dịch vụ quan trọng nhất. Thống nhất lập một danh sách cho một dịch vụ.

**Hạ tầng của chúng ta được định nghĩa ở đâu, và nó có khớp với cái đang chạy không?**

Hỏi các môi trường chính có được dựng từ mã không và có bao nhiêu lần ai đó đổi chúng bằng tay. Tìm các khác biệt. Nếu bạn không biết, hãy lên kế hoạch một phép so sánh cho một môi trường. Bàn cách ngăn thay đổi thủ công hoặc phát hiện chúng nhanh chóng.

**Hạng mục nào trong bản ghi cấu hình của chúng ta không có chủ sở hữu hoặc chưa được xác nhận gần đây?**

Lấy một mẫu và đếm. Hỏi vì sao chúng ở trạng thái đó: không có quy trình cho chủ sở hữu, không có nhắc nhở, không có hậu quả. Bàn một cơ chế nhẹ, như xác nhận hằng năm hoặc thẻ chủ sở hữu bắt buộc khi tạo. Chọn một cái.

**Chúng ta giữ dữ liệu nào mà không ai dùng?**

Liệt kê các trường và loại bản ghi và hỏi ai đã dùng chúng trong quý qua. Bài viết CMDB nêu bảo trì là thách thức cốt lõi, và dữ liệu không dùng là chi phí không có lợi ích. Bỏ hoặc ngừng duy trì những gì không ai dùng.

**Chúng ta cần thấy gì để phê duyệt một thay đổi lên dịch vụ quan trọng một cách tự tin?**

Hỏi những người rà soát. Các câu trả lời điển hình: thay đổi chạm vào gì, cái gì phụ thuộc vào nó, lần trước nó đã làm gì. Hỏi dữ liệu cấu hình có thể cho cái nào trong số này. Chọn một mảnh còn thiếu để thêm.

**Ai được phép đổi đường cơ sở của các dịch vụ quan trọng của chúng ta, và làm sao chúng ta biết khi họ làm?**

Xin danh sách và bằng chứng về các thay đổi. Bàn các thay đổi ngoài pipeline có được phát hiện không. Thống nhất độ lệch sẽ được tìm thế nào và ai hành động.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan thuế quốc gia chạy 120 ứng dụng và sự kết hợp của máy chủ tại chỗ và dịch vụ đám mây. Một nhóm sáu kỹ sư vận hành duy trì một CMDB được nạp từ một bảng tính ba năm trước. Trong một sự cố lớn trên cổng khai thuế, các kỹ sư phát hiện CMDB liệt kê một máy chủ cơ sở dữ liệu đã bị cho ngừng một năm trước và bỏ sót bộ cân bằng tải thực sự đã hỏng. Sự cố mất thêm ba giờ để giải quyết vì cần chừng đó thời gian để tìm ra cổng phụ thuộc vào gì.

Trưởng vận hành và một kỹ sư rà soát những câu hỏi mà người ứng phó đặt ra. Họ thu hẹp phạm vi CMDB về dịch vụ, ứng dụng, các thành phần hạ tầng chính đứng sau chúng và các phụ thuộc bên ngoài chính, và bỏ các loại ít giá trị. Hạ tầng của cổng khai thuế được chuyển thành mã trong kiểm soát phiên bản, và pipeline ghi một bản ghi về từng thành phần được triển khai vào CMDB. Một lần quét khám phá mạng và tài khoản đám mây chạy hằng đêm, và một báo cáo liệt kê khác biệt giữa dữ liệu được khai báo và được khám phá. Mỗi hạng mục có một trường chủ sở hữu, mà báo cáo cũng kiểm tra. Một góc nhìn phụ thuộc đơn giản cho cổng khai thuế được dựng từ dữ liệu.

Một quý sau, góc nhìn phụ thuộc của cổng đủ chính xác để nhóm sự cố tiếp theo dùng nó trong mười phút đầu. Báo cáo khác biệt hằng đêm tìm thấy 14 máy chủ không được quản lý, hầu hết đã bị cho ngừng hoặc được chủ sở hữu nhận. Vấn đề vẫn còn. Các dịch vụ ngoài cổng khai thuế vẫn dựa vào dữ liệu cũ, và một nhóm vẫn đổi tay một máy chủ cơ sở dữ liệu mà pipeline sau đó ghi đè, gây ra một sự cố ngừng ngắn. Trưởng vận hành mở rộng cách tiếp cận sang ba dịch vụ tiếp theo, thêm một quy tắc rằng thay đổi sản xuất đi qua pipeline, và nhờ báo cáo khám phá đánh dấu các thay đổi thủ công.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối định nghĩa cấu hình qua mã. Hãy đặt hạ tầng và thiết lập trong kiểm soát phiên bản, rà soát chúng và để pipeline áp dụng. Gắn thẻ nguồn lực với chủ sở hữu và dịch vụ, và mô tả phụ thuộc trong kho mã hoặc bản ghi dịch vụ.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành dùng và duy trì dữ liệu cấu hình. Giữ phạm vi nhỏ, so sánh cấu hình được khai báo và được khám phá, và đuổi theo độ lệch. Đưa điều bạn học từ sự cố trở lại các loại và quan hệ bạn ghi.

### Lãnh đạo và quản trị

Lãnh đạo quyết định dữ liệu cấu hình đáng được bao nhiêu công sức. Hãy hỏi nó hỗ trợ các quyết định nào, như phân tích tác động và lập kế hoạch liên tục, và đánh giá theo mức dùng. Tránh cấp vốn cho một cơ sở dữ liệu khổng lồ vì chính nó. Ủng hộ các kiểm soát pipeline giữ bản ghi đúng sự thật.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi khi sự cố được giải quyết nhanh hơn và thay đổi ít làm hỏng hơn, điều mà dữ liệu cấu hình tốt giúp. Họ hiếm khi thấy dữ liệu. Hãy hỏi nhà cung cấp họ biết một thay đổi ảnh hưởng gì thế nào và tìm nguyên nhân của một sự cố ngừng hoạt động ra sao.

## Các kiểu thất bại thường gặp

- **Cố ghi mọi thứ.** Dữ liệu quá lớn để giữ cho đúng. Thay vào đó, bắt đầu từ các câu hỏi và dịch vụ quan trọng.
- **Bảo trì thủ công.** Bản ghi tụt lại. Thay vào đó, nuôi dữ liệu từ pipeline và từ khám phá.
- **Không có quan hệ.** Hạng mục được liệt kê nhưng không nối. Thay vào đó, nắm bắt phụ thuộc và dịch vụ mà mỗi hạng mục hỗ trợ.
- **Không có chủ sở hữu.** Không ai xác nhận hay sửa bản ghi. Thay vào đó, yêu cầu một chủ sở hữu và kiểm tra đều đặn.
- **Thay đổi tay ngoài pipeline.** Thực tế và ý định lệch xa nhau. Thay vào đó, đưa thay đổi qua pipeline và phát hiện độ lệch.
- **Dữ liệu không đọc được.** Người ứng phó không dùng được cơ sở dữ liệu. Thay vào đó, cung cấp tìm kiếm và trực quan hóa.
- **Sao chép thay vì liên kết.** Dữ liệu trùng lặp cũ đi. Thay vào đó, liên kết đến nguồn sở hữu sự thật.
- **Coi mã cấu hình là vô hại.** Các mẫu mang lỗ hổng. Thay vào đó, quét và rà soát chúng.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Phạm vi và quan hệ | Thành phần được biết không chính thức | Một số dịch vụ có danh sách thành phần | Dịch vụ chính có hạng mục, chủ sở hữu và phụ thuộc được ghi | Mức bao phủ và độ chính xác được đo và khoảng trống được đóng | Dữ liệu cấu hình trải rộng các nhóm, đám mây và nhà cung cấp |
| Cấu hình được khai báo | Hệ thống được cấu hình bằng tay | Một số môi trường dùng mã | Hạ tầng và cấu hình cho dịch vụ chính là mã trong kiểm soát phiên bản | Lịch sử thay đổi và độ lệch được theo dõi | Mã cấu hình được chia sẻ và tái sử dụng giữa các nhóm |
| Khám phá và xác minh | Thực tế được giả định | Thỉnh thoảng chạy quét | Khám phá đều đặn được so với dữ liệu khai báo | Khác biệt và nguyên nhân được đo và giảm | Khám phá và xác minh được tự động hóa trong toàn tổ chức |
| Dùng dữ liệu | Dữ liệu hiếm khi được tra cứu | Dùng trong một số sự cố | Dùng thường quy cho sự cố, thay đổi và lập kế hoạch liên tục | Mức dùng và lợi ích được đo và dữ liệu được cải thiện | Dữ liệu hỗ trợ quyết định trong toàn tổ chức và với đối tác |

## Danh mục kiểm tra

- [ ] Chúng ta đã liệt kê các câu hỏi mà người ứng phó và người rà soát cần dữ liệu cấu hình để trả lời.
- [ ] Chúng ta ghi một tập nhỏ các loại hạng mục với chủ sở hữu và quan hệ.
- [ ] Hạ tầng và cấu hình cho dịch vụ chính nằm trong kiểm soát phiên bản.
- [ ] Thay đổi sản xuất lên các dịch vụ đó đi qua pipeline.
- [ ] Kết quả khám phá được so sánh với cấu hình được khai báo theo lịch.
- [ ] Các khác biệt (độ lệch) được điều tra và sửa.
- [ ] Bản ghi được nuôi tự động từ pipeline và khám phá khi có thể.
- [ ] Một mẫu bản ghi được kiểm toán với thực tế mỗi quý.
- [ ] Dữ liệu có thể được người ứng phó tìm kiếm và trực quan hóa dễ dàng.
- [ ] Mã cấu hình được rà soát và quét tìm điểm yếu.

## Lời nhắc AI

**Mục đích: quyết định ghi gì bằng cách liệt kê các câu hỏi bạn cần trả lời.**

```text
Help me decide what configuration data to record for [service].

The questions responders and change reviewers ask, in our words: [list].
What we record today: [describe, or write "nothing"].
Where data lives (tools, repositories, cloud accounts): [list].

For each question, say what item types and relationships would be needed to answer it, where the data could come from automatically, and what would still need a person. Propose a minimal set of item types and fields. Mark guesses. Do not invent tools we do not have. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: tóm tắt độ lệch giữa cấu hình được khai báo và được khám phá.**

```text
Here is a list of items found by discovery and a list of items declared in our configuration code or records.

Discovered: [paste names or IDs, with type and key attributes].
Declared: [paste names or IDs, with type and key attributes].

Using only these lists, identify items found but not declared, items declared but not found, and items where attributes differ. Group them and suggest a question to ask about each group (for example whether it is retired, owned by someone else, or created by hand). Do not guess the cause. List what you are unsure of.
```

**Mục đích: dựng một góc nhìn phụ thuộc cho một dịch vụ.**

```text
Help me describe the dependencies of [service] so that responders can use them in an incident.

What the service does: [describe].
Components I know (applications, databases, network, cloud services, external suppliers): [list with how they connect].
Owners I know: [list].

Produce a simple text diagram and a table with: component, what depends on it, owner (or "unknown"), and what to check first if it fails (only from my text; otherwise "ask owner"). Highlight single points of failure that appear in my description. Do not invent components. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: lập kế hoạch một cuộc kiểm toán hằng quý các bản ghi cấu hình.**

```text
Plan a one-hour quarterly audit of our configuration records for [scope].

How records are created and updated today: [describe].
Sample size we can handle: [number].

Give a method: how to choose a sample, how to check each item against reality, what to record, how to calculate the share that is accurate (from the audit results only), and how to turn errors into process fixes. Keep it tool-free. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [configuration-management](../../../../skills/configuration-management/SKILL.md): dùng để lập kế hoạch ghi gì, giữ nó đúng sự thật thế nào và dùng nó ra sao.
- [change-request](../../../../skills/change-request/SKILL.md): dùng để viết bản ghi thay đổi tham chiếu đến các hạng mục bị ảnh hưởng.
- [runbook](../../../../skills/runbook/SKILL.md): dùng để biến tri thức cấu hình thành các bước mà người ứng phó có thể làm theo.
- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): dùng để đặt dịch vụ, ứng dụng và hạ tầng vào một bức tranh kiến trúc.
- [evolutionary-architecture](../../../../skills/evolutionary-architecture/SKILL.md): dùng để giữ cấu hình và thiết kế thay đổi an toàn theo thời gian.

## Nguồn chính

- **Configuration management** (Wikipedia): lịch sử, các ngành cốt lõi, đường cơ sở và tiêu chuẩn của quản lý cấu hình.
- **Configuration management database** (Wikipedia): định nghĩa, nội dung, cách dùng và thách thức của một CMDB.
- **Infrastructure as code** (Wikipedia): quản lý nguồn lực qua các định nghĩa đọc được bằng máy, với danh sách công cụ và ghi chú về lợi ích và rủi ro.
- **ITIL** (Wikipedia): khung trong đó CMDB và quản lý cấu hình xuất hiện.

## Tài liệu tham khảo

1. Configuration management — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management
2. Configuration management database — Wikipedia — https://en.wikipedia.org/wiki/Configuration_management_database
3. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
6. Software configuration management — Wikipedia — https://en.wikipedia.org/wiki/Software_configuration_management
7. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
8. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
9. Change management — Wikipedia — https://en.wikipedia.org/wiki/Change_management
