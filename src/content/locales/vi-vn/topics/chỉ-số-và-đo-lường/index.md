# Chỉ số và đo lường

**Đo lường tốt giúp một nhóm thấy công việc của mình có đang giúp người dùng và tốt lên không, và cách an toàn nhất để dùng bất kỳ thước đo nào là coi nó như một câu hỏi để thảo luận, không bao giờ như một mục tiêu phải đạt.**

## Vì sao điều này quan trọng

Các nhóm cần con số để định hướng. Không có chúng, quyết định dựa vào trí nhớ, những tiếng nói to và ai nói sau cùng. Với những con số sai, quyết định có thể tệ hơn không có: một nhóm đếm số ticket đã đóng học cách đóng ticket nhanh, dù vấn đề của người dùng có được giải quyết hay không. Đo lường mạnh mẽ, và nó thay đổi hành vi theo những cách mà người thiết kế không phải lúc nào cũng định.

Cuốn sách này đã dùng nhiều thước đo: các thước đo giao phần mềm của DORA (xem Chủ đề 3.4 — Kích hoạt thay đổi), bốn thước đo dòng chảy của Kanban Guide (xem Chủ đề 1.5 — Kanban), các chỉ báo và mục tiêu mức dịch vụ (xem Chủ đề 3.7 — Quản lý mức dịch vụ) và tải trực (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện). Chủ đề này gom chúng lại, thêm việc đặt mục tiêu bằng các mục tiêu và kết quả then chốt cùng các thước đo mức hài lòng của khách hàng, và đặt chúng đối diện lời cảnh báo cổ xưa nhất trong ngành: luật Goodhart.

