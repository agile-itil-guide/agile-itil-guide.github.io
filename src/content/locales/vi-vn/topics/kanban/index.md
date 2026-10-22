# Kanban

**Kanban quản lý công việc như một dòng chảy: nó làm cho luồng công việc nhìn thấy được, giới hạn lượng công việc đang làm dở, và dùng các thước đo dòng chảy để cải tiến, phù hợp với các nhóm dịch vụ có công việc đến liên tục và không thể lập kế hoạch theo các chu kỳ cố định.**

## Vì sao điều này quan trọng

Một bàn dịch vụ, một nhóm vận hành và một nhóm nền tảng đều có chung một đặc điểm: công việc đến khi nó đến. Sự cố, yêu cầu và thay đổi nhỏ đến thành dòng, và nhóm không thể lập kế hoạch trước cho cả tháng của chúng. Các khung xây quanh chu kỳ cố định, như Scrum, chỉ phù hợp với công việc này khi có điều chỉnh (xem Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch). Kanban được thiết kế cho dòng chảy, nên nó phù hợp tự nhiên hơn.

Kanban cũng nói ngôn ngữ của quản lý dịch vụ. Nó hỏi công việc mất bao lâu, bao nhiêu đang chờ và bước nào là nút thắt, và đây là các câu hỏi đằng sau mức dịch vụ, quản lý hàng đợi và lập kế hoạch năng lực. Một nhóm theo dõi tuổi và thời gian chu trình của công việc có thể bàn về mức dịch vụ bằng dữ liệu thay vì ấn tượng.

Kanban dễ bắt đầu và dễ làm tệ một cách đáng ngạc nhiên. Một bảng có các cột không phải là Kanban nếu không có gì giới hạn công việc đang làm dở và không ai dùng các thước đo. Chủ đề này giải thích điều Kanban Guide đòi hỏi ở một nhóm, phương pháp đến từ đâu, và cách áp dụng nó cho công việc dịch vụ.

## Các khái niệm cốt lõi

### Kanban là gì

