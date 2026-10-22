# Extreme Programming

**Extreme Programming (XP) là phương pháp agile cụ thể nhất về thực hành kỹ thuật, và các thói quen kiểm thử trước, tích hợp liên tục và chia sẻ quyền sở hữu mã chính là điều làm cho thay đổi thường xuyên lên một dịch vụ đang chạy trở nên an toàn.**

## Vì sao điều này quan trọng

Thay đổi thường xuyên là mục tiêu của giao hàng liên tục và là nỗi lo của quản lý dịch vụ. Cách dung hòa chúng không phải là thêm các cuộc họp phê duyệt mà là một khả năng mạnh hơn trong việc biết một thay đổi hoạt động trước khi nó đến tay người dùng. Extreme Programming là phương pháp agile nói nhiều nhất về cách xây dựng khả năng đó: viết kiểm thử trước, tích hợp nhiều lần mỗi ngày, giữ thiết kế đơn giản và chia sẻ trách nhiệm về mã.

Nhiều nhóm lấy các sự kiện và bảng của Scrum rồi bỏ lại các thực hành kỹ thuật. Kết quả là một nhóm lập kế hoạch theo sprint nhưng phát hành trong sợ hãi. Các thực hành của XP là nửa còn thiếu. Chúng quan trọng với bất kỳ ai phải vận hành kết quả, vì một dịch vụ được xây với kiểm thử tự động, bản phát hành nhỏ và tri thức chia sẻ thì dễ hỗ trợ hơn một dịch vụ được xây bởi một vài người theo các lô lớn, chưa kiểm thử.

XP cũng đòi hỏi tổ chức một điều dễ bị bỏ qua: nhịp độ bền vững, một nhóm trọn vẹn có đủ kỹ năng cần thiết và một khách hàng thực sự có mặt. Đó là các điều kiện của môi trường làm việc, không chỉ là thói quen của lập trình viên. Chủ đề này giải thích phương pháp, bằng chứng về các giới hạn của nó, và cách các thực hành của nó nối với các thực hành ITIL như kích hoạt thay đổi, quản lý phát hành và quản lý tri thức.

## Các khái niệm cốt lõi

### XP đến từ đâu

