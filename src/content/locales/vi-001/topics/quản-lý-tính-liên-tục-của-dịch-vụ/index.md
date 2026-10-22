# Quản lý tính liên tục của dịch vụ

**Quản lý tính liên tục của dịch vụ chuẩn bị cho một tổ chức giữ các dịch vụ quan trọng nhất của mình hoạt động, hoặc đưa chúng trở lại nhanh chóng, sau một gián đoạn nghiêm trọng, và giá trị của nó chỉ được chứng minh bằng các buổi diễn tập, không phải bằng bản kế hoạch nằm trên kệ.**

## Vì sao điều này quan trọng

Hầu hết sự cố nhỏ và cục bộ. Một số thì không: một đám cháy trung tâm dữ liệu, một vùng đám mây hỏng, một cuộc tấn công mã độc tống tiền, sự sụp đổ của một nhà cung cấp, một đại dịch, một trận lũ. Những sự kiện này đe dọa khả năng cung cấp dịch vụ của tổ chức nói chung, và xử lý chúng cần một sự lập kế hoạch mà quản lý sự cố thông thường không bao phủ. Một nhóm đã nghĩ trước điều gì quan trọng nhất và sẽ tiếp tục thế nào có cơ hội vượt qua tốt hơn nhiều.

Các nhóm agile gặp chủ đề này với một thách thức riêng. Hệ thống của họ thay đổi hằng tuần, nên một kế hoạch liên tục được viết một lần rồi cất đi sẽ lỗi thời trong vòng vài tháng. Các bước khôi phục phụ thuộc vào một máy chủ hay script cụ thể có thể không còn hợp lệ. Câu trả lời của agile không phải là bỏ lập kế hoạch mà là biến tính liên tục thành một phần sống của cách dịch vụ được xây và vận hành: khôi phục được thiết kế sẵn, kiểm thử thường xuyên và giữ trong kiểm soát phiên bản cùng với mã.

