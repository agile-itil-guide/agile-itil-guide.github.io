# Dự báo phân phối và các chỉ số lập kế hoạch

**Dự báo phân phối và các chỉ số lập kế hoạch giúp một nhóm nói, bằng các khoảng trung thực, khi nào công việc có khả năng hoàn thành và nhóm có thể nhận bao nhiêu việc, bằng cách quan sát dòng chảy liên tục của công việc đã xong và năng lực của nhóm, và chúng hiệu quả với các nhóm dịch vụ khi công việc có kế hoạch và công việc phát sinh ngắt quãng được đếm cùng nhau.**

## Vì sao điều này quan trọng

Các nhóm agile hướng tới giao phần mềm liên tục, và mọi người phụ thuộc vào việc giao đó đều hỏi cùng những câu: khi nào việc này xong, nhóm có thể nhận bao nhiêu, và điều gì xảy ra khi có việc khẩn đến? Một nhóm không thể trả lời các câu hỏi này bằng bằng chứng sẽ quay về những lời hứa không giữ được, và những người phụ thuộc vào họ học cách nghi ngờ mọi ngày hẹn.

Một nhóm vận hành dịch vụ cảm nhận điều này sắc nét hơn hầu hết. Công việc cải tiến có kế hoạch, yêu cầu dịch vụ và sự cố dùng chung những con người. Một kế hoạch bỏ qua phần không có kế hoạch sẽ thất bại ngay tuần đầu tiên có sự cố. Một dự báo đến từ lịch sử của chính nhóm, và nêu rõ khoảng của nó, đứng vững trước thực tế tốt hơn một ngày hẹn đến từ hy vọng.

Chủ đề này mô tả cách dự báo từ dòng chảy của công việc đã xong, cách lập kế hoạch quanh năng lực nhóm, và những chỉ số lập kế hoạch nào giúp hay gây hiểu lầm. Scrum, sprint và velocity là một cách lập kế hoạch; một phần ngắn gần cuối đề cập chúng cho các nhóm có dùng. Các thước đo ở đây xây trên các thước đo dòng chảy trong Chủ đề 1.5 — Kanban và hướng dẫn đo lường rộng hơn trong Chủ đề 5.6 — Chỉ số và đo lường.

## Các khái niệm cốt lõi

### Dự báo từ dòng chảy, không phải từ lời hứa

Một dự báo là phát biểu về tương lai dựa trên bằng chứng từ quá khứ, và nó mang tính bất định. Kanban Guide định nghĩa kỳ vọng mức dịch vụ là một dự báo về một hạng mục công việc nên mất bao lâu để chạy qua luồng công việc, dựa trên các thời gian chu trình trước đây, và nói rằng đó không phải là một thỏa thuận. Định nghĩa đó là mô hình tốt cho mọi dự báo phân phối: dùng lịch sử thật, nói rõ nó bao phủ gì, và tránh hứa nhiều hơn điều bạn đã đo (xem Chủ đề 1.5 — Kanban).

Hai loại dự báo thường gặp:

- **Một hạng mục sẽ mất bao lâu?** Nhìn các hạng mục tương tự đã xong mất bao lâu, và nêu một khoảng hoặc một phát biểu như "hầu hết các hạng mục loại này xong trong vòng một số ngày nhất định".
- **Chúng ta sẽ xong bao nhiêu vào một ngày, hay khi nào một tập hạng mục sẽ xong?** Nhìn nhóm thường hoàn thành bao nhiêu hạng mục trong một khoảng thời gian, và áp khoảng đó vào công việc còn lại.

### Các thước đo dòng chảy đằng sau một dự báo

Kanban Guide định nghĩa bốn thước đo, và chúng là nguyên liệu thô của dự báo phân phối:

| Thước đo | Nó cho bạn biết gì | Nó nuôi dự báo thế nào |
|---|---|---|
| **Thời gian chu trình** | Một hạng mục đã xong mất bao lâu từ đầu đến cuối | Độ phân tán của các thời gian chu trình gần đây cho một khoảng về một hạng mục mới sẽ mất bao lâu |
| **Thông lượng** | Bao nhiêu hạng mục được hoàn thành trong một khoảng thời gian | Khoảng thông lượng gần đây cho một khoảng về bao nhiêu sẽ xong trong một giai đoạn tương lai |
| **Công việc đang làm dở (WIP)** | Bao nhiêu hạng mục đã bắt đầu nhưng chưa xong | WIP quá nhiều làm kéo dài thời gian chu trình và khiến mọi dự báo kém tin cậy |
| **Tuổi của hạng mục công việc** | Một hạng mục chưa xong đã ở trong tiến trình bao lâu | Cho thấy các hạng mục đã già hơn hầu hết hạng mục đã xong, khi vẫn còn thời gian hành động |