Kent Beck phát triển XP khi làm việc trên Chrysler Comprehensive Compensation System (C3), một dự án trả lương. Theo [bài viết Wikipedia về Extreme programming](https://en.wikipedia.org/wiki/Extreme_programming), Beck trở thành trưởng dự án tháng 3 năm 1996 và hoàn thiện phương pháp ở đó, với Ward Cunningham là ảnh hưởng lớn và Ron Jeffries tham gia để huấn luyện nhóm. Cuốn sách *Extreme Programming Explained* của ông xuất hiện tháng 10 năm 1999. Chrysler hủy dự án C3 tháng 2 năm 2000 sau khi Daimler-Benz mua lại công ty.

Bài viết chỉ ra rằng nhiều thực hành XP không mới. Nó nhắc đến phát triển kiểm thử trước trong Project Mercury của NASA vào đầu những năm 1960. Bước đi của XP là đưa các thực hành tốt lên mức "cực hạn": nếu kiểm thử là tốt thì kiểm thử mọi lúc; nếu rà soát là tốt thì rà soát liên tục bằng cách làm việc theo cặp. Beck và Cunningham nằm trong 17 người đã viết Tuyên ngôn Agile (xem Chủ đề 1.1 — Tuyên ngôn Agile).

### Năm giá trị

XP nêu năm giá trị:

| Giá trị | Ý nghĩa | Trong công việc dịch vụ |
|---|---|---|
| **Giao tiếp** | Xây dựng hiểu biết chung giữa lập trình viên, người dùng và khách hàng, chủ yếu bằng cách trò chuyện và giữ thiết kế đơn giản | Lập trình viên và nhân viên vận hành bàn về một bản phát hành sẽ hành xử thế nào trước khi nó ra mắt |
| **Đơn giản** | Làm điều đơn giản nhất chạy được, và đừng xây cho những nhu cầu tương lai mang tính suy đoán | Ít bộ phận chuyển động hơn để giám sát, bảo mật và giải thích |
| **Phản hồi** | Học nhanh từ kiểm thử, từ khách hàng và từ các ước lượng của chính nhóm | Kết quả kiểm thử nhanh và giám sát sản xuất rút ngắn thời gian để học |
| **Can đảm** | Refactor, loại bỏ mã lỗi thời và kiên trì vượt qua các vấn đề khó | Cho ngừng một thành phần cũ mà không ai dám đụng vào |
| **Tôn trọng** | Tôn trọng đồng đội và công việc của chính mình | Rà soát không đổ lỗi sau các hỏng hóc, và tải trực công bằng |

Bài viết lưu ý rằng sự tôn trọng được thêm vào ở ấn bản thứ hai của *Extreme Programming Explained*, sau bốn giá trị ban đầu.

### Các thực hành

Bài viết về các thực hành XP nhóm mười hai thực hành thành bốn tập. Chúng được hiểu tốt nhất như một hệ thống tự nâng đỡ.

| Nhóm | Thực hành | Mục đích |
|---|---|---|
| **Phản hồi quy mô nhỏ** | Lập trình cặp, trò chơi lập kế hoạch, phát triển hướng kiểm thử, cả nhóm | Có phản hồi trong vài phút hoặc vài ngày, không phải vài tháng |
| **Quy trình liên tục** | Tích hợp liên tục, cải thiện thiết kế (refactoring), phát hành nhỏ | Giữ phần mềm luôn ở trạng thái có thể phát hành |
| **Hiểu biết chung** | Chuẩn mã hóa, quyền sở hữu mã tập thể, thiết kế đơn giản, ẩn dụ hệ thống | Để bất kỳ ai trong nhóm có thể thay đổi bất kỳ phần nào một cách an toàn |
| **Phúc lợi lập trình viên** | Nhịp độ bền vững | Giữ con người được nghỉ ngơi và hiệu quả qua nhiều năm |

Mô tả ngắn về những thực hành chính:

- **Lập trình cặp:** hai người làm một tác vụ tại một máy trạm, một người viết và một người rà soát, và họ đổi cặp thường xuyên.
- **Phát triển hướng kiểm thử (TDD):** lập trình viên viết một kiểm thử đang thất bại trước, rồi viết vừa đủ mã để nó đạt.
- **Tích hợp liên tục (CI):** lập trình viên hợp nhất công việc vào kho chung mỗi vài giờ, để các vấn đề tích hợp lộ ra sớm.
- **Phát hành nhỏ:** giao phần mềm chạy được theo các bước nhỏ, thường xuyên để khách hàng thấy tiến độ và phản hồi.
- **Quyền sở hữu mã tập thể:** bất kỳ ai trong nhóm cũng có thể thay đổi bất kỳ phần nào của mã.
- **Nhịp độ bền vững:** tránh làm thêm giờ thường xuyên, và không bao giờ cho phép làm thêm giờ hai tuần liên tiếp.

### Tranh cãi và giới hạn

Bài viết ghi lại một số lời chỉ trích. Matt Stephens và Doug Rosenberg, trong một cuốn sách năm 2003, lập luận rằng các thực hành của XP phụ thuộc lẫn nhau, nên chỉ áp dụng một số thực hành làm suy yếu quy trình. Các nhà phê bình cũng nghi ngờ lập trình cặp như cách làm việc bình thường, việc thiếu thiết kế lớn từ đầu, khách hàng tại chỗ như một điểm lỗi đơn lẻ, và các yêu cầu thay đổi không chính thức dẫn đến làm lại và phình phạm vi. P. McBreen, cũng như Boehm và Turner, cũng viết những đánh giá phê phán. Bài viết thêm rằng những người thực hành agile coi nhiều lời chỉ trích này là hiểu lầm.

Về quy mô, bài viết nói rằng Industrial XP, được giới thiệu năm 2004, mở rộng XP cho các nhóm lớn hơn và phân tán với 23 thực hành. Nó cũng báo cáo một nhận định, được đánh dấu là cần trích dẫn, rằng ThoughtWorks đã khá thành công với các dự án XP phân tán lên đến sáu mươi người. Hãy đọc nhận định đó cẩn trọng, và xem Chủ đề 1.8 — Mở rộng quy mô Agile để có thảo luận rộng hơn.

Bài viết không bàn về triển khai hay giám sát sản xuất ngoài tích hợp liên tục và phát hành nhỏ. XP nói rất ít về việc vận hành phần mềm. Bạn mang điều đó từ quản lý dịch vụ, và dùng XP để làm cho việc bàn giao bớt rủi ro.

### XP và cách nhìn của ITIL về thay đổi

Thực hành kích hoạt thay đổi của ITIL (xem Chủ đề 3.4 — Kích hoạt thay đổi) quan tâm đến việc bảo đảm các thay đổi được đánh giá, ủy quyền và lên lịch để rủi ro được kiểm soát. XP kiểm soát rủi ro ở một nơi khác: trong mã, qua kiểm thử, các bước nhỏ và tri thức chung. Một thay đổi nhỏ, được kiểm thử tự động, được tích hợp và dễ hoàn tác là một thay đổi rủi ro thấp theo bất kỳ đánh giá hợp lý nào. Hai cách nhìn khớp nhau khi bằng chứng từ các thực hành của XP được dùng trong quyết định thay đổi.

## Thực hành tốt

1. **Áp dụng các thực hành như một bộ.** Nhận xét của các nhà phê bình rằng các thực hành XP nâng đỡ nhau là một cảnh báo hữu ích. Kiểm thử mà không tích hợp, hoặc tích hợp mà không có bước nhỏ, cho ít hơn tổng các phần. Hãy giới thiệu chúng cùng nhau khi có thể, và học xem cái nào phụ thuộc vào cái nào.
2. **Viết kiểm thử trước cho các thay đổi quan trọng.** Với một hành vi mới hoặc một bản sửa lỗi, viết một kiểm thử thất bại cho thấy vấn đề, rồi sửa nó. Kiểm thử ở lại như một lá chắn chống vấn đề quay lại, đặc biệt hữu ích với các lỗi từng gây sự cố.
3. **Tích hợp nhiều lần mỗi ngày.** Giữ các nhánh sống ngắn và build, kiểm thử tự động ở mỗi lần hợp nhất. Một bản build hỏng là ưu tiên đầu tiên của nhóm.
4. **Phát hành theo các bước nhỏ.** Mỗi bản phát hành nhỏ mang ít rủi ro hơn và dễ hiểu, dễ hoàn tác hơn. Hướng tới khoảng ngắn nhất mà pipeline của bạn có thể hỗ trợ an toàn, và rút ngắn nó khi sự tự tin tăng.
5. **Refactor liên tục.** Cải thiện thiết kế một chút mỗi ngày thay vì để dành cho một lần viết lại. Bộ kiểm thử là thứ làm điều này an toàn.
6. **Giữ thiết kế đơn giản hết mức có thể.** Xây những gì cần bây giờ và loại bỏ những gì không dùng. Một hệ thống nhỏ hơn có ít thứ hơn để giám sát, vá và giải thích.
7. **Chia sẻ quyền sở hữu mã.** Để bất kỳ thành viên nào thay đổi bất kỳ phần nào, được nâng đỡ bằng kiểm thử và chuẩn chung. Điều này giảm sự phụ thuộc vào vài chuyên gia, vốn cũng là rủi ro về tính sẵn sàng của dịch vụ.
8. **Làm cặp cho công việc rủi ro hoặc lạ.** Dùng lập trình cặp cho các thay đổi hóc búa, đón người mới và đi theo người trực. Coi nó là công cụ lan truyền tri thức và bắt lỗi, và đừng biến nó thành quy tắc cho mọi tác vụ.
9. **Giữ nhịp độ bền vững.** Lập kế hoạch công việc để làm thêm giờ hiếm và không lặp lại tuần này qua tuần khác. Một kỹ sư trực mệt mỏi là rủi ro cho dịch vụ (xem Chủ đề 1.2 — Các nguyên tắc Agile về nhịp độ).
10. **Biến khách hàng thành một phần của nhóm.** Tìm một người dùng thật hoặc đại diện người dùng có thể trả lời câu hỏi trong lúc làm việc. Nhớ lời chỉ trích rằng một người là điểm lỗi đơn lẻ, nên hãy lôi kéo nhiều hơn một tiếng nói.
11. **Viết tiêu chí chấp nhận thành kiểm thử khi có thể.** Biến kỳ vọng của khách hàng thành các kiểm tra tự động chạy với mỗi build. Chúng vừa ghi lại hành vi vừa bảo vệ nó.
12. **Đưa các kiểm tra vận hành vào kiểm thử.** Thêm kiểm tra cho giám sát, ghi log và hành vi khôi phục vào pipeline, để mức sẵn sàng vận hành được xác minh với mỗi thay đổi (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).

## Câu hỏi để thảo luận với nhóm của bạn

**Làm sao chúng ta biết một thay đổi hoạt động trước khi nó đến tay người dùng, và mất bao lâu để biết?**

Lần theo các kiểm tra mà một thay đổi đi qua giữa máy xách tay của lập trình viên và sản xuất. Đếm bao nhiêu cái được tự động hóa và mỗi cái mất bao lâu. Các câu trả lời điển hình gồm một kiểm thử thủ công, một lần rà soát và một niềm hy vọng. Hỏi kiểm tra nào đã bắt được nhiều vấn đề nhất và kiểm tra nào chưa bao giờ bắt được gì. Tiếp theo, chọn một kiểm tra thủ công để tự động hóa.

**Ai có thể thay đổi những phần nào của hệ thống, và điều gì xảy ra khi những người đó vắng mặt?**

Liệt kê các thành phần và những người hiểu từng thành phần. Các thành phần chỉ có một người đứng sau là rủi ro cho dịch vụ. Quyền sở hữu tập thể là câu trả lời của XP, và nó cần kiểm thử cùng chuẩn chung để an toàn. Hỏi một người có thể dạy người khác điều gì trong vòng một tháng. Người điều phối có thể hỏi kỳ nghỉ hay ốm đau đã từng làm chậm một bản sửa chưa.

**Lập trình cặp giúp chúng ta nhiều nhất ở đâu, và chỗ nào nó chỉ làm chậm?**

Lập trình cặp gây tranh cãi, nên hãy mời những ý kiến thẳng thắn. Hỏi mọi người về lần làm cặp tốt nhất và tệ nhất của họ. Làm cặp thường giúp với các hệ thống lạ, thay đổi hóc búa và đón người mới. Nó ít giúp với công việc thường lệ mà một người có thể làm tốt. Thống nhất một tình huống để thử làm cặp trong một tháng, và cách bạn sẽ đánh giá.

**Chất lượng của chúng ta ra sao khi chịu áp lực, và chúng ta bỏ gì trước tiên?**

Hỏi một đợt dồn việc gần đây và cái gì bị bỏ qua: kiểm thử, rà soát, tài liệu. Hỏi sau đó chuyện gì xảy ra. Thường công việc bị bỏ trở lại thành sự cố. Điểm là để nhận ra mẫu hình và quyết định trước thực hành nào được bảo vệ. Tránh đổ lỗi, và nối câu trả lời với nhịp độ bền vững.

**Chúng ta hợp nhất công việc bao lâu một lần, và điều gì khiến ta chờ?**

Hỏi một nhánh điển hình sống bao lâu và điều gì giữ nó lại. Nhánh dài thường phản ánh các thay đổi lớn, rà soát chậm hoặc một bản build không đáng tin. Mỗi điều cần một cách sửa khác nhau. Hỏi nhóm có thể làm gì để việc hợp nhất trong vài giờ thành chuyện bình thường. Chọn một vật cản để gỡ.

**Chúng ta có một khách hàng hoặc người dùng sẵn sàng với nhóm, hay chúng ta đoán họ muốn gì?**

Hỏi ai trả lời các câu hỏi về nhu cầu của người dùng và họ mất bao lâu. Nếu câu trả lời là một chuỗi dài, hỏi câu nào đắt nhất khi trả lời sai. Nhớ các nhà phê bình của chính XP: một đại diện khách hàng duy nhất có thể là nút thắt. Bàn cách tiếp cận nhiều người dùng ngắn gọn và thường xuyên.

## Trong thực tế: một ví dụ agile ITIL

Nhóm số hóa gồm chín người của một cơ quan giao thông công cộng xây dựng và vận hành ứng dụng lập hành trình và một nguồn dữ liệu giờ đến trực tiếp mà các lập trình viên khác trong thành phố dùng. Nhóm phát hành hằng tháng sau một chu kỳ kiểm thử thủ công bốn ngày. Khi một bản phát hành sai, việc hoàn tác mất nửa ngày, nên nhóm ngại phát hành thường xuyên hơn. Trưởng vận hành, cũng là lập trình viên kỳ cựu nhất, trả lời hầu hết các cuộc gọi ngoài giờ vì không ai khác biết nguồn dữ liệu hoạt động thế nào.

Nhóm quyết định áp dụng cùng lúc một vài thực hành XP. Họ thiết lập tích hợp liên tục build và chạy kiểm thử đơn vị ở mỗi lần hợp nhất. Với mỗi lỗi tìm thấy trong sản xuất, họ viết một kiểm thử thất bại trước khi sửa. Hai lập trình viên làm cặp với trưởng vận hành trên công việc về nguồn dữ liệu một giờ mỗi ngày. Nhóm cũng thêm một bước triển khai có thể quay lại phiên bản trước trong vài phút.

Sau bốn tháng, nhóm phát hành mỗi tuần. Bộ kiểm thử bắt được hai hồi quy trước khi phát hành mà chu kỳ thủ công chỉ tìm ra vào ngày cuối. Ba lập trình viên nay có thể xử lý hầu hết các cuộc gọi về nguồn dữ liệu. Không phải mọi thứ đều chạy: bộ kiểm thử mất 25 phút để chạy, nên lập trình viên hợp nhất ít thường xuyên hơn dự định, và một thay đổi lỗi với nguồn giờ đến lọt qua vì các kiểm thử của nó dùng dữ liệu mẫu không khớp với một trường hợp biên thật. Nhóm chuyển các kiểm thử chậm sang giai đoạn thứ hai để kết quả đầu tiên đến trong vòng năm phút, và thêm một kiểm tra giám sát vào đầu ra của nguồn dữ liệu. Họ cũng thống nhất lập trình cặp sẽ vẫn là công cụ cho các vấn đề khó và đón người mới, không phải quy tắc cho mọi tác vụ.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối sở hữu các thực hành của XP. Hãy bắt đầu với những thực hành cho phản hồi nhanh nhất: kiểm thử tự động và tích hợp liên tục. Hãy coi bộ kiểm thử của bạn là một sản phẩm mà vận hành cũng dùng. Nó mô tả dịch vụ phải làm gì và nhanh chóng cho bạn biết khi nó thôi làm vậy.

### Nhóm dịch vụ và vận hành

Nhân viên vận hành có thể dùng các ý tưởng XP cho công việc của chính họ: các thay đổi hạ tầng và cấu hình được kiểm thử trước khi chạy, các thay đổi nhỏ được tích hợp thường xuyên, và tri thức được chia sẻ trong nhóm qua làm cặp và quyền sở hữu tập thể. Hãy xin các nhóm phân phối những kiểm thử bao phủ các hỏng hóc bạn thấy trong sản xuất, và cung cấp lịch sử sự cố để định hướng điều được kiểm thử.

### Lãnh đạo và quản trị

Lãnh đạo tạo điều kiện cho XP bằng cách bảo vệ nhịp độ, trả tiền cho hạ tầng build và kiểm thử, và chấp nhận rằng chất lượng được xây vào công việc chứ không được kiểm tra thêm vào sau. Hãy hỏi bằng chứng về an toàn đến từ pipeline, như kết quả kiểm thử và lịch sử phát hành, và đừng đòi bằng chứng thủ công trùng lặp.

### Khách hàng và người dùng

Khách hàng có vai trò trực tiếp nhất trong XP: họ là một phần của vòng phản hồi của nhóm. Hãy mong được yêu cầu thử các bản phát hành nhỏ, trả lời câu hỏi nhanh và nói điều gì quan trọng nhất tuần này. Đổi lại, bạn sẽ thấy ít bất ngờ hơn và sửa nhanh hơn các vấn đề bạn báo.

## Các kiểu thất bại thường gặp

- **Chỉ áp dụng nghi thức.** Các nhóm lấy họp đứng và bảng công việc rồi bỏ kiểm thử và tích hợp. Thay vào đó, bắt đầu với kiểm thử tự động và tích hợp liên tục, vì chúng cho lợi ích lớn nhất.
- **Coi lập trình cặp là quy tắc.** Ép làm cặp cho mọi việc làm bực mình mọi người và làm chậm các tác vụ thường lệ. Thay vào đó, dùng làm cặp cho các vấn đề khó, đón người mới và chuyển giao tri thức, và rà soát nó đang hoạt động ra sao.
- **Một bộ kiểm thử không ai tin.** Kiểm thử chậm hoặc không đáng tin bị bỏ qua. Thay vào đó, giữ bộ kiểm thử nhanh và sửa hoặc xóa các kiểm thử chập chờn ngay.
- **Quyền sở hữu tập thể không có chuẩn.** Ai cũng đổi được mọi thứ và mã mục nát. Thay vào đó, kết hợp nó với chuẩn mã hóa chung, rà soát và kiểm tra tự động.
- **Một đại diện khách hàng duy nhất.** Một người trở thành nút thắt hoặc nguồn thiên lệch. Thay vào đó, trải liên lạc qua nhiều người dùng và kiểm tra quyết định với việc dùng thực tế.
- **Bỏ hẳn thiết kế.** Các nhóm refactor lặp đi lặp lại mà không có hướng. Thay vào đó, giữ một bức tranh nhẹ về kiến trúc và rà soát nó định kỳ.
- **Làm thêm giờ như bình thường.** Giờ làm dài làm xói mòn chất lượng và gây sự cố. Thay vào đó, lập kế hoạch theo nhịp độ bền vững và coi làm thêm giờ lặp lại là tín hiệu để giảm phạm vi.
- **Bỏ qua vận hành.** XP nói rất ít về vận hành phần mềm, và các nhóm cho rằng nó đã được lo. Thay vào đó, thêm kiểm tra vận hành vào kiểm thử và mời nhân viên vận hành vào lập kế hoạch.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Kiểm thử | Kiểm thử thủ công và muộn | Một số nhóm có kiểm thử đơn vị tự động | Các nhóm viết kiểm thử cùng mã và chạy chúng ở mọi thay đổi | Kết quả kiểm thử và lỗi lọt qua được theo dõi và rà soát | Chiến lược kiểm thử được điều phối giữa các dịch vụ và chia sẻ với vận hành |
| Tích hợp và phát hành | Tích hợp hiếm và các bản phát hành lớn | Một số nhóm dùng tích hợp liên tục | Một pipeline chung build, kiểm thử và triển khai mọi thay đổi | Tần suất phát hành và tỷ lệ hỏng được đo và cải thiện | Pipeline được điều phối giữa các nhóm và nhà cung cấp |
| Quyền sở hữu chung và tri thức | Tri thức nằm ở một vài cá nhân | Một số nhóm làm cặp hoặc luân phiên công việc | Quyền sở hữu tập thể với các chuẩn là chuẩn mực | Khoảng trống tri thức được theo dõi và thu hẹp | Tri thức di chuyển tự do giữa các nhóm và vào runbook |
| Nhịp độ và phúc lợi | Làm thêm giờ là thường lệ | Một số nhóm theo dõi khối lượng công việc | Nhịp độ bền vững là chính sách được nêu | Tải trực và làm thêm giờ được đo và rà soát | Khối lượng công việc được cân bằng giữa các nhóm dựa trên dữ liệu chung |

## Danh mục kiểm tra

- [ ] Nhóm đã thống nhất những thực hành XP nào mình dùng và đã thử chúng cùng nhau.
- [ ] Kiểm thử tự động chạy ở mọi thay đổi, và một bản build hỏng được sửa trước tiên.
- [ ] Mọi lỗi sản xuất đều có một kiểm thử lẽ ra đã bắt được nó.
- [ ] Công việc được hợp nhất vào nhánh chung nhiều lần mỗi ngày.
- [ ] Các bản phát hành nhỏ, và việc hoàn tác có thể làm nhanh.
- [ ] Hơn một người có thể thay đổi và hỗ trợ mỗi phần của hệ thống.
- [ ] Làm cặp được dùng cho các vấn đề khó và đón người mới, và tác động của nó được rà soát.
- [ ] Làm thêm giờ hiếm và không lặp lại tuần này qua tuần khác.
- [ ] Một người dùng hoặc đại diện người dùng sẵn sàng trả lời câu hỏi trong lúc làm việc.
- [ ] Kiểm thử bao gồm các kiểm tra cho giám sát và hành vi khôi phục.

## Lời nhắc AI

**Mục đích: biến một sự cố sản xuất thành một kiểm thử và danh sách bài học.**

```text
Help me learn from a production incident using Extreme Programming habits.

Incident description (factual, blameless, in order): [paste what happened, how it was detected, and how it was fixed].
The part of the system involved: [describe the component and what it does].
Our current tests for that part: [describe what is tested today, or write "unknown"].

Propose: (1) a test, described in plain words, that would have caught this before release; (2) two other tests worth adding nearby; (3) one change to our release process to make a similar fault less likely. Do not invent details about our system. Ask clarifying questions first if the description is too thin, mark assumptions, and list what you are unsure of.
```

**Mục đích: đánh giá nhóm của bạn có thể phát hành các thay đổi nhỏ an toàn đến đâu.**

```text
I want to understand how safe it is for our team to release small changes often.

Our path from change to production, step by step: [paste the steps, who does each, and roughly how long each takes].
Our automated checks: [list tests, builds, and scans, or write "none"].
How we roll back: [describe].
The last two releases that went wrong: [paste short factual descriptions].

Identify the steps that rely on manual work or one person's knowledge. For each, suggest one small automation or sharing step. Do not claim any standard requires something unless I pasted its text. Separate what the text shows from what you assume, and list what you are unsure of.
```

**Mục đích: thiết kế một thí nghiệm một tháng với lập trình cặp.**

```text
Help me design a one-month experiment with pair programming for a team of [number] people working on [type of system].

Our reasons for trying it: [for example "reduce single points of failure on the feed service"].
Constraints: [for example remote working, on-call duties, mixed experience levels].

Propose which kinds of work to pair on and which to leave alone, how to rotate partners, what to observe (use observations such as questions answered and defects found, and do not invent numbers), and how the team will decide at the end whether to continue. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: kiểm tra một Definition of Done về mức sẵn sàng vận hành.**

```text
Here is our current Definition of Done: [paste it].
Things the operations or support team has asked for: [paste, or write "unknown"].

Compare the two. List items operations would need that are missing, and for each one say whether it could be checked automatically in a build pipeline, and how. Do not state that any standard requires an item unless I have pasted its text. Mark assumptions and list what you are unsure of.
```

## Kỹ năng AI

- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): dùng để rà soát hoặc giới thiệu các thực hành XP như làm cặp, phát triển hướng kiểm thử và tích hợp liên tục.
- [user-story](../../../../skills/user-story/SKILL.md): dùng để biến nhu cầu của khách hàng thành các story với tiêu chí chấp nhận có thể trở thành kiểm thử tự động.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): dùng để lập kế hoạch các bản phát hành nhỏ, thường xuyên và các kiểm tra làm chúng an toàn.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để rà soát các thực hành đang hoạt động tốt đến đâu và chọn một thay đổi.
- [runbook](../../../../skills/runbook/SKILL.md): dùng để biến tri thức do một người nắm giữ thành một quy trình chung, đã được kiểm thử.

## Nguồn chính

- **Extreme programming** và **Extreme programming practices** (Wikipedia): một tổng quan về lịch sử, giá trị, thực hành và những lời chỉ trích, kèm trích dẫn.
- **Extreme Programming Explained** (Kent Beck): tuyên bố gốc về phương pháp; ấn bản thứ hai thêm giá trị tôn trọng.
- **Manifesto for Agile Software Development** (agilemanifesto.org): XP là một trong những phương pháp mà các tác giả đã viết Tuyên ngôn.
- **Extreme Programming Refactored: The Case Against XP** (Matt Stephens và Doug Rosenberg, 2003): bài phê phán nổi tiếng nhất, hữu ích để kiểm tra các giả định của chính bạn.

## Tài liệu tham khảo

1. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
2. Extreme programming practices — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming_practices
3. Pair programming — Wikipedia — https://en.wikipedia.org/wiki/Pair_programming
4. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
5. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
6. Code refactoring — Wikipedia — https://en.wikipedia.org/wiki/Code_refactoring
7. Kent Beck — Wikipedia — https://en.wikipedia.org/wiki/Kent_Beck
8. Ward Cunningham — Wikipedia — https://en.wikipedia.org/wiki/Ward_Cunningham
9. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
