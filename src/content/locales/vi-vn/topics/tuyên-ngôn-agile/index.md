# Tuyên ngôn Agile

**Tuyên ngôn cho phát triển phần mềm Agile là bốn câu giá trị ngắn, cho nhóm biết nên ưu tiên điều gì khi hai điều tốt kéo về hai hướng, và những lựa chọn ấy quan trọng với việc vận hành một dịch vụ đang chạy không kém gì với việc xây dựng nó.**

## Vì sao điều này quan trọng

Tuyên ngôn Agile là gốc rễ của hầu hết mọi thứ khác trong tài liệu này. Scrum, Kanban, Extreme Programming và DevOps đều là những cách hành động theo các giá trị mà tuyên ngôn nêu ra. Nếu bạn chỉ biết các thực hành, bạn sẽ sao chép nghi thức mà bỏ sót lý lẽ, và khi một nghi thức không còn hiệu quả, bạn sẽ không có gì để định hướng.

Điều này quan trọng với quản lý dịch vụ CNTT (ITSM) vì một lý do thực tế. Hầu hết các nhóm vận hành dịch vụ ngày nay cũng là nhóm xây dựng chúng, và hai công việc kéo về hai hướng khác nhau. Xây dựng thưởng cho thay đổi và tốc độ. Vận hành thưởng cho sự ổn định và khả năng dự đoán. Tuyên ngôn không xóa bỏ căng thẳng đó, nhưng cho nhóm một cách chung để nói về nó: ở đây chúng ta đang ưu tiên giá trị nào, và chúng ta phải trả giá gì cho nó?