[Bài viết Wikipedia về luật Goodhart](https://en.wikipedia.org/wiki/Goodhart%27s_law) nêu câu châm ngôn ở dạng thường dùng, "Khi một thước đo trở thành mục tiêu, nó không còn là thước đo tốt", và ghi công cho nhà kinh tế người Anh Charles Goodhart, người viết trong một bài báo năm 1975 về chính sách tiền tệ Anh rằng bất kỳ quy luật thống kê quan sát được nào có xu hướng sụp đổ khi áp lực được đặt lên nó nhằm mục đích kiểm soát. Cách diễn đạt thường dùng là về sau, và bài viết gán nó cho Keith Hoskin (1996) và bài báo năm 1997 của Marilyn Strathern. Điểm này có lịch sử dài trong nhiều lĩnh vực, và nó là chỗ khởi đầu đúng cho chủ đề này.

## Các khái niệm cốt lõi

### Thước đo, mục tiêu và luật Goodhart

Một **thước đo** mô tả một thứ. Một **mục tiêu** là một con số ai đó được mong đợi đạt. Bước chuyển từ cái thứ nhất sang cái thứ hai là nơi rắc rối bắt đầu. Khi mọi người được thưởng hay bị phạt vì một con số, họ tìm cách dịch chuyển con số mà không giống với việc cải thiện cái nó mô tả. Bài viết đưa ví dụ từ chính sách tiền tệ, hệ thống trường học và chăm sóc sức khỏe. Trong một tổ chức dịch vụ, các ví dụ dễ thấy là: thời gian đóng ticket giảm vì ticket bị đóng sớm, số lần triển khai tăng vì các thay đổi bị chia nhỏ, và tính sẵn sàng có vẻ tăng vì các sự cố ngừng hoạt động bị phân loại lại.

Cách khắc phục không phải tránh đo lường mà là đo cẩn thận:

- Dùng nhiều thước đo kéo ngược nhau, như tốc độ và chất lượng.
- Thảo luận các con số với những người có công việc chúng mô tả.
- Đừng gắn phần thưởng hay kỷ luật cá nhân với một con số duy nhất.
- Đổi thước đo khi chúng thôi mang thông tin.

### Các loại thước đo

| Loại | Câu hỏi nó trả lời | Ví dụ |
|---|---|---|
| **Kết quả** | Người dùng và doanh nghiệp có tốt hơn không? | Mức hài lòng của người dùng, thành công của tác vụ, doanh thu, sự cố gây hại cho người dùng |
| **Dòng chảy** | Công việc di chuyển tốt đến đâu? | Thời gian chu trình, thông lượng, tuổi của hạng mục công việc, công việc đang làm dở |
| **Hiệu suất giao hàng** | Các thay đổi đến sản xuất tốt đến đâu? | Thời gian chờ giao của thay đổi, tần suất triển khai, tỷ lệ thay đổi thất bại, thời gian phục hồi |
| **Mức dịch vụ** | Dịch vụ có đáp ứng nhu cầu người dùng không? | Tính sẵn sàng, độ trễ, tỷ lệ lỗi so với mục tiêu |
| **Sức khỏe và tính bền vững** | Việc này có thể tiếp tục không? | Tải trực, toil, làm thêm giờ, cảm nhận của nhân viên |
| **Chi phí** | Nó tốn bao nhiêu cho mỗi đơn vị giá trị? | Chi phí cho mỗi giao dịch hoặc mỗi người dùng |

Một tập cân bằng lấy từ nhiều hàng, để cải thiện một thứ không phải trả bằng cái giá của thứ khác.

### Các thước đo DORA

Các thước đo hiệu suất giao phần mềm của DORA là thời gian chờ giao của thay đổi, tần suất triển khai, thời gian phục hồi sau triển khai thất bại, tỷ lệ thay đổi thất bại và tỷ lệ triển khai phải làm lại. Hướng dẫn của DORA về các chỉ số nói tốc độ và độ ổn định không phải là đánh đổi, vì các thước đo tương quan với nhau với hầu hết các nhóm. Nó cảnh báo không đặt chúng làm mục tiêu, không dựa vào một cái, không so sánh các ứng dụng rất khác nhau và không cạnh tranh với các nhóm khác, và khuyên cải thiện so với hiệu suất quá khứ của chính bạn. Bài viết Wikipedia về DevOps thêm rằng một số chuyên gia chỉ trích phương pháp luận và chỉ số của nghiên cứu DORA, nên hãy coi chúng là những câu hỏi hữu ích có giới hạn (xem Chủ đề 5.2 — DevOps).

### Các thước đo dòng chảy

Kanban Guide định nghĩa bốn thước đo: công việc đang làm dở, thông lượng, tuổi của hạng mục công việc và thời gian chu trình. Nó lưu ý các nhóm có thể đổi tên chúng và nên thêm cái khác khi cần, và nói các thước đo chỉ quan trọng khi chúng cung cấp thông tin cho các thực hành định nghĩa luồng công việc, quản lý các hạng mục trong đó và cải tiến nó. Tuổi của hạng mục công việc đặc biệt hữu ích vì nó cho thấy rắc rối khi còn thời gian hành động (xem Chủ đề 5.4 — Quản lý luồng giá trị).

### Các thước đo mức dịch vụ

Các chỉ báo và mục tiêu mức dịch vụ (xem Chủ đề 3.7 — Quản lý mức dịch vụ) cho cái nhìn trực tiếp nhất về điều người dùng trải nghiệm. Cuốn SRE lập luận cho một vài chỉ báo được chọn từ điều người dùng quan tâm, cho phân vị chứ không chỉ trung bình, và cho các mục tiêu không phải là sự hoàn hảo. Ngân sách lỗi biến khoảng cách thành một quy tắc quyết định chung (xem Chủ đề 5.3 — Kỹ thuật độ tin cậy hệ thống).

### Mục tiêu và kết quả then chốt

**Mục tiêu và kết quả then chốt (OKR)** là một khung đặt mục tiêu. Bài viết Wikipedia mô tả một OKR là một mục tiêu, một đích quan trọng, cụ thể, được xác định rõ, ghép với ba đến năm kết quả then chốt, là các tiêu chí thành công đo được. Nó ghi công cho Andrew Grove đã phổ biến cách tiếp cận tại Intel những năm 1970 và ghi lại nó trong *High Output Management* (1983), và John Doerr đã đưa nó đến Google năm 1999. Bài viết nói OKR được chấm điểm từ 0,0 đến 1,0, các kết quả then chốt đầy tham vọng nhắm khoảng 0,7, và Doerr khuyến nghị tỷ lệ thành công mục tiêu khoảng 70 phần trăm, nên một kết quả then chốt luôn đạt thì nên được đánh giá lại. Nó khuyên tránh các mục tiêu kinh doanh như thường và ưu tiên chỉ báo dẫn trước hơn chỉ báo trễ.

Bài viết cũng ghi lại lời chỉ trích: hầu hết các tổ chức đã thôi đặt OKR cho cá nhân đóng góp, vốn có xu hướng giống danh sách tác vụ và mờ vào đánh giá hiệu suất, và OKR nhiều cấp có thể tạo ra cách tiếp cận thác nước. Nó không đưa bằng chứng độc lập về hiệu quả và mang một thẻ bảo trì về việc dựa vào các nguồn gần với chủ đề. Với các nhóm dịch vụ, OKR có thể nối kết quả (chẳng hạn, "người dùng hoàn tất đăng ký mà không cần giúp") với các kết quả then chốt đo được, miễn là chúng không bị biến thành mục tiêu cá nhân.

### Mức hài lòng của khách hàng

Đo điều người dùng nghĩ là khó làm tốt. Một công cụ phổ biến là **điểm giới thiệu ròng (NPS)**. Theo Wikipedia, nó dựa trên một câu hỏi về khả năng người trả lời giới thiệu một công ty, sản phẩm hay dịch vụ, với người ủng hộ chấm 9 hoặc 10, người thụ động 7 hoặc 8, và người chê 6 trở xuống; điểm là phần trăm người ủng hộ trừ phần trăm người chê. Fred Reichheld của Bain & Company đã phổ biến nó trong một bài báo năm 2003 trên *Harvard Business Review*. Bài viết ghi các giới hạn: các học giả nghi ngờ liệu nó có dự đoán đáng tin cậy tăng trưởng công ty không, một mục đơn cần số lượng phản hồi lớn, nó nói ít về vấn đề cụ thể, khảo sát quá nhiều gây phàn nàn, và nối nó với lương có thể làm méo hành vi, nên Reichheld khuyên tách hai thứ. Các công cụ khác tồn tại, như điểm hài lòng khách hàng và điểm công sức khách hàng, nhưng bài viết không bàn về chúng.

Dù công cụ nào, hãy hỏi một câu ngắn, luôn cho phép trả lời bằng văn bản tự do, đọc các bình luận và theo dõi điều bạn học được.

### Đo con người và tính bền vững

Các thước đo về tải và sức khỏe của nhân viên, như tải trực, toil, làm thêm giờ và cảm nhận, là thước đo tính bền vững của dịch vụ (xem Chủ đề 5.3 — Kỹ thuật độ tin cậy hệ thống). Hãy coi chúng là thông tin về hệ thống chứ không phải thước đo hiệu suất của cá nhân.

### Đo AI và tự động hóa

Khi một bước tự động hoặc có AI hỗ trợ được đưa vào, hãy thêm các thước đo chất lượng của nó: con người ghi đè nó bao lâu một lần, nó sai bao lâu một lần và nó tốn bao nhiêu (xem Chủ đề 6.2 — AI trong quản lý dịch vụ CNTT).

### Giới hạn

Thước đo mang tính một phần. Chúng bỏ sót những gì khó đếm, như lòng tin, sự khéo léo và phán đoán. Chúng có thể gây hiểu lầm khi dữ liệu không đầy đủ hoặc định nghĩa khác nhau giữa các nhóm. Các bài viết đã đọc ở đây đưa ít bằng chứng thực nghiệm về việc các chương trình đo lường có cải thiện kết quả không. Hãy coi mọi chương trình là một thí nghiệm, và rà soát nó.

## Thực hành tốt

1. **Bắt đầu với câu hỏi.** Hỏi một thước đo sẽ cung cấp thông tin cho quyết định nào, và ai sẽ hành động theo nó. Nếu không ai, đừng thu thập.
2. **Chọn một tập nhỏ, cân bằng.** Chọn vài thước đo xuyên kết quả, dòng chảy, giao hàng, mức dịch vụ và sức khỏe. Bảo đảm một số kéo ngược nhau.
3. **Định nghĩa từng thước đo chính xác.** Viết cái gì được đếm, từ đâu và cái gì bị loại trừ. Hai nhóm dùng cùng một từ cho những thứ khác nhau tạo ra các con số không so sánh được.
4. **Đo theo dịch vụ hoặc nhóm, và so sánh với quá khứ của chính nó.** Tránh xếp hạng các nhóm. DORA khuyên cải thiện so với hiệu suất quá khứ của chính bạn và cẩn thận khi so sánh các ứng dụng khác nhau.
5. **Đừng biến một con số đơn lẻ thành mục tiêu.** Dùng thước đo làm gợi ý cho thảo luận, và đặt mục tiêu dưới dạng kết quả. Khi một thước đo là mục tiêu, hãy để ý gian lận (xem luật Goodhart).
6. **Ghép con số với câu chuyện.** Với bất kỳ xu hướng nào, hãy xem vài trường hợp thật. Con số cho bạn biết nhìn ở đâu; trường hợp cho bạn biết vì sao.
7. **Nhìn phân bố.** Dùng phân vị và khoảng, không chỉ trung bình, cho các thước đo thời gian và kích thước.
8. **Ưu tiên chỉ báo dẫn trước khi có thể.** Các thước đo như tuổi của hạng mục công việc cho thấy rắc rối trước khi nó đáp xuống, không như các thước đo kết quả đã qua.
9. **Đặt mục tiêu bằng mục tiêu và kết quả then chốt một cách cẩn thận.** Nếu bạn dùng OKR, hãy giữ chúng ở cấp nhóm và tổ chức, tránh các mục tiêu kinh doanh như thường và coi một kết quả luôn đạt là dấu hiệu để nhắm cao hơn.
10. **Hỏi người dùng, ngắn gọn và thường xuyên.** Dùng một câu hỏi ngắn có văn bản tự do, đọc các bình luận và phản hồi. Đừng gắn điểm khảo sát với lương cá nhân.
11. **Để ý chi phí của việc đo.** Ưu tiên dữ liệu mà công cụ tạo ra như sản phẩm phụ của công việc. Bỏ báo cáo thủ công mà không ai dùng.
12. **Rà soát chính các thước đo.** Một hoặc hai lần mỗi năm, hỏi thước đo nào dẫn đến quyết định và thước đo nào không, và cho ngừng những cái sau.

## Câu hỏi để thảo luận với nhóm của bạn

**Thước đo nào của chúng ta đã dẫn đến một quyết định trong sáu tháng qua?**

Liệt kê các thước đo và xin một quyết định gắn với từng cái. Các thước đo không có liên kết là ứng viên để bỏ. Người điều phối có thể hỏi mọi người tin thước đo nào ít nhất và vì sao. Bỏ hoặc sửa một cái.

**Điều gì xảy ra với hành vi của chúng ta khi một con số là mục tiêu?**

Xin một ví dụ gần đây khi một con số là mục tiêu. Hỏi sâu mọi người đã làm gì để đạt nó. Câu châm ngôn Goodhart là khung. Hỏi một thước đo tốt hơn hoặc một cặp thước đo sẽ trông thế nào. Thống nhất một thay đổi.

**Chúng ta có đo tốc độ và chất lượng cùng nhau không?**

Liệt kê các thước đo tốc độ và các thước đo chất lượng. Nếu hai danh sách lệch, hãy bàn tác động. Chẳng hạn, đo thời gian đóng ticket mà không đo liên hệ lặp lại mời gọi đóng sớm. Chọn một cặp.

**Người dùng nói với chúng ta mọi việc đang ra sao, và chúng ta hỏi bằng cách nào?**

Xem các câu hỏi bạn hỏi người dùng và bao lâu một lần. Đọc to vài câu trả lời văn bản tự do. Hỏi điều gì đã đổi nhờ chúng. Thống nhất một câu hỏi ngắn để thử.

**Thước đo nào của chúng ta có thể bị dùng để phán xét cá nhân, và chúng ta nên làm gì về điều đó?**

Xác định các thước đo mọi người có thể sợ. Bàn các rủi ro và thống nhất quy tắc tường minh về điều các con số sẽ không bị dùng cho. Viết chúng ra.

**Nếu chỉ giữ được năm thước đo, chúng ta sẽ giữ những cái nào?**

Mời mỗi người chọn năm cái và so sánh. Phần chồng lấn cho thấy lõi; các khác biệt cho thấy những nhu cầu khác nhau. Kết quả là một tập khởi đầu. Kiểm tra nó bao phủ kết quả, dòng chảy, mức dịch vụ và sức khỏe.

## Trong thực tế: một ví dụ agile ITIL

Nhóm CNTT của một công ty đường sắt quốc gia vận hành các hệ thống đằng sau thông tin hành khách. Nhóm báo cáo một bảng điều khiển gồm 40 thước đo cho ban điều hành mỗi tháng. Bảng điều khiển ít người đọc, và hai thước đo chi phối thảo luận: số sự cố đóng trong thời hạn mục tiêu và số bản phát hành mỗi quý. Nhóm sự cố đã học cách đóng sự cố nhanh và mở lại sự cố mới cho cùng một lỗi, và vài nhóm phân phối chia công việc thành các bản phát hành tầm thường để đạt số đếm.

Trưởng nhóm CNTT nhờ một nhóm nhỏ xây lại các thước đo. Họ bắt đầu bằng việc hỏi bảng điều khiển nên cung cấp thông tin cho những quyết định nào. Với mỗi dịch vụ họ chọn một nhúm thước đo: một chỉ báo và mục tiêu mức dịch vụ hướng người dùng, thời gian chờ giao của thay đổi và tỷ lệ thay đổi thất bại, tuổi của hạng mục công việc cho các hạng mục vấn đề đang mở, tải trực trên mỗi kỹ sư, và một khảo sát hài lòng một câu hỏi hằng tháng cho nhân viên nhà ga với một ô văn bản tự do. Các số đếm cũ được cho ngừng. Ban điều hành thống nhất không thước đo nào được dùng để xếp hạng các nhóm hay đặt thưởng cá nhân, và trưởng nhóm CNTT viết điều này thành một quy tắc trên bảng điều khiển. Các nhóm được nhờ đặt mục tiêu cải tiến cho các dịch vụ họ sở hữu dưới dạng mục tiêu với kết quả then chốt, chỉ ở cấp nhóm.

Sau một năm, bảng điều khiển có mười hai thước đo, và buổi rà soát hằng tháng đã thành một cuộc trò chuyện về các vấn đề mở cũ nhất và các bình luận văn bản tự do. Sự cố lặp lại giảm, và các bản phát hành có ý nghĩa hơn. Một số khó khăn còn lại. Khảo sát hài lòng nhận ít phản hồi từ nhân viên ca đêm, thời gian chờ giao của một nhóm trông kém vì nó là nhóm duy nhất đếm thời gian từ ý tưởng chứ không phải từ commit, và một quản lý bắt đầu trích điểm khảo sát trong một buổi đánh giá hiệu suất. Trưởng nhóm CNTT nhờ nhóm căn chỉnh các định nghĩa, nhắc các quản lý về quy tắc, và sắp xếp một khảo sát ngắn trong lúc bàn giao ca đêm.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối nên chọn các thước đo giúp họ định hướng, lấy số liệu từ công cụ của mình và thảo luận chúng trong retrospective. Để ý các thước đo thưởng cho việc chia nhỏ công việc hoặc giấu thất bại. Chia sẻ điều bạn học với các nhóm khác.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành mang nhiều thước đo mức dịch vụ và sức khỏe. Giữ định nghĩa rõ ràng và dữ liệu đáng tin, gồm tải trực và toil, và trình bày con số kèm trường hợp và bình luận. Phản đối khi một thước đo bị dùng làm mục tiêu.

### Lãnh đạo và quản trị

Lãnh đạo định hình văn hóa đo lường. Hãy nói các con số sẽ và sẽ không được dùng để làm gì, đòi xu hướng và câu chuyện chứ không phải bảng xếp hạng, và cưỡng lại việc thêm thước đo cho mỗi mối lo mới. Thỉnh thoảng rà soát cả tập.

### Khách hàng và người dùng

Khách hàng và người dùng vừa là nguồn của thước đo vừa là đối tượng của chúng. Hãy trả lời các khảo sát ngắn khi có thể, và nói điều gì quan trọng. Hãy hỏi nhà cung cấp họ đo gì về trải nghiệm của bạn và họ đã làm gì với kết quả.

## Các kiểu thất bại thường gặp

- **Thước đo như mục tiêu.** Gian lận theo sau. Thay vào đó, dùng thước đo để thảo luận và đặt mục tiêu dưới dạng kết quả.
- **Một con số.** Một thước đo đơn lẻ làm méo hành vi. Thay vào đó, dùng một tập cân bằng kéo ngược nhau.
- **Định nghĩa không nhất quán.** Các nhóm đếm khác nhau. Thay vào đó, định nghĩa từng thước đo và nguồn của nó.
- **Bảng xếp hạng.** Các nhóm cạnh tranh và giấu vấn đề. Thay vào đó, so sánh mỗi nhóm với lịch sử của chính nó.
- **Chỉ có trung bình.** Cái đuôi dài bị giấu. Thay vào đó, nhìn phân bố và phân vị.
- **Đo thứ dễ.** Con số tiện lợi thay cho con số quan trọng. Thay vào đó, bắt đầu từ quyết định và kết quả của người dùng.
- **OKR cá nhân như danh sách tác vụ.** Mục tiêu thành đánh giá hiệu suất. Thay vào đó, giữ OKR ở cấp nhóm và tổ chức.
- **Mệt mỏi vì khảo sát và gắn với lương.** Người dùng ngừng trả lời, hoặc điểm bị thao túng. Thay vào đó, giữ khảo sát ngắn và tách khỏi lương.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Lựa chọn và định nghĩa | Thước đo tùy hứng | Một số nhóm định nghĩa vài thước đo | Một tập cân bằng với định nghĩa rõ ràng được dùng cho từng dịch vụ | Tập được rà soát về tính hữu ích và khoảng trống | Thước đo được căn chỉnh giữa các nhóm, nhà cung cấp và khách hàng |
| Dùng trong quyết định | Con số được báo cáo nhưng hiếm khi được dùng | Một số nhóm thảo luận chúng trong các buổi rà soát | Thước đo nuôi các quyết định và cải tiến định kỳ | Các quyết định gắn với thước đo được theo dõi và học hỏi | Thước đo dẫn dắt quyết định trong toàn tổ chức |
| Phòng chống gian lận | Mục tiêu được đặt trên các con số đơn lẻ | Một số nhận thức về sự méo mó | Quy tắc về cách dùng thước đo được viết ra và tuân theo | Dấu hiệu gian lận được theo dõi và thước đo được điều chỉnh | Văn hóa đo lường được chia sẻ trong toàn tổ chức |
| Thước đo người dùng và sức khỏe | Ít dữ liệu người dùng hay nhân viên | Có một số khảo sát hoặc dữ liệu tải | Khảo sát người dùng ngắn và thước đo tính bền vững là thường lệ | Kết quả dẫn đến hành động có kế hoạch và được kiểm tra | Tiếng nói của người dùng và nhân viên định hình ưu tiên giữa các dịch vụ |

## Danh mục kiểm tra

- [ ] Mỗi thước đo chúng ta báo cáo có một quyết định được nêu mà nó cung cấp thông tin.
- [ ] Chúng ta dùng một tập nhỏ cân bằng gồm các thước đo kết quả, dòng chảy, mức dịch vụ, giao hàng và sức khỏe.
- [ ] Mỗi thước đo có định nghĩa và nguồn bằng văn bản.
- [ ] Các nhóm được so sánh với lịch sử của chính họ, không xếp hạng.
- [ ] Chúng ta đã viết ra thước đo sẽ không được dùng cho việc gì.
- [ ] Thước đo thời gian cho thấy phân bố hoặc phân vị.
- [ ] Người dùng được hỏi một câu ngắn định kỳ với chỗ cho bình luận, và câu trả lời được đọc.
- [ ] Nếu chúng ta dùng OKR, chúng ở cấp nhóm hoặc tổ chức và không phải mục tiêu cá nhân.
- [ ] Dữ liệu được lấy từ công cụ như sản phẩm phụ của công việc khi có thể.
- [ ] Chúng ta rà soát chính các thước đo ít nhất mỗi năm một lần.

## Lời nhắc AI

**Mục đích: chọn một tập thước đo cân bằng cho một dịch vụ.**

```text
Help me choose a small balanced set of measures for [service].

What the service does and who uses it: [describe].
Decisions the team and its owner need to make in the next quarter: [list].
Data we already have: [list tools and records].
Measures we currently report: [list].

Propose five to eight measures across outcome, flow, delivery performance, service level, and health (for example work item age, change lead time, an availability indicator, pager load, and a short satisfaction question). For each, say what decision it informs, what data it needs, and one way it could be gamed. Do not set targets. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: tìm cách một thước đo có thể bị gian lận.**

```text
Here is a measure we use and how it is used: [describe the measure, its definition, and who sees it or is rewarded for it].

List ways people might change their behavior to improve the number without improving the underlying work, using only the description. Suggest a paired measure that would reveal each distortion and a question to ask the team. Do not accuse anyone. List what you are unsure of.
```

**Mục đích: viết OKR cho một nhóm dịch vụ mà không biến chúng thành tác vụ.**

```text
Help me draft OKRs for [team] for the next quarter.

Context: [describe the service and the main problem users face].
Outcomes we want for users: [list].
Measures we already collect: [list].
Risks we have seen with goals in the past: [for example, gaming or task lists].

Draft two or three objectives, each with three to five key results that are measurable outcomes (not tasks), using only measures we can collect, and leave target values as [to be agreed with the team]. For each key result, name the data source and a possible distortion. Do not set individual OKRs. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: phân tích bình luận văn bản tự do của khảo sát.**

```text
Here are free-text comments from our latest user survey: [paste anonymized comments].

Group the comments into themes based only on what they say. For each theme, give a name, the number of comments from my list, two short example quotes, and a question for the team. Highlight themes that appear in both positive and negative comments. Do not infer demographics or sentiment beyond the text. If the sample is small, say so. List what you are unsure of.
```

## Kỹ năng AI

- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): dùng để chọn và diễn giải các thước đo về giao hàng và hiệu suất dịch vụ.
- [key-risk-indicators](../../../../skills/key-risk-indicators/SKILL.md): dùng để chọn các thước đo cảnh báo sớm cho rủi ro với một dịch vụ.
- [survey-design](../../../../skills/survey-design/SKILL.md): dùng để thiết kế các khảo sát ngắn cho người dùng và nhân viên cho ra câu trả lời dùng được.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): dùng để thu thập và phản hồi lại phản hồi từ người dùng và đồng nghiệp.
- [feature-prioritization](../../../../skills/feature-prioritization/SKILL.md): dùng để nối các thước đo kết quả với việc nhóm làm tiếp theo.