[Kanban Guide](https://kanbanguides.org/english/), có phiên bản hiện tại đề ngày tháng 5 năm 2025 và liệt kê John Coleman và Daniel Vacanti trong số các tác giả, định nghĩa Kanban là một chiến lược để tối ưu hóa dòng chảy giá trị qua một quy trình. Nó mô tả dòng chảy là sự di chuyển của giá trị tiềm năng qua một hệ thống. Mục tiêu là sự cân bằng của ba thứ: hiệu quả (giao điều các bên liên quan muốn, khi họ muốn), hiệu suất (dùng nguồn lực tốt) và khả năng dự đoán (dự báo việc giao hàng với mức bất định chấp nhận được). Hướng dẫn nói rằng nó áp dụng cho công việc tri thức trong mọi ngành.

Từ "kanban" là tiếng Nhật và có nghĩa là bảng hiệu hay biển quảng cáo. [Bài viết Wikipedia về Kanban trong phát triển](https://en.wikipedia.org/wiki/Kanban_(development)) nói rằng phương pháp đến từ sản xuất tinh gọn và [Hệ thống Sản xuất Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System), với một hệ thống đúng lúc bắt đầu ở Toyota vào cuối những năm 1940. Cuốn sách năm 2010 của David J. Anderson truy phiên bản phần mềm về một dự án năm 2004 tại Microsoft và một dự án 2006-2007 tại Corbis.

### Ba thực hành

Kanban Guide nêu ba thực hành. Một nhóm làm cả ba, và dùng các thước đo dưới đây, đang thực hành Kanban theo nghĩa của hướng dẫn.

| Thực hành | Nhóm làm gì | Ghi chú cho các nhóm dịch vụ |
|---|---|---|
| **Định nghĩa và trực quan hóa luồng công việc** | Thống nhất một Definition of Workflow (DoW): hạng mục công việc là gì, bắt đầu và kết thúc ở đâu, các trạng thái ở giữa, cách giới hạn công việc đang làm dở, các chính sách di chuyển công việc, và một kỳ vọng mức dịch vụ (SLE). Cho thấy nó trên một bảng. | DoW của một bàn dịch vụ có thể định nghĩa các hạng mục sự cố, yêu cầu và thay đổi, với trạng thái và chính sách khác nhau cho mỗi loại |
| **Chủ động quản lý các hạng mục trong luồng công việc** | Kiểm soát số hạng mục đang tiến hành, để ý các hạng mục đang già đi, và gỡ các hạng mục bị kẹt. | Một giới hạn về số sự cố đang mở trên mỗi kỹ sư buộc nhóm phải hoàn thành hoặc bàn giao công việc trước khi bắt đầu thêm |
| **Cải tiến luồng công việc** | Thay đổi DoW theo thời gian để cải thiện hiệu quả, hiệu suất và khả năng dự đoán, theo các khoảng đặt trước hoặc khi cần. | Một cuộc rà soát DoW sau một sự cố lớn có thể thay đổi chính sách, giới hạn hoặc trạng thái |

Hướng dẫn không quy định bố cục bảng hay bất kỳ cuộc họp nào. Các nhóm được tự do thêm thực hành, miễn là các thực hành cốt lõi, các thước đo và mục tiêu tối ưu hóa giá trị vẫn nguyên vẹn.

### Giới hạn công việc đang làm dở và kéo

Kiểm soát công việc đang làm dở (WIP) tạo ra điều hướng dẫn gọi là hệ thống kéo: công việc mới chỉ bắt đầu khi có năng lực cho nó. Bài viết Wikipedia đưa ví dụ một bước "triển khai" với giới hạn năm. Khi bước đó đầy, không gì khác được vào cho đến khi có cái xong, nên một chỗ tắc nghẽn hiện ra và mọi người có thể giúp thông nó. Không có giới hạn, một bảng chỉ là bức ảnh của sự lộn xộn.

### Bốn thước đo dòng chảy

Hướng dẫn liệt kê bốn thước đo mà một nhóm dùng Kanban theo dõi:

- **Công việc đang làm dở:** số hạng mục đã bắt đầu nhưng chưa xong.
- **Thông lượng:** số hạng mục hoàn thành trong một giai đoạn nhất định.
- **Tuổi của hạng mục công việc:** một hạng mục chưa xong đã ở trong tiến trình bao lâu.
- **Thời gian chu trình:** một hạng mục đã xong mất bao lâu từ đầu đến cuối.

Hướng dẫn nói các nhóm có thể đổi tên chúng và nên thêm các thước đo khác khi hữu ích, và các thước đo chỉ quan trọng khi chúng cung cấp thông tin cho ba thực hành. Một kỳ vọng mức dịch vụ là dự báo về một hạng mục nên mất bao lâu, dựa trên các thời gian chu trình trước đây. Nó không phải lời hứa, và khác với một thỏa thuận mức dịch vụ (SLA) được đàm phán với khách hàng. Xem Chủ đề 3.7 — Quản lý mức dịch vụ.

### Tài liệu Kanban rộng hơn

Các tác giả khác đã mô tả phương pháp rộng hơn. Bài viết Wikipedia liệt kê công trình của Don Reinertsen về dòng chảy, *Personal Kanban* của Jim Benson và Tonianne DeMaria Barry, *Kanban From the Inside* của Mike Burrows, và *Scrumban* của Corey Ladas, vốn đề xuất Kanban như một cách cải thiện Scrum. Một số nguồn này liệt kê các thực hành ngoài ba thực hành trong hướng dẫn, như làm cho chính sách tường minh, triển khai các vòng phản hồi và cải tiến cộng tác. Hãy coi chúng là những bổ sung hữu ích, không phải yêu cầu của hướng dẫn.

Bài viết Wikipedia mang một thẻ lưu ý rằng một người đóng góp lớn có thể có mối liên hệ gần với chủ đề, nên hãy đối chiếu các nhận định của nó với các nguồn gốc.

### Kanban không nói gì

Kanban không phải là kế hoạch dự án, một bộ vai trò hay một quy trình phát hành. Nó không bảo bạn cách thiết kế một dịch vụ hay xử lý một sự cố. Nó cho bạn cách để thấy và quản lý dòng chảy, và nó dựa vào bạn để mang nội dung công việc của mình. Đó cũng là điểm mạnh của nó: bạn có thể bắt đầu với quy trình bạn đang có và cải tiến từng bước nhỏ (xem Chủ đề 3.15 — Cải tiến liên tục).

## Thực hành tốt

1. **Bắt đầu với những gì bạn làm bây giờ.** Vẽ luồng công việc thật, với các trạng thái công việc thực sự đi qua, kể cả những lúc chờ. Đừng vẽ quy trình bạn ước mình có. Bạn chỉ cải thiện được những gì bạn thấy.
2. **Định nghĩa hạng mục công việc là gì.** Quyết định sự cố, yêu cầu và thay đổi là một loại hạng mục hay nhiều loại, và cho mỗi loại một điểm bắt đầu và kết thúc rõ ràng. Định nghĩa lẫn lộn làm các thước đo vô nghĩa.
3. **Đặt giới hạn WIP và giữ chúng.** Bắt đầu với một giới hạn hơi chặt, như một hoặc hai hạng mục mỗi người, và điều chỉnh từ kinh nghiệm. Một giới hạn thường xuyên bị phá không cho thông tin gì, nên hãy bàn về mỗi lần vi phạm.
4. **Làm cho chính sách tường minh.** Viết lên bảng khi nào một hạng mục có thể chuyển sang trạng thái tiếp theo, ai được kéo nó và thế nào là bị chặn. Chính sách nhìn thấy được giảm tranh cãi và làm việc đón người mới dễ hơn.
5. **Theo dõi tuổi của hạng mục, không chỉ thời gian chu trình.** Thời gian chu trình chỉ biết sau khi một hạng mục xong, trong khi tuổi cho thấy vấn đề khi còn thời gian hành động. Rà soát các hạng mục già nhất mỗi ngày.
6. **Dùng một kỳ vọng mức dịch vụ dựa trên lịch sử.** Lấy thời gian chu trình của các hạng mục đã xong gần đây và nêu, chẳng hạn, rằng hầu hết các hạng mục của một loại xong trong một số ngày nhất định. Điều chỉnh khi dữ liệu thay đổi. Đừng hứa với khách hàng con số bạn chưa đo.
7. **Coi công việc khẩn là một ngoại lệ tường minh.** Sự cố khẩn sẽ chen hàng. Định nghĩa một chính sách, như một làn riêng có giới hạn riêng, để các ngoại lệ hiện ra và không lặng lẽ phá dòng chảy (xem Chủ đề 3.2 — Quản lý sự cố).
8. **Tìm nút thắt và giúp nó.** Khi một trạng thái luôn đầy, hãy hỏi nó cần thêm năng lực, một chính sách thay đổi hay một dòng chảy thượng nguồn khác. Chuyển người đến nút thắt thường tốt hơn đẩy thêm việc vào nó.
9. **Tổ chức rà soát theo nhịp đều đặn.** Hướng dẫn cho phép cải tiến theo khoảng đặt trước hoặc khi cần. Một buổi rà soát ngắn hằng tuần các thước đo và một lần xem DoW hằng tháng hiệu quả với nhiều nhóm.
10. **Nối bảng với phần còn lại của tổ chức.** Làm cho bảng nhìn thấy được với khách hàng và các nhóm lân cận. Thống nhất cách các hạng mục chuyển qua lại giữa các bảng, như từ bàn dịch vụ sang một nhóm phát triển.
11. **Giữ các thước đo để học.** Dùng các con số để đặt câu hỏi, không để xếp hạng con người. Khi dữ liệu dòng chảy thành mục tiêu, các nhóm gian lận nó (xem Chủ đề 5.6 — Chỉ số và đo lường).
12. **Kết hợp với các khung khác một cách có chủ ý.** Nếu nhóm dùng các sự kiện Scrum để lập kế hoạch và Kanban cho dòng chảy, hãy nói mỗi thứ dùng để làm gì, và kiểm tra rằng sự kết hợp giảm bớt nhầm lẫn (xem Chủ đề 1.8 — Mở rộng quy mô Agile để điều phối nhiều nhóm).

## Câu hỏi để thảo luận với nhóm của bạn

**Nếu chúng ta vẽ luồng công việc thật của mình, kể cả các lần chờ, nó sẽ trông thế nào?**

Mời mỗi người vẽ đường đi của một hạng mục gần đây, rồi gộp các bản vẽ lên một bức tường. Sự khác biệt giữa các bản vẽ cho thấy các bước ẩn và bàn giao không chính thức. Hãy chờ những điều bất ngờ: các phê duyệt không ai nhắc, các hạng mục chờ một nhóm khác và các vòng lặp làm lại. Tiếp theo, đánh dấu ba lần chờ lâu nhất.

**Hiện giờ mỗi người chúng ta có bao nhiêu việc đang làm dở, và bao nhiêu trong số đó đang chờ?**

Đếm các hạng mục đang mở của mỗi người và đánh dấu cái nào bị chặn hoặc đang rảnh. Nhiều nhóm thấy phần lớn hạng mục đang chờ và ít hạng mục đang được làm. Hỏi mỗi người làm gì khi bị chặn, và bắt đầu một hạng mục mới có phải câu trả lời thường lệ không. Mục đích là bàn vì sao việc bắt đầu được thưởng còn việc hoàn thành thì không.

**Hạng mục già nhất trên bảng của chúng ta là gì, và vì sao nó vẫn còn đó?**

Chọn ba hạng mục già nhất và lần theo chuyện đã xảy ra. Câu trả lời thường gặp là người sở hữu không rõ, một phụ thuộc vào nhóm khác, hay một hạng mục không ai muốn hủy. Hỏi hạng mục đó nên được hoàn thành, hủy hay chuyển lên cấp trên. Người điều phối có thể hỏi chính sách nào sẽ bắt được hạng mục sớm hơn.

**Chúng ta hứa gì với khách hàng về việc mọi thứ mất bao lâu, và các con số của chính chúng ta nói gì?**

So sánh mức dịch vụ đã thỏa thuận với thời gian chu trình thực tế của các hạng mục đã xong. Nếu bạn không có dữ liệu, hãy thu thập trong một tháng trước. Bàn thẳng thắn về bất kỳ khoảng cách nào. Hỏi mục tiêu nên đổi, hay cách làm việc nên đổi. Nhớ rằng một kỳ vọng mức dịch vụ dựa trên dữ liệu là một dự báo, trong khi SLA là một thỏa thuận.

**Khi công việc khẩn đến, điều gì xảy ra với mọi thứ khác?**

Đi lại sự cố khẩn gần nhất và xem hạng mục nào bị đình trệ. Hỏi nhóm có chính sách cho công việc khẩn không, và có ai biết nhóm xử lý bao nhiêu hạng mục khẩn mỗi tháng không. Các nhóm thường phát hiện công việc khẩn là thường lệ, không phải ngoại lệ, và chính sách cần phản ánh điều đó. Tiếp theo, thống nhất một giới hạn cho các hạng mục được đẩy nhanh.

**Thước đo nào của chúng ta đủ đáng tin để dựa vào đưa ra quyết định, và thước đo nào chúng ta sẽ bỏ qua?**

Mời mọi người xếp hạng các thước đo hiện có theo mức độ họ tin và vì sao. Sự thiếu tin cậy thường đến từ định nghĩa hạng mục không nhất quán hoặc khoảng trống trong dữ liệu. Đừng biến việc này thành tranh cãi về con người; tập trung vào chất lượng dữ liệu. Kết thúc bằng việc chọn một thước đo để cải thiện trong tháng tới.

## Trong thực tế: một ví dụ agile ITIL

Bàn dịch vụ CNTT của một trường đại học có tám chuyên viên xử lý sự cố và yêu cầu từ sinh viên và nhân viên. Nhóm có một công cụ ticket với các hàng đợi, nhưng không có giới hạn, và mỗi chuyên viên có từ 20 đến 40 ticket đang mở. Khách hàng phàn nàn rằng ticket dường như biến mất, và quản lý bàn dịch vụ không thể nói một yêu cầu điển hình mất bao lâu.

Quản lý và các chuyên viên dựng một bảng phản chiếu công cụ: mới, đã phân loại, đang xử lý, chờ khách hàng, chờ nhóm khác và đã giải quyết. Họ thống nhất giới hạn tám hạng mục đang hoạt động cho mỗi chuyên viên và một quy tắc rằng ticket chờ người khác phải nêu tên người chịu trách nhiệm cho bước tiếp theo. Họ dành một làn cho sự cố khẩn, với giới hạn hai. Trong một tháng, họ chỉ thu thập dữ liệu về thời gian chu trình và tuổi.

Sau tháng đó, dữ liệu cho thấy hầu hết yêu cầu được giải quyết trong vài ngày nhưng một cái đuôi dài chờ hàng tuần, chủ yếu "chờ nhóm khác". Nhóm đặt một kỳ vọng mức dịch vụ từ dữ liệu và bắt đầu rà soát hằng ngày các hạng mục già nhất. Nhiều ticket chờ lâu được đóng hoặc chuyển lên cấp trên trong tuần đầu. Còn một vấn đề: nhóm mạng, nơi sở hữu nhiều ticket đang chờ, không có bảng riêng và bàn dịch vụ không thể thấy hàng đợi của họ. Quản lý bàn dịch vụ sắp xếp một cuộc trò chuyện hằng tuần với trưởng nhóm mạng, và hai nhóm bắt đầu bàn về việc chia sẻ một góc nhìn về các hạng mục đi qua lại giữa họ.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối có thể dùng Kanban để thấy công việc chờ ở đâu giữa thiết kế, xây dựng, kiểm thử và phát hành. Giới hạn công việc đang làm dở giảm số thay đổi làm dở, và dữ liệu dòng chảy có thể cho thấy quy trình phát hành cần chú ý ở đâu. Hãy coi yêu cầu từ vận hành là hạng mục trong cùng dòng chảy, với chính sách riêng.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành là nơi tự nhiên của Kanban. Trực quan hóa sự cố, yêu cầu và thay đổi trong các trạng thái riêng của chúng, đặt giới hạn và theo dõi tuổi. Dùng dữ liệu thời gian chu trình để đặt kỳ vọng thực tế với khách hàng, và dùng các trạng thái bị chặn và chờ để bắt đầu cuộc trò chuyện với các nhóm khác.

### Lãnh đạo và quản trị

Lãnh đạo được lợi từ các thước đo dòng chảy như bức tranh trung thực hơn báo cáo trạng thái. Hãy hỏi thời gian chu trình, thông lượng và tuổi theo loại công việc, và hỏi nhóm đã đổi gì nhờ chúng. Tránh đặt mục tiêu cho từng con số, điều sinh ra gian lận. Hãy ủng hộ giới hạn công việc đang làm dở ngay cả khi các bên liên quan muốn bắt đầu thêm.

### Khách hàng và người dùng

Khách hàng được lợi từ dự báo rõ ràng hơn và ít yêu cầu bị mất hơn. Hãy hỏi nhóm kỳ vọng mức dịch vụ cho loại yêu cầu của bạn, và mong nó dựa trên lịch sử. Nếu yêu cầu của bạn khẩn, hãy mong được hỏi vì sao, vì nhóm phải bảo vệ dòng chảy của người khác.

## Các kiểu thất bại thường gặp

- **Một bảng không có giới hạn.** Bảng cho thấy sự lộn xộn nhưng không giảm nó. Thay vào đó, đặt và thực thi giới hạn công việc đang làm dở, và rà soát mỗi lần vi phạm.
- **Định nghĩa hạng mục lẫn lộn.** Sự cố, dự án và tác vụ dùng chung một bộ cột, và các thước đo vô nghĩa. Thay vào đó, định nghĩa các loại hạng mục với trạng thái và chính sách riêng.
- **Bỏ qua việc già đi.** Các hạng mục cũ nằm không ai để ý đến khi khách hàng phàn nàn. Thay vào đó, rà soát các hạng mục già nhất mỗi ngày và quyết định cho từng cái.
- **Biến thước đo thành mục tiêu.** Các nhóm chia nhỏ hoặc đóng hạng mục để cải thiện con số. Thay vào đó, dùng thước đo để đặt câu hỏi và rà soát chúng cùng nhóm.
- **Làn khẩn ẩn.** Công việc khẩn vượt giới hạn mà không để lại dấu vết. Thay vào đó, cho công việc khẩn một làn nhìn thấy được, một giới hạn và một chính sách.
- **Sao chép bố cục bảng.** Một nhóm lấy các cột của nhóm khác mà không hiểu dòng chảy của mình. Thay vào đó, vẽ luồng công việc thật trước.
- **Coi Kanban là công cụ báo cáo.** Quản lý dùng bảng để theo dõi con người, không để cải tiến dòng chảy. Thay vào đó, dùng nó như công cụ của nhóm để quyết định làm gì tiếp theo.
- **Không bao giờ cải tiến luồng công việc.** Bảng giữ nguyên nhiều năm. Thay vào đó, tổ chức rà soát đều đặn Definition of Workflow và đổi nó khi dữ liệu đòi hỏi.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Trực quan hóa luồng công việc | Công việc nằm trong hộp thư và trong đầu mỗi người | Một số nhóm có bảng cho thấy các trạng thái của họ | Các nhóm chia sẻ một Definition of Workflow với các loại hạng mục và chính sách | Bảng được rà soát và hiệu chỉnh theo những gì thực sự xảy ra | Các bảng giữa các nhóm cho thấy hạng mục liên nhóm và bàn giao |
| Giới hạn công việc đang làm dở | Không có giới hạn; mọi người bắt đầu nhiều hơn hoàn thành | Một số nhóm đặt giới hạn không chính thức | Giới hạn được đặt và các lần vi phạm được bàn thảo | Giới hạn được điều chỉnh từ dữ liệu dòng chảy | Giới hạn và năng lực được cân bằng giữa các nhóm và nhà cung cấp |
| Thước đo dòng chảy | Ít thước đo được thu thập | Một số nhóm ghi thời gian chu trình hoặc thông lượng | Bốn thước đo được thu thập nhất quán | Các thước đo được rà soát và dùng để đặt kỳ vọng mức dịch vụ | Dữ liệu dòng chảy được chia sẻ giữa các nhóm và dùng để cùng lập kế hoạch năng lực |
| Cải tiến | Thay đổi theo sau khủng hoảng | Các nhóm thỉnh thoảng điều chỉnh bảng | Các nhóm rà soát luồng công việc theo nhịp đều đặn | Thay đổi gắn với các thước đo và kết quả được kiểm tra | Cải tiến lan giữa các nhóm mà không cần chỉ đạo trung tâm |

## Danh mục kiểm tra

- [ ] Chúng ta đã vẽ luồng công việc thật của mình, kể cả những lần chờ và bàn giao.
- [ ] Các hạng mục công việc của chúng ta được định nghĩa, với điểm bắt đầu và kết thúc rõ ràng cho mỗi loại.
- [ ] Giới hạn công việc đang làm dở tồn tại và mỗi lần vi phạm được bàn thảo.
- [ ] Chính sách di chuyển và chặn hạng mục được viết trên hoặc gần bảng.
- [ ] Chúng ta theo dõi thời gian chu trình, thông lượng, công việc đang làm dở và tuổi của hạng mục.
- [ ] Chúng ta rà soát các hạng mục già nhất hằng ngày hoặc ít nhất hằng tuần.
- [ ] Chúng ta có một kỳ vọng mức dịch vụ dựa trên lịch sử của chính mình.
- [ ] Công việc khẩn có làn, giới hạn và chính sách riêng nhìn thấy được.
- [ ] Definition of Workflow được rà soát theo nhịp đều đặn.
- [ ] Các nhóm lân cận và khách hàng có thể thấy các hạng mục liên quan đến họ.

## Lời nhắc AI

**Mục đích: mô tả luồng công việc thật của bạn và tìm nơi công việc chờ.**

```text
You are helping me map the real workflow of a team that handles [type of work, e.g. "service desk incidents and requests"].

Here are the states a typical item goes through, as best I can describe them: [paste the steps in order, including waits and handovers].
Here is what happened to three recent items, with dates for each state change: [paste three short timelines, using only real data].

Draw the workflow as a simple text diagram. Identify where each item waited longest, using only the dates I provided. Suggest three questions I should ask the team about those waits. Do not invent numbers. If the data are too thin, ask me for more first, mark your assumptions, and list what you are unsure of.
```

**Mục đích: soạn một Definition of Workflow cho một nhóm.**

```text
Help me write a first Definition of Workflow for [team name and what it does].

Item types we handle: [list them, e.g. incidents, requests, changes].
States an item can be in: [list, or write "unknown"].
Current policies for starting, finishing, and blocking items: [paste, or write "none written"].
Roughly how many items each person has open at a time: [number, or "unknown"].

Produce a draft with: the item types, start and finish points, states, a proposed WIP limit approach, policies for moving items, a policy for urgent work, and how a service level expectation would be set from our own history. Mark every proposal that is a guess. Do not state any numbers I have not given you. Ask me clarifying questions first, and list what you are unsure of.
```

**Mục đích: phân tích dữ liệu dòng chảy từ hệ thống ticket của bạn.**

```text
Below are the start and finish dates of [number] items our team completed recently, and the start dates of [number] items still open: [paste as a table, real data only].

Calculate the cycle time of each completed item and the current age of each open item. Describe the spread: what most items take, what the slowest take, and which open items are older than most finished items. Do not extrapolate beyond the data. Suggest two questions to ask the team about the oldest items. Tell me what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Mục đích: lên kế hoạch một buổi rà soát bảng cùng nhóm.**

```text
Plan a 30-minute weekly flow review for a team of [number] people that uses a Kanban board for [type of work].

Our measures: [list which of work in progress, throughput, cycle time, and work item age you track].
Current frustration: [describe in one or two sentences].

Include a timed agenda, five questions to ask about the measures and the oldest items, and a closing step that records at most two changes with owners. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Kỹ năng AI

- [kanban](../../../../skills/kanban/SKILL.md): dùng để thiết kế hoặc rà soát một bảng, giới hạn công việc đang làm dở và chính sách cho một nhóm dịch vụ hoặc vận hành.
- [scrumban](../../../../skills/scrumban/SKILL.md): dùng khi một nhóm muốn các sự kiện lập kế hoạch của Scrum cùng với quản lý dòng chảy của Kanban.
- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): dùng để vẽ công việc di chuyển giữa các nhóm thế nào và chờ ở đâu trước khi thiết kế bảng.
- [kaizen](../../../../skills/kaizen/SKILL.md): dùng để lập kế hoạch các cải tiến nhỏ cho luồng công việc sau một buổi rà soát dòng chảy.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): dùng để hiểu những loại công việc nào đến và với khối lượng bao nhiêu trước khi đặt giới hạn và năng lực.

## Nguồn chính

- **The Kanban Guide** (John Coleman, Daniel Vacanti và những người khác, kanbanguides.org): định nghĩa ngắn gọn, có thẩm quyền về ba thực hành và bốn thước đo.
- **Kanban (development)** (Wikipedia): một tổng quan về lịch sử và các thực hành rộng hơn, với trích dẫn các cuốn sách chính.
- **Kanban: Successful Evolutionary Change for Your Technology Business** (David J. Anderson, 2010): bản tường thuật về cách Kanban được áp dụng cho công việc phần mềm.
- **Toyota Production System** (Wikipedia): bối cảnh về nguồn gốc sản xuất tinh gọn của kanban.

## Tài liệu tham khảo

1. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
2. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
3. Kanban — Wikipedia — https://en.wikipedia.org/wiki/Kanban
4. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
5. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
6. Scrumban — Wikipedia — https://en.wikipedia.org/wiki/Scrumban
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