Cũng nên biết Tuyên ngôn không phải là gì. Nó không phải là một quy trình, một chứng chỉ, hay lời hứa rằng làm theo nó thì dự án sẽ thành công. [Bài viết Wikipedia về phát triển phần mềm agile](https://en.wikipedia.org/wiki/Agile_software_development) ghi nhận rằng bằng chứng về lợi ích của các phương pháp agile còn hạn chế và chưa có tính kết luận. Hãy coi Tuyên ngôn như một tập giả thuyết được lập luận tốt để bạn kiểm chứng trong bối cảnh của mình, chứ không phải kinh thánh.

## Các khái niệm cốt lõi

### Nguồn gốc

Mười bảy người làm nghề đã gặp nhau tại khu nghỉ trượt tuyết Snowbird trên dãy núi Wasatch ở Utah, từ ngày 11 đến 13 tháng 2 năm 2001, và cùng viết nên Tuyên ngôn. Theo [bản tường thuật trên agilemanifesto.org](https://agilemanifesto.org/history.html), họ đến từ các phương pháp như Extreme Programming, Scrum và Crystal, và muốn có một lựa chọn thay cho các quy trình nặng nề, dựa vào tài liệu. Nhãn "Light" từng được đề xuất và Alistair Cockburn phản đối, rồi nhóm tự gọi mình là Agile Alliance.

Những người ký tên là Kent Beck, Mike Beedle, Arie van Bennekum, Alistair Cockburn, Ward Cunningham, Martin Fowler, James Grenning, Jim Highsmith, Andrew Hunt, Ron Jeffries, Jon Kern, Brian Marick, Robert C. Martin, Steve Mellor, Ken Schwaber, Jeff Sutherland và Dave Thomas. Một số người trong họ đã tạo ra các phương pháp mà họ mang theo: Beck và Cunningham làm việc về [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), còn Schwaber và Sutherland về [Scrum](https://en.wikipedia.org/wiki/Scrum_(software_development)).

Tuyên ngôn là phản ứng trước một cách làm việc trong đó nhóm lập kế hoạch cho toàn bộ dự án từ đầu, xây dựng theo các giai đoạn dài, và đến muộn mới biết kết quả có được cần hay không. Kiểu làm việc đó thường được gọi là [mô hình thác nước](https://en.wikipedia.org/wiki/Waterfall_model). Các tác giả không phát minh ra làm việc lặp (bài viết Wikipedia truy các phương pháp lặp và tăng dần về năm 1957), nhưng họ đặt cho nó một cái tên chung và một tuyên bố ngắn về giá trị.

### Bốn giá trị

Tuyên ngôn nêu các giá trị của mình đầy đủ như sau. Thông báo bản quyền cho phép sao chép tự do dưới mọi hình thức, nhưng chỉ khi giữ nguyên toàn văn, nên nó được trích dẫn đầy đủ ở đây:

> Chúng tôi đang khám phá những cách tốt hơn để phát triển phần mềm bằng việc tự làm và giúp người khác làm. Qua công việc này, chúng tôi đã đi đến chỗ coi trọng:
>
> **Cá nhân và tương tác** hơn quy trình và công cụ
> **Phần mềm chạy được** hơn tài liệu đầy đủ
> **Hợp tác với khách hàng** hơn đàm phán hợp đồng
> **Phản ứng trước thay đổi** hơn bám theo kế hoạch
>
> Nghĩa là, tuy các mục bên phải có giá trị, chúng tôi coi trọng các mục bên trái hơn.

Ba chi tiết trong cách diễn đạt dễ bị bỏ sót và làm thay đổi ý nghĩa:

- **"Hơn" không có nghĩa là "thay vì".** Câu cuối nói rằng các mục bên phải vẫn có giá trị. Một nhóm bỏ hết tài liệu hoặc bỏ hết kế hoạch là đã hiểu sai Tuyên ngôn.
- **Đó là một sự ưu tiên khi bạn buộc phải chọn.** Các giá trị không bảo bạn phải làm gì mỗi ngày. Chúng cho bạn biết nên nghiêng về hướng nào khi một quy trình, một tài liệu, một hợp đồng hay một kế hoạch cản trở một kết quả tốt hơn.
- **"Bằng việc tự làm."** Câu mở đầu nói rằng các tác giả tìm ra những giá trị này qua thực hành. Đây là một nhận định mang tính thực nghiệm, và đó là lý do bạn được mời kiểm chứng nó với kinh nghiệm của chính mình.

### Đọc từng giá trị cho công việc dịch vụ

Các giá trị được viết về phát triển phần mềm. Dưới đây là ý nghĩa của từng giá trị đối với một nhóm vừa vận hành dịch vụ.

| Giá trị | Nó bảo vệ khỏi điều gì | Nó có thể có nghĩa gì trong công việc dịch vụ |
|---|---|---|
| Cá nhân và tương tác hơn quy trình và công cụ | Một quy trình chạy tốt trên giấy nhưng không ai làm theo được khi chịu áp lực | Trong một sự cố lớn, những người biết hệ thống nói chuyện trực tiếp với nhau. Quy trình sự cố hỗ trợ cuộc trò chuyện đó chứ không thay thế nó. |
| Phần mềm chạy được hơn tài liệu đầy đủ | Những tài liệu mô tả một hệ thống không còn tồn tại | Một runbook được kỹ sư trực sẵn sàng đã dùng thử và kiểm tra có giá trị hơn một cuốn sổ tay dài mà không ai mở ra. |
| Hợp tác với khách hàng hơn đàm phán hợp đồng | Tranh cãi về thỏa thuận mức dịch vụ (SLA) trong khi nhu cầu thật của khách hàng không được đáp ứng | Rà soát mức dịch vụ với khách hàng thường xuyên, và thay đổi chúng khi nhu cầu của họ thay đổi. |
| Phản ứng trước thay đổi hơn bám theo kế hoạch | Đóng băng một kế hoạch khi tình hình đã đổi khác | Một quy trình thay đổi có thể phê duyệt một thay đổi nhỏ, rủi ro thấp trong vài phút cho phép nhóm phản ứng. Một quy trình coi mọi thay đổi như nhau thì không thể. |

### Mười hai nguyên tắc

Tuyên ngôn đi kèm mười hai nguyên tắc làm rõ các giá trị. Chúng là chủ đề của phần tiếp theo (xem Chủ đề 1.2 — Các nguyên tắc Agile). Cùng với nhau, các giá trị và nguyên tắc đôi khi được gọi là tư duy agile.

### Những lời chỉ trích đáng biết

Các nhà phê bình cho rằng Tuyên ngôn làm suy yếu kỷ luật kỹ thuật. Bài viết Wikipedia trích lời Stephen Rakitin, người trong một lá thư gửi *IEEE Computer* đã gọi agile là "một nỗ lực nữa nhằm làm suy yếu kỷ luật của kỹ nghệ phần mềm", và hiểu "phần mềm chạy được hơn tài liệu đầy đủ" như sự cho phép bỏ qua tài liệu. Những người bênh vực đáp rằng tài liệu nên "vừa đủ tốt", một cụm từ Scott Ambler đã dùng, và rằng quá ít tài liệu làm hại việc bảo trì và chia sẻ tri thức.

Với một nhóm dịch vụ, lời chỉ trích này có sức nặng. Nhân viên vận hành thừa hưởng những gì các nhóm phát triển để lại, và tài liệu mỏng thể hiện ra thành phản ứng sự cố chậm và bàn giao kéo dài. Cách đọc công bằng về Tuyên ngôn là tài liệu phải xứng đáng với chỗ đứng của nó, chứ không phải là không cần tài liệu.

## Thực hành tốt

1. **Coi các giá trị là công cụ hỗ trợ quyết định, không phải bộ luật.** Khi nhóm bất đồng, hãy hỏi giá trị nào đang căng thẳng và nhóm nên nghiêng về phía nào. Điều này biến cuộc tranh cãi về sở thích thành cuộc trò chuyện về sự đánh đổi.
2. **Đọc câu đi sau các giá trị.** Thường xuyên nhắc nhóm rằng các mục bên phải vẫn có giá trị. Ghi lại quy trình, tài liệu, hợp đồng và kế hoạch nào bạn giữ và vì sao.
3. **Kiểm tra từng giá trị với một sự kiện gần đây.** Chọn một sự cố hoặc một lần phát hành có thật và hỏi công việc sẽ diễn ra thế nào nếu nhóm nghiêng về phía ngược lại. Bằng chứng từ chính công việc của bạn thuyết phục hơn một câu trích dẫn.
4. **Giữ tài liệu, và giữ cho nó sống.** Ưu tiên các tài liệu ngắn được dùng, được kiểm tra và có người sở hữu, như runbook và mô tả dịch vụ, hơn các tài liệu dài chỉ viết một lần. Xóa những gì không ai đọc.
5. **Biến hợp tác với khách hàng thành thói quen.** Trò chuyện thường xuyên với những người dùng dịch vụ của bạn và đưa điều học được vào backlog. Đừng đợi đến kỳ rà soát hợp đồng.
6. **Lập những kế hoạch biết trước sẽ thay đổi.** Lập kế hoạch theo tầm nhìn ngắn với các điểm rà soát rõ ràng. Giữ một hướng đi dài hơn, và chấp nhận rằng các bước tiến tới nó sẽ dịch chuyển.
7. **Giao quy trình cho người sở hữu và để chúng tiến hóa.** Mỗi quy trình trong hệ thống quản lý dịch vụ nên có một người sở hữu được nêu tên và một cách để những người dùng nó đề xuất thay đổi. Một quy trình không ai được đổi sẽ bị lách qua.
8. **Dùng các giá trị khi tuyển dụng và đón nhân viên mới.** Mô tả chúng cho nhân viên mới bằng các ví dụ từ chính nhóm của bạn để họ thấy các giá trị hiện ra trong những lựa chọn hằng ngày.
9. **Xem lại các giá trị sau khi mở rộng quy mô.** Các tổ chức lớn hơn có xu hướng trôi về phía quy trình và công cụ. Tổ chức một cuộc trò chuyện định kỳ, có thể hai lần một năm, hỏi xem sự cân bằng còn phục vụ khách hàng hay không.
10. **Đừng dùng Tuyên ngôn như vũ khí.** Trích "cá nhân hơn quy trình" để gạt đi mối lo của đồng nghiệp về kiểm toán hay an toàn là chấm dứt một cuộc trò chuyện lẽ ra phải bắt đầu. Hãy dùng nó để mở thảo luận, không phải để thắng.

## Câu hỏi để thảo luận với nhóm của bạn

**Trong bốn giá trị, nhóm chúng ta đã ưu tiên giá trị nào trong thực tế, và giá trị nào chúng ta chỉ tuyên bố là ưu tiên?**

Hãy bắt đầu bằng việc liệt kê các quyết định gần đây: một lần phát hành bị hoãn vì thủ tục giấy tờ, một yêu cầu bị từ chối vì không có trong hợp đồng, một kế hoạch được giữ lại dù đã hết hợp lý. Gắn mỗi quyết định với một giá trị. Các nhóm thường thấy có khoảng cách giữa điều họ nói và điều họ làm, và khoảng cách đó chính là phát hiện hữu ích. Người điều phối nên tránh đổ lỗi và hỏi áp lực nào đã tạo ra từng lựa chọn. Tiếp theo, hỏi xem nhóm có thể thay đổi những áp lực nào.

**Ở đâu quy trình và công cụ của chúng ta giúp mọi người nói chuyện với nhau, và ở đâu chúng cản đường?**

Mời mọi người nêu một quy trình giúp họ đỡ công sức và một quy trình tốn công sức. Quy trình tốn công thường là một quy trình tốt bị áp dụng cứng nhắc, chẳng hạn một luồng ticket đòi bốn lần phê duyệt cho một thay đổi tầm thường. Hãy tìm những chỗ mọi người né công cụ và dùng chat hoặc nói chuyện ở hành lang thay vào đó, vì điều đó thường báo hiệu sự lệch pha. Kết thúc bằng một quy trình để đơn giản hóa trong tháng này.

**Tài liệu nào chúng ta sẽ tiếc nếu mất, và tài liệu nào có thể xóa ngay ngày mai?**

Câu hỏi này kiểm tra giá trị "phần mềm chạy được hơn tài liệu đầy đủ" mà không đẩy nó đến cực đoan. Hỏi mọi người họ đã dùng những tài liệu nào trong tháng qua. Runbook, sơ đồ kiến trúc và mô tả dịch vụ hướng tới khách hàng thường được nhắc đến. Những tài liệu không ai nhắc là ứng viên để xóa hoặc gộp. Nhắc nhóm rằng xóa là một quyết định, nên hãy giao một người chịu trách nhiệm.

**Khách hàng tham gia định hình dịch vụ của chúng ta như thế nào, và làm sao chúng ta biết là đủ?**

Thu thập các ví dụ về ý kiến khách hàng đã làm thay đổi một quyết định. Nếu danh sách ngắn, hãy hỏi vì sao. Nguyên nhân thường mang tính cấu trúc: một người quản lý tài khoản ở giữa, kỳ rà soát SLA mỗi năm một lần, hoặc một bàn dịch vụ ghi nhận phàn nàn nhưng không chuyển đi. Nếu có thể, hỏi thẳng khách hàng họ muốn thay đổi điều gì. Gợi ý cho người điều phối là tìm một cách cụ thể để rút ngắn đường đi giữa khách hàng và nhóm.

**Cần gì để chúng ta phê duyệt một thay đổi nhỏ, rủi ro thấp trong vòng một giờ, và có nên làm vậy không?**

Câu hỏi này nối giá trị thứ tư với kiểm soát thay đổi (xem Chủ đề 3.4 — Kích hoạt thay đổi). Hỏi điều gì đang làm chậm các thay đổi nhỏ hiện nay: một cuộc họp hằng tuần, một biểu mẫu rủi ro thủ công, một bài kiểm thử còn thiếu. Hỏi bằng chứng nào sẽ làm nhóm yên tâm, như kiểm thử tự động hoặc cách hoàn tác nhanh. Đừng ép phải trả lời "có". Mục đích là khám phá điều nhóm tin là mình cần, đó là khởi đầu của một kế hoạch.

**Nếu một cơ quan quản lý, một kiểm toán viên hay một khách hàng lớn đọc Tuyên ngôn, họ sẽ lo ngại điều gì, và họ có đúng không?**

Một số mối lo là chính đáng. Kiểm toán viên muốn bằng chứng, và khách hàng muốn cam kết. Mời nhóm xem trọng những mối quan tâm đó và hỏi bằng chứng và cam kết nhẹ nhàng nào sẽ làm họ hài lòng. Các nhóm chứng minh được công việc agile tạo ra dấu vết kiểm toán thường được trao thêm tự do chứ không bớt. Ghi lại các mối quan tâm cho cuộc thảo luận về quản trị trong Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ.

## Trong thực tế: một ví dụ agile ITIL

Một nhà bán lẻ trực tuyến cỡ vừa có một nhóm nền tảng tám người xây dựng và vận hành dịch vụ thanh toán. Nhóm gần đây chuyển từ phát hành theo quý sang hằng tuần, và nay gặp một vấn đề: bàn dịch vụ phàn nàn rằng thay đổi đến mà không báo trước, còn nhóm nền tảng phàn nàn rằng cuộc họp phê duyệt thay đổi mất một tuần để duyệt những thay đổi đã sẵn sàng từ thứ Hai.

Trưởng nhóm tổ chức một buổi một giờ dùng bốn giá trị làm khung. Họ liệt kê các sự kiện gần đây lên tường. Một bản sửa mã giảm giá chờ chín ngày để được phê duyệt. Một thay đổi cơ sở dữ liệu được duyệt nhanh và gây ra sự cố ngừng dịch vụ. Một runbook về lỗi thanh toán được phát hiện là mô tả một hệ thống đã ngừng dùng từ năm trước. Nhóm đặt từng sự kiện vào một giá trị. Phần lớn các trường hợp chậm trễ nằm dưới "quy trình và công cụ hơn cá nhân và tương tác", nghĩa là quy trình được chạy vì chính nó. Sự cố nằm dưới "phản ứng trước thay đổi hơn bám theo kế hoạch", vì cuộc họp phê duyệt coi mọi thay đổi như nhau và không xem xét kỹ thay đổi rủi ro.

Họ thống nhất ba thay đổi. Thứ nhất, các thay đổi khớp với một danh sách ngắn các mẫu rủi ro thấp, có kiểm thử tự động đạt và cách hoàn tác đã thử, sẽ được duyệt trước và ghi nhận tự động. Thứ hai, các thay đổi rủi ro sẽ được một đồng nghiệp và một đại diện vận hành rà soát trong vòng một ngày. Thứ ba, mỗi runbook sẽ có một người sở hữu được nêu tên và được kiểm tra mỗi lần dùng trong một sự cố.

Hai tháng sau, trưởng nhóm xem lại kết quả cùng bàn dịch vụ. Các thay đổi được duyệt trước chạy nhanh, và bàn dịch vụ nay thấy mọi thay đổi trong một luồng chung. Còn một vấn đề: hai trong số các mẫu được duyệt trước vạch ra quá rộng, và một sự cố nhỏ đã xảy ra. Nhóm thu hẹp các mẫu và giữ cách tiếp cận. Họ cũng thấy luồng chung không thay được việc nói chuyện, nên trưởng bàn dịch vụ tham gia buổi lập kế hoạch hằng tuần của nhóm nền tảng.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Với các nhóm phân phối, Tuyên ngôn là lời nhắc rằng phần mềm chạy được bao gồm cả vận hành chạy được. Một tính năng không thể giám sát, hỗ trợ hay hoàn tác thì chưa xong. Hãy dùng các giá trị để bênh vực công việc vận hành làm cho các lần phát hành an toàn, và mời nhân viên vận hành vào việc lập kế hoạch từ sớm.

### Nhóm dịch vụ và vận hành

Nhân viên vận hành thường cảm thấy Tuyên ngôn nói thay cho lập trình viên. Hãy đọc nó khác đi: các giá trị ưu tiên con người nói chuyện, những thứ được kiểm tra và phản ứng nhanh trước thay đổi, tất cả đều hợp với vận hành tốt. Hãy mang các thực hành ITIL ra bàn như kinh nghiệm tích lũy về những gì hay hỏng, và đề xuất phiên bản nhẹ hơn mà giữ được mục đích.

### Lãnh đạo và quản trị

Lãnh đạo tạo ra điều kiện để các giá trị phát huy. Nếu mỗi lần phát hành cần năm chữ ký, một nhóm không thể ưu tiên phản ứng trước thay đổi dù có treo bao nhiêu áp phích trên tường. Hãy hỏi các nhóm xem quy tắc của chính bạn làm họ chậm ở đâu, và sẵn sàng đổi một quy tắc khi mục đích có thể đạt bằng cách khác.

### Khách hàng và người dùng

Khách hàng được nêu trong hai trong bốn giá trị. Với họ, Tuyên ngôn hứa hợp tác chứ không chỉ giao hàng. Hãy mong được hỏi bạn cần gì, được thấy các thay đổi chạy được thường xuyên, và được đổi ý. Đổi lại, nhóm cần phản hồi và quyết định kịp thời từ bạn.

## Các kiểu thất bại thường gặp

- **Dùng "hơn" như "thay vì".** Các nhóm bỏ hẳn tài liệu, kế hoạch hay hợp đồng rồi chịu hậu quả. Thay vào đó, hãy quyết định mỗi thứ phải đạt được gì và giữ hình thức nhẹ nhất đạt được điều đó.
- **Coi các giá trị là giấy phép bỏ qua kỷ luật.** "Chúng tôi làm agile" trở thành cái cớ cho việc không kiểm thử, không ghi nhận, không bàn giao. Thay vào đó, gắn mỗi giá trị với một thực hành cụ thể và kiểm tra thực hành đó có đang diễn ra.
- **Đọc thuộc Tuyên ngôn mà không kiểm chứng.** Khẩu hiệu thay cho suy nghĩ. Thay vào đó, định kỳ rà soát các sự kiện thực tế đối chiếu với các giá trị.
- **Dùng nó chống lại đồng nghiệp.** Trích một giá trị để gạt đi mối lo từ kiểm toán, an ninh hay vận hành làm tổn hại lòng tin. Thay vào đó, hỏi mối lo ấy bảo vệ điều gì và làm sao đáp ứng nó một cách nhẹ nhàng.
- **Áp dụng thực hành mà không có giá trị.** Các cuộc họp hằng ngày và bảng công việc xuất hiện, nhưng quyết định vẫn chờ qua chuỗi phê duyệt. Thay vào đó, hỏi quyết định nào nên đến gần hơn với những người làm việc.
- **Cho rằng Tuyên ngôn trả lời các câu hỏi vận hành.** Nó được viết về phát triển phần mềm năm 2001 và nói rất ít về vận hành dịch vụ. Thay vào đó, kết hợp nó với các thực hành quản lý dịch vụ và điều chỉnh cả hai.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Hiểu biết chung về các giá trị | Một vài người đã đọc Tuyên ngôn | Một số nhóm thảo luận về nó, với những cách đọc khác nhau | Các nhóm có chung một cách đọc ngắn, bằng văn bản về các giá trị cho bối cảnh của mình | Các nhóm đối chiếu các quyết định gần đây với các giá trị trong các buổi rà soát định kỳ | Các nhóm, nhà cung cấp và khách hàng dùng chung vốn từ về sự đánh đổi |
| Cân bằng giữa quy trình và con người | Quy trình được theo hoặc bị bỏ qua tùy người | Một số quy trình được từng nhóm đơn giản hóa | Mỗi quy trình có người sở hữu và một đường để yêu cầu thay đổi | Ma sát của quy trình được đo, ví dụ thời gian chờ cho mỗi thay đổi | Quy trình được điều chỉnh giữa các nhóm dựa trên bằng chứng chung |
| Hợp tác với khách hàng | Phản hồi đến qua phàn nàn | Một số nhóm gặp khách hàng thường xuyên | Mỗi dịch vụ có một cách xác định để thu thập ý kiến khách hàng | Ý kiến khách hàng được theo dõi và gắn với các thay đổi đã làm | Khách hàng giúp đặt thứ tự ưu tiên giữa các dịch vụ |
| Tài liệu và kế hoạch | Tài liệu hiếm hoặc cũ | Các nhóm giữ những tài liệu họ thấy hữu ích | Tài liệu bắt buộc ít, có người sở hữu và được rà soát | Việc dùng tài liệu được quan sát và loại bỏ những cái không dùng | Tài liệu được sinh ra hoặc xác minh như một phần của phân phối |

## Danh mục kiểm tra

- [ ] Mọi thành viên trong nhóm đã đọc Tuyên ngôn và mười hai nguyên tắc của nó một lần.
- [ ] Nhóm có thể phát biểu từng giá trị bằng lời của mình, kèm một ví dụ từ công việc của chính họ.
- [ ] Chúng ta đã liệt kê quy trình, tài liệu, hợp đồng và kế hoạch nào mình giữ, và vì sao.
- [ ] Mọi quy trình đang dùng đều có người sở hữu được nêu tên và một cách để đề xuất thay đổi.
- [ ] Runbook và mô tả dịch vụ có người sở hữu và ngày rà soát.
- [ ] Chúng ta tổ chức một cuộc trò chuyện thường xuyên với khách hàng của ít nhất một dịch vụ.
- [ ] Chúng ta đã rà soát ít nhất một sự cố hoặc lần phát hành gần đây đối chiếu với bốn giá trị.
- [ ] Các quy tắc do lãnh đạo đặt ra làm chậm nhóm đã được liệt kê và thảo luận.
- [ ] Chúng ta đã viết ra cách mình sẽ cho kiểm toán viên và cơ quan quản lý thấy những gì mình làm.

## Lời nhắc AI

**Mục đích: biến bốn giá trị thành một bản đọc ngắn cho chính nhóm của bạn.**

```text
You are helping a team of [team size and type, e.g. "eight engineers who build and run a payments service"] write a plain-language reading of the four values of the Agile Manifesto for their own context.

Here are the four values as written:
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

Context about our team and work: [paste 3-5 sentences about what you build, what you run, who your customers are, and any rules you must follow, such as audit or safety rules].

For each value, write two or three sentences on what it could mean for us, and one example drawn only from the context above. Mark clearly any point where you are guessing. Ask me up to three clarifying questions first if the context is too thin. Do not invent statistics or quote sources. List what you are unsure of.
```

**Mục đích: rà soát một sự kiện gần đây đối chiếu với các giá trị.**

```text
Below is a short description of a recent event in our team (an incident, a release, or a delayed change). Help me review it against the four values of the Agile Manifesto.

Event: [paste a factual description of what happened, in order, without blaming anyone].

For each value, say whether the event shows the team leaning toward the value on the left, toward the item on the right, or neither, and explain your reasoning in two sentences. Then suggest up to three questions our team could discuss. Separate what you can see in the text from what you are assuming, and list what you are unsure of.
```

**Mục đích: chuẩn bị trả lời mối lo của kiểm toán viên về cách làm việc agile.**

```text
I need to explain to an auditor how our agile team keeps adequate records. The auditor's concern is: [paste the concern, e.g. "no evidence of who approved changes"].

Our current practice is: [describe what you do now: tools, reviews, approvals, where records are kept].

List what evidence our current practice already produces, what gaps the auditor might notice, and three lightweight ways to close each gap without adding a heavy manual process. Do not state that any law, standard, or regulation requires something unless I have pasted its text above. List your assumptions and what you are unsure of at the end.
```

**Mục đích: thiết kế một buổi làm việc nhóm một giờ về Tuyên ngôn.**

```text
Design a one-hour facilitated session for a team of [number] people on the Agile Manifesto. The team works on [services or products] and its biggest current frustration is [frustration].

Include: a five-minute opening, a 20-minute activity where the team matches recent real events to the four values, a 20-minute discussion of two or three of the six questions below, and a 10-minute close with one agreed action.

Questions available: [paste the questions you want to use from the "Questions to discuss" section].

Give a timed agenda, what the facilitator says, and what to watch for. Keep it practical and do not assume any tool. Ask clarifying questions if information is missing, and list what you are unsure of.
```

## Kỹ năng AI

- [agile-principles](../../../../skills/agile-principles/SKILL.md): dùng khi bạn muốn đối chiếu một thực hành của nhóm hay một quyết định về quy trình với các nguyên tắc của Tuyên ngôn.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để tổ chức một buổi retrospective rà soát các sự kiện gần đây đối chiếu với các giá trị và dẫn đến một thay đổi thật sự.
- [agile-liftoff](../../../../skills/agile-liftoff/SKILL.md): dùng khi bắt đầu một nhóm hoặc dự án mới và bạn muốn có một cách đọc chung về các giá trị ngay từ ngày đầu.
- [agile-coaching](../../../../skills/agile-coaching/SKILL.md): dùng khi bạn là người giúp một nhóm chuyển từ sao chép nghi thức sang hiểu lý do của chúng.

## Nguồn chính

- **Manifesto for Agile Software Development** (agilemanifesto.org): văn bản gốc. Hãy đọc trọn vẹn; chỉ mất hai phút.
- **Principles behind the Agile Manifesto** (agilemanifesto.org): mười hai nguyên tắc, bạn đồng hành hữu ích nhất của các giá trị.
- **History: The Agile Manifesto** (agilemanifesto.org): bản tường thuật ngắn của chính các tác giả về cuộc họp ở Snowbird.
- **Agile software development** (Wikipedia): một tổng quan rộng với lịch sử, phương pháp, thực hành và các lời chỉ trích, hữu ích như một bản đồ để đọc thêm.

## Tài liệu tham khảo

1. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
2. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
3. History: The Agile Manifesto — Jim Highsmith for the Agile Alliance, agilemanifesto.org — https://agilemanifesto.org/history.html
4. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
5. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
6. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
7. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
8. Manifesto for Agile Software Development — Wikipedia — https://en.wikipedia.org/wiki/Manifesto_for_Agile_Software_Development
9. Agile Alliance — Wikipedia — https://en.wikipedia.org/wiki/Agile_Alliance
10. Snowbird, Utah — Wikipedia — https://en.wikipedia.org/wiki/Snowbird,_Utah