[Bài viết Wikipedia về lập kế hoạch liên tục kinh doanh](https://en.wikipedia.org/wiki/Business_continuity_planning) định nghĩa tính liên tục kinh doanh là khả năng của một tổ chức tiếp tục cung cấp sản phẩm hay dịch vụ ở mức chấp nhận được sau một gián đoạn, và coi lập kế hoạch liên tục là một tập con của quản lý rủi ro. Trang "Disaster recovery" của Wikipedia tiếng Anh chỉ là một trang định hướng, có thông báo rằng cần một bài đầy đủ, nên chủ đề này dùng bài viết về liên tục kinh doanh cho các định nghĩa và thêm hướng dẫn thực tế từ các chủ đề khác của cuốn sách, ghi rõ chỗ nào là thực hành chứ không phải tài liệu nguồn được tường thuật.

## Các khái niệm cốt lõi

### Liên tục, khôi phục và khả năng chống chịu

Các thuật ngữ được dùng lỏng lẻo, nên hãy dùng chúng cẩn thận:

| Thuật ngữ | Ý nghĩa, như được dùng rộng rãi | Trọng tâm |
|---|---|---|
| **Liên tục kinh doanh** | Khả năng tiếp tục cung cấp sản phẩm hay dịch vụ ở mức chấp nhận được sau một gián đoạn | Giữ cho tổ chức tiếp tục |
| **Lập kế hoạch liên tục kinh doanh** | Tạo các hệ thống phòng ngừa và khôi phục cho các mối đe dọa với tổ chức | Các kế hoạch và sắp xếp |
| **Khôi phục sau thảm họa CNTT** | Duy trì hoặc thiết lập lại hạ tầng công nghệ thông tin thiết yếu (mô tả trên trang định hướng của Wikipedia) | Công nghệ |
| **Tính liên tục của dịch vụ (ITSM)** | Bảo đảm các dịch vụ CNTT có thể được khôi phục về các mức đã thỏa thuận sau một gián đoạn | Dịch vụ CNTT trong kế hoạch lớn hơn |

Bài viết Wikipedia nói khôi phục sau thảm họa chồng lấn với lập kế hoạch liên tục kinh doanh, đặc biệt ở giai đoạn giải pháp, và rằng tính liên tục là kết quả dự định của việc thực hiện cả hai. Quản lý tính liên tục của dịch vụ là góc nhìn dịch vụ CNTT của cùng một mục đích.

### Phân tích tác động kinh doanh

Một **phân tích tác động kinh doanh (BIA)**, theo bài viết, là một phương pháp xác định và đánh giá các gián đoạn ảnh hưởng đến hoạt động thế nào và đặt ưu tiên khôi phục. Mục tiêu của nó gồm xác định các hoạt động và phụ thuộc quan trọng, đánh giá các tác động tài chính, vận hành, danh tiếng và pháp lý, xác định các mục tiêu khôi phục và cung cấp thông tin cho đánh giá rủi ro. Với các dịch vụ CNTT, BIA hỏi tổ chức không thể thiếu dịch vụ nào, chúng phải trở lại theo thứ tự nào và mỗi cái phụ thuộc vào gì (xem Chủ đề 4.4 — Quản lý cấu hình về các phụ thuộc).

### Mục tiêu khôi phục

Bài viết định nghĩa hai thuật ngữ then chốt:

- **Mục tiêu thời gian khôi phục (RTO):** thời gian chấp nhận được để khôi phục một chức năng.
- **Mục tiêu điểm khôi phục (RPO):** lượng độ trễ dữ liệu chấp nhận được, nói cách khác là mất bao nhiêu dữ liệu là chịu được.

Nó cũng liệt kê thời gian gián đoạn tối đa chấp nhận được. Bài viết không đưa phương pháp chọn các giá trị này cho một tổ chức cụ thể, nên chúng phải đến từ doanh nghiệp: hỏi một giờ, một ngày và một tuần ngừng hoạt động tốn bao nhiêu, và doanh nghiệp có thể chịu mất dữ liệu nào. Đặt chúng là một quyết định kinh doanh có giá, vì chi phí đáp ứng một mục tiêu chặt hơn tăng lên (xem Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng).

### Các kế hoạch

Một kế hoạch liên tục hay khôi phục mô tả ai làm gì, theo thứ tự nào, để khôi phục các dịch vụ quan trọng sau một gián đoạn. Nó nên bao gồm: kế hoạch được kích hoạt thế nào và bởi ai, mọi người được thông báo và tập hợp ra sao, trình tự khôi phục các dịch vụ, việc khôi phục sẽ diễn ra ở đâu, dữ liệu đến từ đâu, cách giao tiếp với khách hàng và nhân viên, và cách trở về bình thường. Các kế hoạch cho dịch vụ CNTT nên liên kết đến runbook của từng hệ thống (xem Chủ đề 3.9 — Quản lý tri thức).

### Kiểm thử và diễn tập

Bài viết trích dẫn một cuốn sách năm 2008 của British Standards Institution mô tả ba loại diễn tập: diễn tập **bàn giấy** (tabletop) nơi một nhóm nhỏ thảo luận một khía cạnh của kế hoạch, diễn tập **trung bình** nơi nhiều nhóm làm việc trên nhiều khía cạnh với các bất ngờ có kịch bản, và diễn tập **phức tạp** thêm kích hoạt không báo trước, sơ tán thật và dùng một địa điểm khôi phục sau thảm họa. Nó mô tả việc bảo trì theo chu kỳ hằng năm hoặc hai năm, gồm kiểm thử các giải pháp kỹ thuật và quy trình khôi phục, với các phát hiện quay lại giai đoạn phân tích. Diễn tập là nơi các kế hoạch phát hiện mình sai.

### Các bậc khôi phục

Bài viết nhắc đến bảy bậc khôi phục sau thảm họa của SHARE (1992), về sau được IBM cập nhật thành tám bậc (0 đến 7). Các nguồn đã đọc ở đây không nêu chi tiết các bậc. Như một thực hành chung, các tổ chức phân loại dịch vụ thành các bậc theo mức nhanh cần khôi phục, và khớp cách tiếp cận khôi phục và chi phí với bậc.

### Tiêu chuẩn

Bài viết trích dẫn ISO 22301:2019, *Security and resilience, Business continuity management systems, Requirements*, thay thế ấn bản 2012 và yêu cầu các tổ chức xác định mục tiêu liên tục, mức dịch vụ tối thiểu chấp nhận được và thời gian gián đoạn tối đa chấp nhận được. ISO 22313:2020 đưa hướng dẫn về cách dùng nó. Đây là các tiêu chuẩn cho một hệ thống quản lý mà một tổ chức có thể áp dụng; chúng không thay thế lập kế hoạch thực tế. Hãy kiểm tra trực tiếp văn bản tiêu chuẩn nếu khách hàng hay cơ quan quản lý đòi hỏi sự phù hợp.

### Liên tục theo kiểu agile

Các thực hành agile và DevOps giúp tính liên tục:

- **Hạ tầng và cấu hình dưới dạng mã** cho phép môi trường được dựng lại từ kiểm soát phiên bản, làm khôi phục nhanh hơn và kiểm thử được.
- **Pipeline tự động** có thể triển khai lại dịch vụ lên một địa điểm khôi phục.
- **Phát hành thường xuyên** giữ nhóm quen tay với việc triển khai.
- **Diễn tập định kỳ** có thể được coi là một dạng kiểm thử trong backlog.

Chúng cũng tạo ra rủi ro: phụ thuộc nặng vào một tài khoản đám mây duy nhất, một hệ thống CI tự nó là một điểm lỗi đơn lẻ, và bí mật được lưu ở nơi không thể truy cập trong một thảm họa. Hãy lập kế hoạch cho các công cụ mà chính việc khôi phục phụ thuộc vào.

### Yếu tố con người

Bài viết nhắc đến đợt dịch SARS 2002-2003 như ví dụ về các nhóm được chia ngăn và luân phiên, là lời nhắc rằng tính liên tục bao gồm con người: kỹ năng chủ chốt trải ra các cá nhân, làm việc từ xa, giao tiếp khi các kênh thông thường hỏng, và quan tâm đến nhân viên dưới áp lực.

### Giới hạn của các nguồn

Bài viết không đưa phương pháp đặt mục tiêu, không có hướng dẫn về tần suất kiểm thử ngoài chu kỳ bảo trì hằng năm hoặc hai năm, và không khuyến nghị công cụ. Nó là một bài viết kinh doanh chung, không phải về CNTT. Về chi tiết khôi phục kỹ thuật, hãy dùng tài liệu của các nền tảng của chính bạn và các kỹ năng của cuốn sách về lập kế hoạch và kiểm thử khôi phục sau thảm họa.

## Thực hành tốt

1. **Bắt đầu với một phân tích tác động kinh doanh.** Xác định các dịch vụ tổ chức không thể thiếu, chi phí của việc mất chúng theo thời gian và chúng phụ thuộc vào gì. Làm cùng với chủ sở hữu kinh doanh, không phải làm thay họ.
2. **Đặt mục tiêu khôi phục cùng doanh nghiệp.** Với mỗi dịch vụ quan trọng, thống nhất một thời gian khôi phục và một điểm khôi phục, và ghi lại chi phí đáp ứng chúng. Xem lại khi doanh nghiệp hay công nghệ thay đổi.
3. **Phân bậc dịch vụ của bạn.** Nhóm dịch vụ theo mức nhanh chúng phải trở lại, và áp dụng cách tiếp cận khôi phục khớp với mỗi bậc. Đừng áp dụng cách tiếp cận đắt nhất cho mọi thứ.
4. **Viết một kế hoạch ngắn mà mọi người dùng được.** Nêu cách kích hoạt kế hoạch, ai quyết định, ai làm gì, cách giao tiếp và thứ tự khôi phục. Giữ nó trong vài trang kèm liên kết đến runbook.
5. **Giữ kế hoạch cùng với mã và môi trường.** Lưu script khôi phục, cấu hình và runbook trong kiểm soát phiên bản và rà soát khi dịch vụ thay đổi. Một kế hoạch không được cập nhật cùng hệ thống sẽ thất bại.
6. **Lập kế hoạch cho các công cụ mà việc khôi phục phụ thuộc.** Bảo đảm quyền truy cập pipeline, bí mật, tài liệu và công cụ giao tiếp còn lại khi các hệ thống chúng hỗ trợ bị mất.
7. **Diễn tập đều đặn.** Bắt đầu với thảo luận bàn giấy, chuyển sang kiểm thử kỹ thuật việc khôi phục và chuyển đổi dự phòng, và chạy các buổi diễn tập lớn hơn cho các dịch vụ quan trọng nhất. Lên lịch chúng như các công việc khác.
8. **Kiểm thử khôi phục, không chỉ sao lưu.** Một bản sao lưu chỉ được chứng minh bằng việc khôi phục từ nó. Kiểm thử rằng dữ liệu trở lại, trong điểm khôi phục, và dịch vụ hoạt động với nó (xem kỹ năng kiểm thử khôi phục sau thảm họa bên dưới).
9. **Coi các phát hiện là hạng mục backlog.** Mỗi buổi diễn tập tạo ra các khoảng trống. Ghi lại chúng với người chịu trách nhiệm và ngày, và kiểm tra chúng được làm xong trước buổi diễn tập tiếp theo.
10. **Lập kế hoạch giao tiếp.** Quyết định ai nói gì với khách hàng, nhân viên, cơ quan quản lý và công chúng, và chuẩn bị mẫu. Gồm các cách liên lạc ngoài băng tần để tiếp cận mọi người nếu kênh thông thường hỏng (xem kỹ năng giao tiếp khủng hoảng bên dưới).
11. **Đưa nhà cung cấp vào.** Hỏi các nhà cung cấp quan trọng về sắp xếp liên tục của riêng họ và đưa họ vào các buổi diễn tập khi có thể (xem Chủ đề 3.14 — Quản lý nhà cung cấp).
12. **Rà soát hằng năm, và sau bất kỳ sự cố nghiêm trọng hay thay đổi lớn nào.** Cập nhật phân tích, mục tiêu và kế hoạch khi doanh nghiệp hay công nghệ thay đổi, không chỉ theo lịch.

## Câu hỏi để thảo luận với nhóm của bạn

**Dịch vụ nào của chúng ta phải trở lại đầu tiên, và làm sao chúng ta biết?**

Mời mỗi người xếp hạng các dịch vụ theo thứ tự ưu tiên khôi phục. So sánh. Sự bất đồng mang tính thông tin: nó cho thấy thứ tự chưa bao giờ được thống nhất với doanh nghiệp. Người điều phối có thể hỏi tổ chức sẽ tốn bao nhiêu nếu mỗi dịch vụ ngừng một giờ, một ngày và một tuần. Mang câu hỏi đến các chủ sở hữu kinh doanh và thống nhất một danh sách.

**Chúng ta có thể mất bao nhiêu dữ liệu, và có ai đồng ý với điều đó không?**

Hỏi lần sao lưu gần nhất của dữ liệu chính được thực hiện khi nào và bao lâu một lần. So sánh với điều doanh nghiệp sẽ chịu được. Nhiều nhóm thấy câu trả lời không như họ giả định. Bàn một điểm khôi phục chặt hơn sẽ tốn bao nhiêu. Ghi lại quyết định và ai đã đưa ra.

**Lần cuối chúng ta khôi phục từ một bản sao lưu là khi nào, và điều gì đã xảy ra?**

Xin một ngày thật và một kết quả thật. Nếu câu trả lời là "chưa bao giờ", đó là phát hiện quan trọng nhất. Nếu đã làm, hỏi điều gì đã sai và điều gì đã được sửa. Lên kế hoạch một kiểm thử khôi phục cho một dịch vụ quan trọng trong tháng tới.

**Chúng ta cần khôi phục thứ gì mà lại phụ thuộc vào chính thứ đã hỏng?**

Đi qua một kịch bản như mất một tài khoản đám mây hay một trung tâm dữ liệu. Hỏi runbook, bí mật và pipeline nằm ở đâu. Các phụ thuộc vào hệ thống đã hỏng là phổ biến, chẳng hạn một runbook lưu trên một máy chủ đang ngừng. Liệt kê chúng và lên kế hoạch di chuyển hoặc sao chép từng cái.

**Ai có thẩm quyền tuyên bố một thảm họa và bắt đầu kế hoạch?**

Hỏi mọi người ai sẽ quyết định, và họ có biết không. Chậm kích hoạt một kế hoạch tốn thời gian. Bàn một quy tắc rõ ràng và một người thay thế. Kiểm tra người đó sẽ được liên lạc thế nào nếu các kênh thông thường hỏng.

**Chúng ta sẽ làm gì nếu những người biết nhiều nhất không có mặt?**

Hãy tưởng tượng nhân viên chủ chốt không liên lạc được. Hỏi ai khác có thể thực hiện việc khôi phục và họ sẽ cần gì. Câu hỏi này nối tính liên tục với quản lý tri thức. Lên kế hoạch một cách để lan truyền tri thức quan trọng.

## Trong thực tế: một ví dụ agile ITIL

Cơ quan đăng ký đất đai của chính quyền một tỉnh vận hành một dịch vụ trực tuyến nơi luật sư và trắc địa viên nộp các giao dịch bất động sản. Một nhóm mười hai người xây dựng và vận hành nó, dùng một vùng của một nhà cung cấp đám mây. Một lần rà soát liên tục kinh doanh thấy dịch vụ được bộ phân loại là quan trọng, với kỳ vọng có thể khôi phục trong bốn giờ, và chưa ai từng kiểm thử xem điều đó có khả thi không.

Nhóm bắt đầu với một buổi diễn tập bàn giấy. Kịch bản: vùng đám mây không khả dụng trong một ngày. Họ phát hiện runbook được lưu trong một wiki đặt cùng vùng, mã hạ tầng chỉ bao phủ một phần môi trường, và các bản sao lưu cơ sở dữ liệu được sao chép vào cùng vùng. Kỳ vọng bốn giờ của bộ hóa ra do một quản lý viết nhiều năm trước và chưa bao giờ được tính chi phí. Nhóm và chủ sở hữu kinh doanh của bộ gặp nhau. Chủ sở hữu giải thích một ngày ngừng hoạt động nghĩa là gì với các hạn nộp hồ sơ, và đồng ý rằng cần bốn giờ cho những ngày nộp hồ sơ cuối tháng nhưng tám giờ là chấp nhận được vào các thời điểm khác.

Nhóm sao chép runbook và bản sao lưu sang một vùng thứ hai, hoàn thiện mã hạ tầng và dựng lại môi trường từ mã trong một vùng thử nghiệm trong một buổi diễn tập kéo dài một ngày. Lần thử đầu mất mười một giờ, chủ yếu vì các bước thủ công và một bí mật bị thiếu. Sau các bản sửa, lần thử thứ hai mất năm giờ. Một số vấn đề vẫn còn. Mục tiêu bốn giờ cuối tháng vẫn ngoài tầm với, nhà cung cấp danh tính mà nhân viên dùng để đăng nhập không có sắp xếp khôi phục riêng, và nhóm nhận ra mình phụ thuộc vào một nhà cung cấp mà họ chưa từng thấy kế hoạch liên tục. Nhóm đưa nhà cung cấp danh tính và câu hỏi về nhà cung cấp vào backlog, và bộ đồng ý một thời gian khôi phục dài hơn cho các giai đoạn ngoài cao điểm trong khi công việc tiếp tục.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối làm cho việc khôi phục khả thi hay bất khả thi qua thiết kế. Hãy xây dịch vụ để dựng lại được từ mã, giữ dữ liệu được sao chép và viết các bước khôi phục như một phần của hoàn thành. Tham gia các buổi diễn tập và sửa những khoảng trống tìm thấy.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành giữ các kế hoạch và chạy các buổi diễn tập. Giữ kế hoạch ngắn và gắn với runbook, kiểm thử khôi phục và chuyển đổi dự phòng, và làm cho phụ thuộc của việc khôi phục nhìn thấy được. Theo dõi các phát hiện của mỗi buổi diễn tập cho đến khi đóng.

### Lãnh đạo và quản trị

Lãnh đạo đặt ra mục tiêu và chi trả cho chúng. Hãy yêu cầu phân tích tác động kinh doanh và các mục tiêu khôi phục, hiểu chúng tốn bao nhiêu, và tham dự một buổi diễn tập. Chấp nhận rằng một số dịch vụ sẽ mất lâu hơn để khôi phục, và đưa ra quyết định đó có chủ ý.

### Khách hàng và người dùng

Khách hàng và người dùng phụ thuộc vào việc dịch vụ tiếp tục hoặc trở lại. Hãy nói với nhà cung cấp bạn có thể thiếu nó bao lâu và dữ liệu nào bạn không thể mất. Hãy hỏi về các sắp xếp liên tục của họ và bạn nên làm gì trong một thảm họa, như một cách khác để nộp công việc khẩn.

## Các kiểu thất bại thường gặp

- **Một kế hoạch chưa ai kiểm thử.** Lần thử đầu tiên chính là thảm họa. Thay vào đó, bắt đầu với diễn tập bàn giấy và tiến tới khôi phục kỹ thuật.
- **Mục tiêu không ai thống nhất.** Thời gian khôi phục do một người đã rời đi viết ra. Thay vào đó, đặt thời gian và điểm khôi phục cùng chủ sở hữu kinh doanh và ghi chi phí.
- **Sao lưu chưa bao giờ được khôi phục.** Bản sao lưu có, nhưng khôi phục lỗi. Thay vào đó, kiểm thử khôi phục theo lịch và đo thời gian.
- **Khôi phục phụ thuộc vào thứ đã hỏng.** Runbook, bí mật và công cụ nằm trong hệ thống đã hỏng. Thay vào đó, vẽ các phụ thuộc của việc khôi phục và giữ bản sao ở nơi khác.
- **Một bậc cho mọi thứ.** Mọi dịch vụ nhận cách xử lý đắt nhất, hoặc không dịch vụ nào. Thay vào đó, phân bậc dịch vụ theo nhu cầu.
- **Kế hoạch lỗi thời.** Hệ thống thay đổi mà kế hoạch thì không. Thay vào đó, giữ kế hoạch cùng với mã và rà soát khi dịch vụ thay đổi.
- **Bỏ qua con người.** Kế hoạch giả định nhân viên thường lệ có mặt. Thay vào đó, lập kế hoạch cho sự vắng mặt và cho giao tiếp khi kênh hỏng.
- **Bỏ qua nhà cung cấp.** Các phụ thuộc quan trọng không có sắp xếp liên tục. Thay vào đó, hỏi nhà cung cấp và đưa họ vào các buổi diễn tập.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Phân tích tác động và mục tiêu | Dịch vụ quan trọng được giả định | Một số dịch vụ có mục tiêu khôi phục sơ bộ | Dịch vụ quan trọng có thời gian và điểm khôi phục đã thống nhất, kèm chi phí | Mục tiêu được rà soát theo kết quả diễn tập và thay đổi kinh doanh | Mục tiêu được căn chỉnh với khách hàng, nhà cung cấp và cơ quan quản lý |
| Kế hoạch và thiết kế khôi phục | Khôi phục được ứng biến | Một số dịch vụ có ghi chú khôi phục | Kế hoạch và mã khôi phục tồn tại cho dịch vụ quan trọng và được giữ cùng hệ thống | Tính cập nhật của kế hoạch và thời gian khôi phục được đo và cải thiện | Khôi phục được điều phối giữa các dịch vụ, nhóm và nhà cung cấp |
| Diễn tập và kiểm thử | Ít hoặc không kiểm thử | Một số khôi phục được kiểm thử | Kiểm thử bàn giấy và kỹ thuật diễn ra theo lịch | Phát hiện được theo dõi đến khi đóng và kiểm thử được điều chỉnh theo rủi ro | Diễn tập gồm nhà cung cấp và trải qua các tổ chức |
| Giao tiếp và con người | Giao tiếp tùy hứng | Có một số danh sách liên lạc | Kế hoạch bao gồm ai báo cho ai, với các đường ngoài băng tần và người thay thế | Khoảng trống giao tiếp và nhân sự được đo và đóng | Giao tiếp được diễn tập với khách hàng, nhà cung cấp và cơ quan quản lý |

## Danh mục kiểm tra

- [ ] Chúng ta đã xác định các dịch vụ quan trọng cùng chủ sở hữu kinh doanh.
- [ ] Mỗi dịch vụ quan trọng có thời gian khôi phục và điểm khôi phục đã thống nhất, biết rõ chi phí.
- [ ] Dịch vụ được nhóm thành các bậc khớp với nhu cầu khôi phục của chúng.
- [ ] Một kế hoạch khôi phục ngắn tồn tại, với ai có thể kích hoạt nó và cách liên lạc họ.
- [ ] Mã khôi phục, cấu hình và runbook nằm trong kiểm soát phiên bản và được rà soát cùng thay đổi.
- [ ] Runbook, bí mật và công cụ cần cho khôi phục còn lại khi mất môi trường chính.
- [ ] Một lần khôi phục từ sao lưu đã được kiểm thử cho mỗi dịch vụ quan trọng trong năm qua.
- [ ] Một buổi diễn tập bàn giấy đã được tổ chức trong năm qua, và các phát hiện được theo dõi.
- [ ] Mẫu giao tiếp và các đường ngoài băng tần tồn tại.
- [ ] Các nhà cung cấp quan trọng đã được hỏi về sắp xếp liên tục của riêng họ.

## Lời nhắc AI

**Mục đích: soạn các câu hỏi cho một phân tích tác động kinh doanh.**

```text
Help me prepare a business impact analysis for these services: [list services].

About the organization: [describe sector and who relies on the services].
Peak periods or deadlines: [list, or write "unknown"].
Rules or contracts that set recovery requirements, with source text: [paste, or write "none known"].

Write, for each service, a short set of questions to put to business owners about the impact of an outage after one hour, one day, and one week (financial, operational, reputational, legal), what data loss would be tolerable, what the service depends on, and what workarounds exist. Do not invent impacts or numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: lập kế hoạch một buổi diễn tập bàn giấy.**

```text
Design a 90-minute tabletop exercise for [number] people from [teams] on this scenario: [describe, for example "our cloud region is unavailable for 24 hours"].

Services in scope: [list].
Existing plans and runbooks: [describe, or write "none"].

Give a timed plan with: the scenario released in three stages, prompts for each role, questions on dependencies of recovery (where runbooks, secrets, and tools live), decisions that must be made and who makes them, and a closing step that records gaps with owners and dates. Do not use real production access. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: biến ghi chú diễn tập thành danh sách khoảng trống.**

```text
Below are the notes from a continuity exercise: [paste what happened, what went wrong, what people said].

List the gaps found, grouped as: plan (what was missing or unclear), technology (what failed or was slow), people (who was missing or unsure), and dependencies (what recovery depended on that was itself unavailable). For each gap, suggest a backlog item title and a question about priority. Use only the notes. Do not invent causes. List what you are unsure of.
```

**Mục đích: viết dàn ý kế hoạch khôi phục ngắn cho một dịch vụ.**

```text
Help me outline a recovery plan for [service].

What it does and who depends on it: [describe].
Agreed recovery time and recovery point, if any: [paste, or write "not agreed"].
Where it runs, where data and backups are kept: [describe].
Dependencies (other services, suppliers, identity, networks): [list].
People who can recover it: [roles].

Write a plan outline of no more than two pages: how it is invoked, who decides, communication, order of recovery steps (with links to runbooks as [LINK]), testing evidence needed, and how to return to normal. Mark each item that is an assumption. Do not invent recovery times. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [business-continuity-plan](../../../../skills/business-continuity-plan/SKILL.md): dùng để viết kế hoạch cấp tổ chức nhằm giữ các chức năng quan trọng tiếp tục.
- [disaster-recovery-plan](../../../../skills/disaster-recovery-plan/SKILL.md): dùng để lập kế hoạch khôi phục kỹ thuật các dịch vụ CNTT.
- [disaster-recovery-testing](../../../../skills/disaster-recovery-testing/SKILL.md): dùng để thiết kế các kiểm thử khôi phục và chuyển đổi dự phòng.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): dùng để lập kế hoạch điều bạn nói với khách hàng, nhân viên và công chúng trong một gián đoạn.
- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi các rủi ro liên tục và cách chúng được quản lý.

## Nguồn chính

- **Business continuity planning** (Wikipedia): các định nghĩa về tính liên tục, phân tích tác động kinh doanh, mục tiêu khôi phục, diễn tập và tiêu chuẩn.
- **ISO 22301** (Tổ chức Tiêu chuẩn hóa Quốc tế): tiêu chuẩn yêu cầu cho các hệ thống quản lý liên tục kinh doanh; hãy đọc tiêu chuẩn cho các tuyên bố về sự phù hợp.
- **Incident management** (Wikipedia): tổng quan nhiều lĩnh vực đặt tính liên tục cạnh ứng phó sự cố.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): kinh tế của độ tin cậy định khung cho các mục tiêu khôi phục.

## Tài liệu tham khảo

1. Business continuity planning — Wikipedia — https://en.wikipedia.org/wiki/Business_continuity_planning
2. Disaster recovery — Wikipedia (disambiguation page) — https://en.wikipedia.org/wiki/Disaster_recovery
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
5. ISO 22301 — Wikipedia — https://en.wikipedia.org/wiki/ISO_22301
6. Risk management — Wikipedia — https://en.wikipedia.org/wiki/Risk_management
7. Backup — Wikipedia — https://en.wikipedia.org/wiki/Backup
8. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