## Nguồn chính

- **DORA's software delivery performance metrics** (dora.dev): định nghĩa năm thước đo và lưu ý về cách dùng chúng.
- **Goodhart's law** (Wikipedia): nguồn gốc và lời lẽ của câu châm ngôn rằng một thước đo được dùng làm mục tiêu thôi là thước đo tốt.
- **Objectives and key results** (Wikipedia): khung, nguồn gốc, cách chấm điểm và lời chỉ trích.
- **Net promoter score** (Wikipedia): định nghĩa, cách dùng và lời chỉ trích của một thước đo mức hài lòng.

## Tài liệu tham khảo

1. DORA's software delivery performance metrics — DORA, dora.dev — https://dora.dev/guides/dora-metrics-four-keys/
2. Goodhart's law — Wikipedia — https://en.wikipedia.org/wiki/Goodhart%27s_law
3. Objectives and key results — Wikipedia — https://en.wikipedia.org/wiki/Objectives_and_key_results
4. Net promoter score — Wikipedia — https://en.wikipedia.org/wiki/Net_promoter_score
5. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
6. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
7. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
8. Performance indicator — Wikipedia — https://en.wikipedia.org/wiki/Performance_indicator
9. Customer satisfaction — Wikipedia — https://en.wikipedia.org/wiki/Customer_satisfaction