Hướng dẫn lưu ý rằng các nhóm có thể đổi tên các thước đo này và nên thêm những thước đo khác khi hữu ích, và rằng các thước đo chỉ quan trọng khi chúng cung cấp thông tin cho cách nhóm làm việc. Hãy dùng phân vị và khoảng, không chỉ trung bình, vì đuôi dài ẩn trong trung bình (xem Chủ đề 5.6 — Chỉ số và đo lường).

### Một phương pháp dự báo đơn giản

Một nhóm có thể dự báo mà không cần công cụ đặc biệt:

1. Thu thập thông lượng cho mỗi tuần trong tám đến mười hai tuần qua, hoặc các giai đoạn tương tự, từ các hạng mục đã xong thật.
2. Lấy giá trị thấp nhất, một giá trị điển hình và giá trị cao nhất trong các con số này.
3. Chia số hạng mục còn lại cho từng con số để có một khoảng các giai đoạn cần để xong.
4. Nêu khoảng đó, dữ liệu nó đến từ đâu, và điều gì sẽ làm nó đổi, như công việc mới, thay đổi trong nhóm hay một phụ thuộc.

Đây là quy tắc ngón tay cái, không phải một tiêu chuẩn. Nó giả định công việc tương lai giống công việc quá khứ và các hạng mục có kích thước tương đối giống nhau. Khi điều đó không đúng, hãy nói ra, và coi khoảng là rộng hơn. So sánh mỗi dự báo với những gì đã xảy ra và điều chỉnh phương pháp, như Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng khuyên cho dự báo nhu cầu.

### Năng lực của nhóm

Năng lực là lượng công việc một nhóm có thể tiếp nhận trong một khoảng thời gian. Với một nhóm phân phối, nó không phải số người nhân với số ngày trong giai đoạn. Nghỉ phép, nhiệm vụ hỗ trợ, các cuộc họp và công việc phát sinh đều làm giảm phần dành cho hạng mục có kế hoạch. Một phát biểu năng lực hữu ích liệt kê số người và số ngày có sẵn, rồi trừ đi một phần giữ lại cho công việc phát sinh, dựa trên những gì vài giai đoạn gần nhất cho thấy.

Kỹ năng lập kế hoạch năng lực và Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng mô tả năng lực cho dịch vụ và hạ tầng. Cùng logic áp dụng cho một nhóm: lập kế hoạch bằng các khoảng, đối chiếu với những gì đã xảy ra, và xem lại kế hoạch khi sự kiện thay đổi.

### Công việc có kế hoạch và không có kế hoạch cùng nhau

Các nhóm dịch vụ nhận sự cố, yêu cầu khẩn và thay đổi mà không ai lên lịch. Nếu chúng không được đếm, dự báo cho công việc có kế hoạch sẽ quá lạc quan. Hãy cho công việc phát sinh các loại hạng mục riêng, đếm bao nhiêu cái đến và mỗi cái mất bao lâu, và giữ dữ liệu cạnh công việc có kế hoạch. Điều này cũng cho Product Owner hoặc chủ sở hữu dịch vụ bằng chứng về những sự cố lặp lại nào đang ăn năng lực, hỗ trợ các quyết định sửa nguyên nhân (xem Chủ đề 3.3 — Quản lý vấn đề).

### Dòng phân phối liên tục và nhịp phát hành

Các nhóm giao liên tục phát hành các thay đổi nhỏ khi chúng sẵn sàng, thay vì chờ đến cuối giai đoạn lập kế hoạch. Điều này rút ngắn thời gian giữa hoàn thành và giao, và làm cho dự báo dễ kiểm tra hơn: mỗi hạng mục đã xong là một điểm dữ liệu. Các thay đổi vẫn theo cách tiếp cận kích hoạt thay đổi của tổ chức, và các thay đổi tiêu chuẩn được ủy quyền trước giúp ích ở đây (xem Chủ đề 3.4 — Kích hoạt thay đổi và Chủ đề 3.5 — Quản lý phát hành và triển khai).

### Nếu bạn dùng Scrum, sprint và velocity

Một số nhóm lập kế hoạch theo các chu kỳ có độ dài cố định. Scrum Guide 2020, của Ken Schwaber và Jeff Sutherland, định nghĩa Scrum là một khung nhẹ cho các giải pháp thích ứng với các vấn đề phức tạp. Các sự kiện của nó diễn ra trong Sprint, một khung thời gian một tháng hoặc ngắn hơn. Phần này bao gồm mức tối thiểu một nhóm cần nếu dùng chúng; hãy đọc chính hướng dẫn trước khi đổi cách làm việc của một nhóm.

- **Sprint và Sprint Goal:** Sprint là khung thời gian, và Sprint Goal là mục tiêu duy nhất cho nó. Một mục tiêu mà người ngoài nhóm có thể hiểu dẫn dắt các lựa chọn tốt hơn một danh sách ticket.
- **Product Backlog, Product Owner và Scrum Master:** Product Backlog là danh sách có thứ tự về những gì sản phẩm cần. Product Owner là một người chịu trách nhiệm về thứ tự của nó, và Scrum Master chịu trách nhiệm thiết lập Scrum và giúp nhóm áp dụng.
- **Increment và Definition of Done:** Increment là một bước dùng được, đã xác minh hướng tới Product Goal, và Definition of Done là tiêu chuẩn chất lượng công việc phải đạt để được tính. Một nhóm dịch vụ có thể đưa giám sát, runbook và hoàn tác đã thử vào đó.
- **Các sự kiện:** Sprint Planning, Daily Scrum, Sprint Review và Sprint Retrospective. Retrospective là nơi nhóm kiểm tra cách mình đã làm việc và lập kế hoạch cải tiến (xem Chủ đề 6.1 — Các cuộc trò chuyện của nhóm).
- **Velocity:** một con số dựa trên ước lượng mà một số nhóm dùng để lập kế hoạch nhận bao nhiêu việc. Chỉ dùng nó cho việc lập kế hoạch của chính nhóm. Nếu nó thành mục tiêu, các nhóm sẽ thổi phồng ước lượng, nên hãy ưu tiên các thước đo dòng chảy, vốn đếm hạng mục đã xong, và các thước đo kết quả.

Hướng dẫn nói rằng Scrum là một khung, không phải một phương pháp hoàn chỉnh. Nó không bao gồm ứng phó sự cố, mức dịch vụ hay quy trình thay đổi, và chỉ dùng một số phần của nó không làm kết quả thành Scrum. Nếu bạn điều chỉnh nó, hãy gọi tên biến thể một cách trung thực. Sự pha trộn giữa các sự kiện Scrum và dòng chảy Kanban đôi khi được gọi là [Scrumban](https://en.wikipedia.org/wiki/Scrumban).

## Thực hành tốt

1. **Dự báo từ lịch sử của chính bạn.** Dùng thời gian chu trình và thông lượng của các hạng mục đã xong gần đây, và nêu giai đoạn mà dữ liệu bao phủ. Đừng mượn con số của nhóm khác.
2. **Đưa ra một khoảng, không phải một ngày duy nhất.** Cho thấy trường hợp thấp, điển hình và cao, và nói điều gì sẽ làm kết quả dịch chuyển. Một ngày không có khoảng hứa một sự chắc chắn mà bạn không có.
3. **Đếm công việc phát sinh.** Ghi sự cố, yêu cầu khẩn và gián đoạn thành các hạng mục công việc với loại riêng. Đo bao nhiêu cái đến và mỗi cái mất bao lâu.
4. **Đặt năng lực từ dữ liệu.** Liệt kê số người và số ngày có sẵn, trừ nghỉ phép và nhiệm vụ hỗ trợ, và giữ lại một phần cho công việc phát sinh dựa trên các giai đoạn gần đây. Xem lại phần đó định kỳ.
5. **Giới hạn công việc đang làm dở.** Quá nhiều việc đã bắt đầu làm kéo dài thời gian chu trình và làm yếu mọi dự báo. Đặt một giới hạn và xem lại khi dữ liệu đổi (xem Chủ đề 1.5 — Kanban).
6. **Theo dõi tuổi của hạng mục công việc hằng ngày.** Tuổi cho thấy rắc rối ở các hạng mục chưa xong khi còn thời gian hành động. Rà soát các hạng mục già nhất trước.
7. **Dùng phân vị và phân bố.** Nói rằng hầu hết hạng mục của một loại xong trong một số ngày, và cho thấy cái đuôi chậm. Trung bình ẩn nó đi.
8. **So sánh dự báo với thực tế.** Sau mỗi giai đoạn, ghi lại điều đã dự báo và điều đã xảy ra. Điều chỉnh phương pháp, không chỉ con số.
9. **Giữ ước lượng cho việc lập kế hoạch, không phải để phán xét.** Nếu nhóm ước lượng các hạng mục, hãy dùng con số cho việc lập kế hoạch của chính nhóm, và đừng xếp hạng người hay nhóm theo chúng (xem Chủ đề 5.6 — Chỉ số và đo lường).
10. **Làm cho dự báo được nhìn thấy với những người phụ thuộc vào chúng.** Chia sẻ khoảng và các giả định với khách hàng và các bên liên quan, và cập nhật khi sự kiện thay đổi.
11. **Đưa công việc cải tiến vào cùng dòng chảy.** Đặt các bản sửa vấn đề, công việc giám sát và tự động hóa cạnh các tính năng, để sự đánh đổi hiện rõ (xem Chủ đề 3.15 — Cải tiến liên tục).
12. **Nếu dùng sprint và velocity, hãy giữ chúng nhỏ và trung thực.** Thống nhất phần nào của Scrum bạn theo, gọi tên biến thể, và thử một cách tiếp cận dựa trên dòng chảy nếu gián đoạn chiếm ưu thế.

## Câu hỏi để thảo luận với nhóm của bạn

**Hôm nay chúng ta trả lời "khi nào việc này xong?" như thế nào, và câu trả lời dựa trên gì?**

Hỏi ba câu trả lời gần nhất nhóm đã đưa ra và mỗi câu dựa trên gì. So sánh chúng với những gì đã xảy ra. Các nhóm thường thấy các ngày hẹn đến từ hy vọng hoặc từ ý kiến của người cấp cao nhất. Tiếp theo, hỏi nhóm có thể dùng lịch sử nào thay thế.

**Bao nhiêu phần thời gian của chúng ta dành cho công việc không ai lên kế hoạch, và chúng ta có biết điều đó từ dữ liệu không?**

Đếm các hạng mục có kế hoạch, yêu cầu khẩn và sự cố trong vài tuần qua. Người điều phối có thể hỏi tỷ lệ này ổn định hay thay đổi theo mùa, và ai quyết định khi một gián đoạn thắng công việc có kế hoạch. Thống nhất cách ghi nhận từ nay.

**Thời gian chu trình của chúng ta trông thế nào, và chúng ta sẽ nói gì nếu một khách hàng hỏi một yêu cầu điển hình mất bao lâu?**

Vẽ hoặc liệt kê thời gian chu trình của các hạng mục đã xong gần đây. Hỏi hầu hết mất bao lâu, những cái chậm nhất mất bao lâu, và điều gì giải thích các hạng mục chậm. Bàn xem một kỳ vọng mức dịch vụ dựa trên lịch sử này có công bằng không và ai nên nghe nó.

**Hạng mục nào của chúng ta hiện đã già hơn hầu hết các hạng mục đã xong?**

Nhìn các hạng mục đang mở già nhất. Hỏi vì sao mỗi cái bị kẹt, ai có thể gỡ, và nhóm sẽ làm gì hôm nay. Kết thúc bằng việc quyết định tần suất nhóm rà soát tuổi.

**Lần gần đây nhất dự báo của chúng ta hóa ra sai là khi nào, và chúng ta đã đổi gì sau đó?**

Hỏi một ví dụ gần đây, dự báo và kết quả. Tìm xem dự báo đã bỏ sót gì: công việc phát sinh, một phụ thuộc, hay các hạng mục lớn hơn dự kiến. Thống nhất một thay đổi cho phương pháp và cách nhóm sẽ kiểm tra nó.

**Nếu chúng ta dùng sprint hoặc velocity, chúng đang làm gì cho chúng ta, và chúng ta sẽ mất gì nếu bỏ chúng?**

Hỏi thành thật mỗi thứ giải quyết vấn đề gì. Tìm bằng chứng, như tập trung hơn hay mục tiêu rõ hơn, và tìm tác hại, như ước lượng bị thổi phồng hay gián đoạn bị bỏ qua. Người điều phối nên để ý bất kỳ thay đổi nào loại bỏ các vòng phản hồi, vốn là phần hữu ích. Thống nhất một thí nghiệm và cách so sánh kết quả.

## Trong thực tế: một ví dụ agile ITIL

Phòng CNTT của một bệnh viện khu vực có một nhóm bảy người bảo trì ứng dụng xếp lịch bệnh nhân. Các quản lý phòng khám yêu cầu ngày hẹn, và nhóm vẫn đưa ra. Phần lớn các ngày hẹn bị lỡ, vì sự cố từ các khoa, yêu cầu từ phòng khám và việc vá lỗi bảo mật cứ liên tục đến, và nhóm dành phần lớn ngày cho chúng.

Trưởng nhóm bắt đầu ghi mọi hạng mục, có kế hoạch hay không, kèm ngày bắt đầu và kết thúc. Sau tám tuần, dữ liệu cho thấy khoảng một nửa thời gian của nhóm dành cho công việc phát sinh và hầu hết các hạng mục có kế hoạch xong trong chưa đầy hai tuần, với một cái đuôi dài các hạng mục chờ một nhóm khác. Nhóm thống nhất ba thay đổi. Nhóm sẽ nêu mỗi dự báo dưới dạng một khoảng, dùng thông lượng và thời gian chu trình gần đây. Nhóm sẽ giữ lại một nửa năng lực cho công việc phát sinh và chỉ lập kế hoạch với phần còn lại. Nhóm sẽ rà soát các hạng mục đang mở già nhất mỗi sáng.

Trong hai tháng sau đó, các dự báo hầu hết đúng, và các quản lý phòng khám, giờ thấy một khoảng và các giả định của nó, lập kế hoạch quanh đó. Chủ sở hữu dịch vụ, một quản lý vận hành phòng khám, có thể thấy sự cố lặp lại nào đang ăn năng lực, và nâng mức ưu tiên cho bản sửa lỗi đồng bộ lịch hẹn lặp lại; lỗi đó chấm dứt. Khó khăn vẫn còn. Một sự cố lớn vẫn đẩy một số việc ra sau, và những quản lý thích câu trả lời nhanh của cách làm cũ thấy các khoảng kém thỏa mãn. Nhóm thống nhất sẽ nói với họ điều gì đã đổi trong dự báo mỗi khi nó dịch chuyển, và so sánh cách tiếp cận của mình với một phương pháp chu kỳ cố định cho công việc cải tiến ở lần rà soát tới.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối được lợi nhiều nhất khi dự báo bằng dữ liệu dòng chảy của chính họ. Ghi công việc khi nó bắt đầu và kết thúc, giới hạn công việc đang làm dở và phát hành liên tục các thay đổi nhỏ. Chia sẻ khoảng với những người đang chờ, và dùng Definition of Done, nếu có, để bao gồm công việc vận hành làm cho một bản phát hành có thể hỗ trợ được.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành sở hữu công việc phát sinh vốn làm các dự báo thất bại. Ghi sự cố, yêu cầu và thay đổi thành các hạng mục công việc, và chia sẻ các mẫu lặp lại để chúng ảnh hưởng đến thứ tự công việc. Dùng dữ liệu thời gian chu trình để đặt kỳ vọng thực tế với khách hàng, và nói rõ bao nhiêu năng lực dành cho cải tiến có kế hoạch.

### Lãnh đạo và quản trị

Lãnh đạo có được bức tranh trung thực hơn từ các khoảng dự báo và thước đo dòng chảy so với báo cáo trạng thái. Hãy hỏi các khoảng cùng giả định của chúng, độ chính xác dự báo theo thời gian, và điều nhóm đã đổi nhờ dữ liệu. Tránh đặt mục tiêu cho từng con số, điều sinh ra gian lận, và chấp nhận rằng một dự báo sẽ dịch chuyển khi sự kiện thay đổi.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi từ kỳ vọng rõ ràng hơn và ít ngày hẹn bị lỡ hơn. Hãy hỏi nhóm thời gian dự kiến cho loại yêu cầu của bạn và mong nó dựa trên lịch sử. Nếu yêu cầu của bạn khẩn, hãy mong được hỏi vì sao, vì đẩy nó lên trước ảnh hưởng đến công việc của mọi người khác.

## Các kiểu thất bại thường gặp

- **Hứa ngày từ hy vọng.** Ngày hẹn đến từ ý kiến và bị lỡ. Thay vào đó, dự báo từ các hạng mục đã xong gần đây và cho thấy khoảng.
- **Bỏ qua công việc phát sinh.** Gián đoạn phá kế hoạch mỗi giai đoạn. Thay vào đó, đếm chúng như hạng mục công việc và giữ lại năng lực dựa trên dữ liệu.
- **Dự báo bằng một con số.** Một ngày che giấu sự bất định. Thay vào đó, đưa trường hợp thấp, điển hình và cao kèm giả định.
- **Chỉ dùng trung bình.** Cái đuôi dài các hạng mục chậm bị ẩn. Thay vào đó, dùng phân bố và phân vị.
- **Bắt đầu quá nhiều.** Công việc đang làm dở cao kéo dài mọi thời gian chu trình. Thay vào đó, giới hạn nó và hoàn thành trước khi bắt đầu.
- **Dùng velocity hoặc thông lượng làm mục tiêu hiệu suất.** Các nhóm thổi phồng ước lượng hoặc chia nhỏ hạng mục để trông tốt. Thay vào đó, dùng các con số cho việc lập kế hoạch, và phán xét kết quả (xem Chủ đề 5.6 — Chỉ số và đo lường).
- **Không bao giờ kiểm tra dự báo.** Phương pháp không bao giờ cải thiện. Thay vào đó, so sánh mỗi dự báo với những gì đã xảy ra.
- **Áp chu kỳ cố định cho công việc không phù hợp.** Một hàng đợi các yêu cầu không dự đoán được bị ép vào các giai đoạn cố định gây bực bội. Thay vào đó, thử cách tiếp cận dựa trên dòng chảy và so sánh kết quả.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Dự báo | Ngày hẹn đến từ ý kiến | Một số nhóm dùng dữ liệu quá khứ | Các nhóm dự báo dưới dạng khoảng từ dữ liệu dòng chảy của chính họ | Độ chính xác dự báo được theo dõi và phương pháp được cải thiện | Dự báo được điều phối giữa các nhóm và nhà cung cấp |
| Thước đo dòng chảy | Ít thước đo được thu thập | Một số nhóm ghi thời gian chu trình hoặc thông lượng | Bốn thước đo dòng chảy được thu thập nhất quán | Các thước đo được rà soát và dùng để đặt kỳ vọng | Dữ liệu dòng chảy được chia sẻ giữa các nhóm và dùng để cùng lập kế hoạch |
| Năng lực và công việc phát sinh | Gián đoạn không được đếm | Một số nhóm theo dõi công việc phát sinh | Năng lực cho công việc phát sinh được đặt từ dữ liệu | Tỷ lệ và nguyên nhân của công việc phát sinh được rà soát và giảm | Nhóm vận hành và phân phối cùng lập kế hoạch năng lực |
| Dùng ước lượng và chu kỳ cố định | Ước lượng dùng để phán xét con người | Một số nhóm dùng ước lượng cho việc lập kế hoạch của chính họ | Các nhóm thống nhất thực hành nào họ dùng và gọi tên các biến thể | Tác động của các thực hành được rà soát đối chiếu với dòng chảy và kết quả | Thực hành được điều chỉnh giữa các nhóm từ học hỏi chung |

## Danh mục kiểm tra

- [ ] Dự báo đến từ lịch sử các hạng mục đã xong của chính nhóm.
- [ ] Mỗi dự báo là một khoảng với các giả định được nêu.
- [ ] Sự cố, yêu cầu và công việc cải tiến đều được ghi thành hạng mục công việc.
- [ ] Năng lực cho công việc phát sinh được đặt từ dữ liệu và được rà soát.
- [ ] Thời gian chu trình, thông lượng, công việc đang làm dở và tuổi của hạng mục công việc được theo dõi.
- [ ] Công việc đang làm dở có một giới hạn mà nhóm rà soát.
- [ ] Các hạng mục đang mở già nhất được rà soát đều đặn.
- [ ] Dự báo được so sánh với thực tế sau mỗi giai đoạn.
- [ ] Ước lượng và velocity, nếu dùng, không phải là mục tiêu.
- [ ] Mọi việc dùng Scrum, sprint hay một biến thể đều được viết ra và gọi tên một cách trung thực.

## Lời nhắc AI

**Mục đích: xây một khoảng dự báo từ dữ liệu thông lượng của chính bạn.**

```text
Help me forecast delivery for a team of [number and type of people].

Throughput (items finished) for each of the last [number] weeks: [paste the real figures as a list].
Items remaining: [number], and a note on how similar in size they are: [paste].
Known changes that may affect the next weeks (leave, new work, dependencies): [paste, or write "none known"].

Calculate the lowest, typical, and highest weekly throughput from the figures, and divide the remaining items by each to give a range of weeks. State the assumptions. Do not extrapolate beyond the data or invent numbers. If the data are too thin, say so and ask what to add. List what you are unsure of.
```

**Mục đích: phân tích thời gian chu trình và đề xuất một kỳ vọng mức dịch vụ.**

```text
Below are the start and finish dates of the last [number] finished work items of type [type]: [paste as a table; use only real data].

Calculate the cycle time of each item. Describe the spread: what most items take, what the slowest take, and what might explain the slow ones. Suggest a service level expectation in the form "most items of this type finish within N days", and say how confident the data allow us to be. Do not state it as a promise. If the data are too few, say so and ask what to collect. List what you are unsure of.
```

**Mục đích: đo bao nhiêu năng lực dành cho công việc phát sinh.**

```text
Below is a list of the work items our team completed over the last [number] weeks, each marked as planned or unplanned, with the time it took: [paste as a table; use only real data].

Calculate the share of time on planned and unplanned work for each week, using only the numbers I gave. Describe the pattern, suggest what share of capacity to hold back for unplanned work, and name two assumptions behind the suggestion. Ask clarifying questions first if the data are thin, and list what you are unsure of.
```

**Mục đích: rà soát các hạng mục đang mở già nhất và lập kế hoạch gỡ kẹt.**

```text
Our open work items, with start dates and current state: [paste as a table; use only real data].
Cycle times of our last [number] finished items: [paste].

Calculate the current age of each open item and flag those older than most finished items. For each flagged item, suggest two questions to ask about what blocks it. Do not guess the cause. List what you are unsure of.
```

## Kỹ năng AI

- [kanban](../../../../skills/kanban/SKILL.md): dùng để thiết lập các thước đo dòng chảy, giới hạn công việc đang làm dở và một kỳ vọng mức dịch vụ.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): dùng để kiểm tra năng lực có sẵn có đáp ứng nhu cầu dự kiến không và làm gì với một khoảng thiếu hụt.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): dùng để ước lượng tải tương lai dưới dạng một khoảng từ dữ liệu quá khứ và kế hoạch kinh doanh.
- [software-engineering-metrics](../../../../skills/software-engineering-metrics/SKILL.md): dùng để chọn một chỉ số, nêu cách gian lận và hàng rào bảo vệ của nó, và điền vào một điều lệ chỉ số.
- [scrum](../../../../skills/scrum/SKILL.md): dùng nếu nhóm lập kế hoạch theo sprint, để thiết lập hoặc rà soát vai trò, sự kiện và artifact của nó.

## Nguồn chính

- **The Kanban Guide** (kanbanguides.org): định nghĩa các thước đo dòng chảy và kỳ vọng mức dịch vụ như một dự báo dựa trên các thời gian chu trình trước đây.
- **The Scrum Guide** (Ken Schwaber và Jeff Sutherland, scrumguides.org): định nghĩa ngắn, có thẩm quyền về Scrum, cho các nhóm dùng sprint.
- **Kanban (development)** (Wikipedia): một tổng quan về các thước đo dòng chảy và hệ thống kéo của Kanban.
- **Scrum (software development)** (Wikipedia): một tổng quan về lịch sử, vai trò, sự kiện và những lời chỉ trích về Scrum.

## Tài liệu tham khảo

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. The Scrum Guide (November 2020) — Ken Schwaber and Jeff Sutherland, scrumguides.org — https://scrumguides.org/scrum-guide.html
4. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
5. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
6. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
