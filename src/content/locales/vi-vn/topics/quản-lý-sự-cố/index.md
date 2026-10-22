# Quản lý sự cố

**Quản lý sự cố khôi phục một dịch vụ bị suy giảm nhanh nhất có thể một cách an toàn, và thói quen agile làm nó hiệu quả là các vai trò rõ ràng dưới áp lực, tiếp theo là một buổi rà soát không đổ lỗi biến mỗi sự cố thành một thay đổi.**

## Vì sao điều này quan trọng

Sự cố là khoảnh khắc một dịch vụ bị đánh giá. Người dùng không nhớ những tháng sẵn sàng tốt; họ nhớ lần ngừng hoạt động và cách nó được xử lý. Một nhóm đã tính trước ai làm gì, giao tiếp ra sao và khi nào kêu gọi giúp đỡ sẽ khôi phục dịch vụ nhanh hơn và mắc ít sai lầm hơn một nhóm ứng biến.

Các nhóm agile vận hành những gì họ xây thường xử lý sự cố một cách không chính thức. Điều này hiệu quả cho đến khi một sự cố lớn, trải rộng qua nhiều nhóm hoặc xảy ra vào ban đêm. Khi đó việc thiếu vai trò và bản ghi lộ ra: các kỹ sư dồn vào vấn đề kỹ thuật, không ai nói với khách hàng, và hai người thực hiện các thay đổi mâu thuẫn nhau. Thực hành quản lý sự cố của ITSM, cùng với các thực hành từ kỹ thuật độ tin cậy hệ thống, đưa ra những cách đã được kiểm chứng để ngăn điều đó.

[Bài viết Wikipedia về quản lý sự cố](https://en.wikipedia.org/wiki/Incident_management) bao gồm nhiều lĩnh vực, từ ứng phó khẩn cấp đến an ninh máy tính. Với quản lý dịch vụ CNTT, nó nói mục tiêu là khôi phục dịch vụ bình thường trong mức dịch vụ đã thỏa thuận nhanh nhất có thể, trích dẫn ITIL 2011 để định nghĩa một sự cố là một sự gián đoạn ngoài kế hoạch đối với một dịch vụ CNTT hoặc sự suy giảm chất lượng của nó, và liệt kê ba thách thức: nhiễu cảnh báo, giải quyết vấn đề kéo dài và khó dự đoán các lần ngừng hoạt động. Về chi tiết, chủ đề này dựa nhiều vào hai chương trong cuốn *Site Reliability Engineering* của Google, mô tả cách tiếp cận chỉ huy sự cố và postmortem không đổ lỗi từ thực tế ở một tổ chức lớn. Hãy coi các chương đó là một cách tiếp cận được ghi chép tốt, không phải cách duy nhất.

## Các khái niệm cốt lõi

### Sự cố là gì

Một **sự cố**, theo cách dùng trong ITSM, là một sự gián đoạn ngoài kế hoạch đối với một dịch vụ hoặc sự suy giảm chất lượng của nó. Bài viết về ITSM cũng bao gồm một gián đoạn "tiềm tàng". Một sự cố không giống một **vấn đề**, là nguyên nhân gốc, hay một **yêu cầu dịch vụ**, là một đề nghị thường lệ (xem Chủ đề 3.3 — Quản lý vấn đề và Chủ đề 3.6 — Quản lý yêu cầu dịch vụ). Giữ ba thứ tách biệt là quan trọng vì mỗi thứ được quản lý cho một mục tiêu khác nhau: khôi phục dịch vụ, loại bỏ nguyên nhân và đáp ứng nhu cầu thường lệ.

### Mục tiêu: khôi phục dịch vụ, bảo toàn bằng chứng

Mục tiêu đầu tiên của quản lý sự cố là khôi phục dịch vụ. Chương SRE về quản lý sự cố thêm mục tiêu thứ hai: bảo toàn bằng chứng cần để tìm nguyên nhân gốc về sau. Các thực hành tốt của chính chương nói hãy ưu tiên khôi phục dịch vụ và bảo toàn bằng chứng, theo tinh thần đó. Sửa nguyên nhân có thể đến sau, trong quản lý vấn đề.

### Vì sao sự cố không được quản lý lại hỏng

Chương SRE, do Andrew Stribblehill viết, dùng một ví dụ kéo dài về một kỹ sư trực mà sự cố ngừng hoạt động lớn dần thành một thất bại toàn diện. Nó nêu ba mối nguy của sự cố không được quản lý:

- **Tập trung sắc bén vào vấn đề kỹ thuật.** Các kỹ sư mải mê sửa chữa đánh mất tầm nhìn về giảm thiểu và bức tranh rộng hơn.
- **Giao tiếp kém.** Không ai biết người khác đang làm gì, và các bên liên quan vẫn không được thông tin.
- **Làm tự do.** Những thay đổi không phối hợp, như một lần triển khai phút chót, làm tình hình tệ hơn.

### Các vai trò dưới áp lực

Chương này đặt cách tiếp cận của mình trên Hệ thống Chỉ huy Sự cố (Incident Command System), vốn đến từ ứng phó khẩn cấp (bài viết Wikipedia về quản lý sự cố cũng nhắc đến nó). Các ý tưởng chính:

| Vai trò | Nó làm gì |
|---|---|
| **Chỉ huy sự cố** | Nắm trạng thái ở cấp cao, cấu trúc hóa việc ứng phó, gỡ chướng ngại và đảm nhận bất kỳ vai trò nào chưa được giao |
| **Trưởng vận hành** | Áp dụng công cụ vào vấn đề; chỉ nhóm vận hành thay đổi hệ thống trong một sự cố |
| **Trưởng truyền thông** | Là bộ mặt công khai của việc ứng phó; đưa ra các cập nhật định kỳ và giữ tài liệu sự cố luôn mới |
| **Trưởng kế hoạch** | Xử lý các vấn đề dài hạn hơn như ghi nhận lỗi, sắp xếp bàn giao và theo dõi sự lệch khỏi bình thường để các thay đổi có thể được hoàn tác |

Chương gọi nguyên tắc này là sự phân tách trách nhiệm đệ quy. Vai trò rõ ràng trao cho con người sự tự chủ, vì họ không cần nghi ngờ đồng nghiệp, và một người quá tải sẽ xin thêm người và ủy quyền các phần công việc. Việc bàn giao giữa các chỉ huy là tường minh và được xác nhận.

### Tài liệu sự cố trực tiếp

Chương nói nhiệm vụ quan trọng nhất của chỉ huy là giữ một tài liệu trực tiếp về trạng thái của sự cố, lý tưởng là nhiều người cùng chỉnh sửa được. Nó có thể bừa bộn nhưng phải giữ được tính hữu ích, với thông tin quan trọng ở gần đầu, và được lưu giữ để phân tích sau. Một kênh chung hoặc một phòng thực đóng vai trò sở chỉ huy.

### Khi nào tuyên bố một sự cố

Chương khuyến nghị tuyên bố sự cố sớm, không phải sau nhiều giờ khi một vấn đề đang xấu đi. Nó gợi ý coi một sự kiện là sự cố nếu cần sự tham gia của nhóm thứ hai để sửa, nếu sự ngừng hoạt động khách hàng thấy được, hoặc nếu nó vẫn chưa giải quyết sau một giờ phân tích tập trung. Đây là các quy tắc ngón tay cái của một tổ chức. Ngưỡng của chính bạn nên phản ánh các dịch vụ và người dùng của bạn.

### Mức ưu tiên và mức nghiêm trọng

Các nguồn đã đọc cho cuốn sách này không định nghĩa các mức ưu tiên hay mức nghiêm trọng, và bài viết Wikipedia không nêu mức nào. Trong thực tế, các nhóm định nghĩa các mức từ tác động lên người dùng và mức khẩn của nhu cầu, và quyết định trước ai được gọi ở mỗi mức. Giữ sơ đồ ngắn, có ví dụ, và kiểm tra nó bằng cách áp dụng cho các sự cố trong quá khứ.

### Giao tiếp

Giao tiếp có hai đối tượng. Người ứng phó cần biết trạng thái và ai đang làm gì. Các bên liên quan và người dùng cần biết cái gì bị ảnh hưởng, điều gì đang được làm và khi nào mong có cập nhật tiếp theo. Trưởng truyền thông trong chương SRE phục vụ đối tượng thứ hai và giữ nhật ký cho đối tượng thứ nhất. Với các sự cố ngừng hoạt động hướng ra công chúng, một kế hoạch giao tiếp trong khủng hoảng là hữu ích (xem kỹ năng giao tiếp khủng hoảng bên dưới).

### Postmortem không đổ lỗi

Chương SRE về văn hóa postmortem đề ra nửa còn lại là việc học. Một postmortem ghi lại sự cố, tác động, biện pháp giảm thiểu, nguyên nhân gốc và các hành động tiếp theo. Mục tiêu của nó là ghi lại sự cố, hiểu mọi nguyên nhân gốc góp phần và đưa vào các hành động phòng ngừa hiệu quả. Nó không đổ lỗi: nó xác định các nguyên nhân góp phần mà không đổ lỗi cho cá nhân hay nhóm, và giả định mọi người "có ý định tốt và đã làm điều đúng với thông tin họ có." Theo lời của chương, "Bạn không thể 'sửa' con người, nhưng bạn có thể sửa hệ thống và quy trình."

Chương gợi ý định nghĩa trước các điều kiện kích hoạt postmortem, như thời gian ngừng hoạt động người dùng thấy được vượt một ngưỡng, bất kỳ mất dữ liệu nào, một can thiệp của người trực như hoàn tác, thời gian giải quyết vượt một ngưỡng, hoặc một lỗi giám sát. Nó cũng nói "Một postmortem chưa được rà soát cũng chẳng khác gì chưa từng tồn tại", và vì vậy khuyến nghị các buổi rà soát định kỳ và một kho lưu trữ chung. Nó mô tả các hoạt động xây dựng văn hóa như bản tin hằng tháng, câu lạc bộ đọc và "Wheel of Misfortune" (Bánh xe Vận rủi), trong đó các sự cố trong quá khứ được diễn lại.

### Sự cố lớn

Nhiều thực hành ITSM định nghĩa một **sự cố lớn** là sự cố cần một ứng phó chính thức hơn thường lệ. Các nguồn đã đọc ở đây không định nghĩa nó, nên hãy làm bằng lời của chính bạn: chẳng hạn, một sự cố ảnh hưởng đến nhiều người dùng hoặc một dịch vụ then chốt và cần ứng phó phối hợp giữa các nhóm. Điều quan trọng là mọi người biết trước điều gì thay đổi: ai chỉ huy, ai được gọi, bao lâu thì có cập nhật.

### Sự cố và giao hàng liên tục

Sự cố thường phát sinh từ các thay đổi gần đây. Các nhóm agile ở vị trí tốt để học từ chúng vì họ phát hành thường xuyên và có vòng phản hồi ngắn. Việc học cần một con đường: các hành động postmortem đi vào backlog với người chịu trách nhiệm và ngày, và các sự cố lặp lại đi đến quản lý vấn đề. Không có con đường đó, xử lý sự cố thành một thói quen sửa chữa.

## Thực hành tốt

1. **Quyết định trước điều gì được tính là sự cố.** Viết một định nghĩa ngắn có ví dụ, và hạ ngưỡng tuyên bố một sự cố. Quy tắc ngón tay cái của chương SRE là tuyên bố sớm khi cần nhóm thứ hai, khách hàng thấy được vấn đề, hoặc một giờ phân tích chưa giải quyết được.
2. **Định nghĩa vài mức nghiêm trọng có ví dụ.** Dựa trên tác động lên người dùng, và nêu ai được gọi ở mỗi mức. Thử sơ đồ trên các sự cố trong quá khứ và điều chỉnh.
3. **Giao vai trò ở đầu mỗi sự cố.** Chỉ định một chỉ huy sự cố, một trưởng vận hành và một trưởng truyền thông. Trong nhóm nhỏ, một người có thể giữ nhiều hơn một vai trò; hãy nói to điều đó.
4. **Tách việc sửa khỏi việc điều phối.** Những người thay đổi hệ thống không nên đồng thời trả lời câu hỏi. Để chỉ huy điều phối và trưởng truyền thông thông tin.
5. **Giữ một bản ghi trực tiếp.** Dùng một tài liệu hoặc kênh chung với dấu thời gian, quyết định và các thay đổi đã làm. Nó hỗ trợ bàn giao và cho postmortem nguyên liệu.
6. **Chỉ cho phép các thay đổi được ủy quyền.** Chương SRE nói chỉ nhóm vận hành nên sửa đổi hệ thống trong một sự cố. Nêu ai được đổi gì, và nhờ người khác nói chuyện với chỉ huy.
7. **Giao tiếp theo lịch.** Thống nhất khoảng cập nhật cho mỗi mức nghiêm trọng và giữ nó, ngay cả khi không có gì mới. Sự im lặng sinh lo lắng và các câu hỏi trùng lặp.
8. **Bàn giao tường minh.** Khi một chỉ huy hay người ứng phó được thay, hãy nói to và để người kia xác nhận. Bàn giao không rõ làm mất ngữ cảnh.
9. **Luyện tập.** Chạy quy trình sự cố trên các sự kiện nhỏ và trong các buổi diễn tập, để các vai trò quen thuộc trước một sự cố ngừng hoạt động nghiêm trọng. Luân phiên mọi người qua các vai trò.
10. **Tổ chức postmortem không đổ lỗi khi đạt điều kiện kích hoạt.** Viết cùng những người liên quan, tập trung vào nguyên nhân góp phần và bản sửa hệ thống, và chia sẻ rộng rãi (xem kỹ năng postmortem bên dưới).
11. **Biến hành động thành hạng mục backlog.** Cho mỗi việc tiếp theo một người chịu trách nhiệm và một ngày, và rà soát chúng ở một cuộc họp định kỳ. Một postmortem chưa được rà soát không tạo ra thay đổi.
12. **Chuyển bằng chứng cho quản lý vấn đề.** Nối các sự cố lặp lại với một bản ghi vấn đề, để nguyên nhân được loại bỏ chứ không chỉ sửa chữa (xem Chủ đề 3.3 — Quản lý vấn đề).

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta làm gì trong mười phút đầu của một sự cố, và ai quyết định?**

Đi qua sự cố đáng kể gần nhất từng phút một. Ghi lại ai dẫn đầu, ai giao tiếp và ai đổi gì. Nhiều nhóm thấy các vai trò được ngầm hiểu chứ không được thống nhất. Người điều phối có thể hỏi điều gì sẽ xảy ra nếu người dẫn đầu thường lệ vắng mặt. Tiếp theo, thống nhất cách giao vai trò lần sau.

**Khi nào chúng ta gọi một việc là sự cố, và khi nào chúng ta chờ?**

Thu thập ví dụ về các sự kiện bị tuyên bố muộn. Hỏi điều gì giữ mọi người lại: không muốn làm phiền người khác, sự không chắc chắn hay nỗi sợ bị đổ lỗi. So sánh với các điều kiện kích hoạt của chương SRE. Thống nhất một ngưỡng và một cách tuyên bố sự cố mà không làm ầm ĩ.

**Người dùng của chúng ta biết điều gì đang xảy ra trong lúc ngừng hoạt động bằng cách nào, và bao lâu một lần?**

Nhìn lần ngừng hoạt động gần nhất từ phía người dùng. Hỏi ai nói với họ, họ được nói gì và khoảng trống kéo dài bao lâu. Thường câu trả lời là một sự im lặng dài rồi một ghi chú ngắn. Hỏi ai nên sở hữu việc giao tiếp và tin nhắn đầu tiên nên nói gì. Thống nhất một mẫu và một nhịp cập nhật.

**Postmortem gần nhất của chúng ta đã thay đổi gì, và làm sao chúng ta biết?**

Xin các hành động, người chịu trách nhiệm và trạng thái. Nếu không cái nào được hoàn thành, hỏi vì sao: không có người chịu trách nhiệm, không có thời gian hay giá trị không rõ. Tìm hiểu xem có ai ngoài nhóm đọc postmortem không. Thống nhất một buổi định kỳ để rà soát các hành động còn mở.

**Mọi người có cảm thấy an toàn khi nói mình đã sai điều gì không?**

Câu hỏi này kiểm tra việc không đổ lỗi. Mời mọi người mô tả họ sẽ cảm thấy thế nào khi viết về sai lầm của chính mình trong một postmortem. Lắng nghe nỗi sợ hậu quả và các ví dụ về lúc việc đổ lỗi đã xảy ra. Đừng đòi sự cởi mở; hãy hỏi nhóm và lãnh đạo cần làm gì để làm cho nó an toàn. Chọn một bước nhìn thấy được.

**Chúng ta luyện tập thế nào, và lần cuối là khi nào?**

Hỏi nhóm đã chạy một buổi diễn tập hay một sự cố mô phỏng chưa, và đã học được gì. Nếu chưa bao giờ, hãy bàn một khởi đầu nhỏ, như diễn lại một sự cố trong quá khứ trong một giờ. Chương SRE nhắc đến việc luyện quy trình trên các thay đổi thường lệ và các buổi diễn tập khôi phục thảm họa. Lên kế hoạch một buổi cho quý tới.

## Trong thực tế: một ví dụ agile ITIL

Cổng khách hàng của một công ty điện khu vực cho phép các hộ gia đình báo mất điện và xem hóa đơn. Một nhóm mười một người xây dựng và vận hành nó, với lịch trực gồm bốn người. Trong một cơn bão, lưu lượng báo cáo tăng vọt, cổng chậm đi rồi hỏng. Kỹ sư trực thử khởi động lại cơ sở dữ liệu, một kỹ sư thứ hai đồng thời triển khai một bản sửa cấu hình, và một kỹ sư thứ ba hoàn tác một bản phát hành trước đó. Cổng trở lại sau ba giờ, và tổng đài, nơi không bao giờ được báo, phải nhận hàng nghìn cuộc gọi giận dữ.

Tại buổi postmortem, nhóm thấy ba mối nguy từ chương SRE: mọi người đều tập trung vào bản sửa kỹ thuật, không ai giao tiếp, và các thay đổi va chạm nhau. Họ viết một quy trình sự cố một trang. Bất kỳ ai cũng có thể tuyên bố một sự cố, và việc có nhóm thứ hai tham gia, khách hàng thấy được hay một giờ không tiến triển nghĩa là họ phải tuyên bố. Kỹ sư trực trở thành trưởng vận hành, và một lịch luân phiên nêu một chỉ huy sự cố và một trưởng truyền thông từ nhóm rộng hơn. Chỉ trưởng vận hành thay đổi sản xuất. Trưởng truyền thông gửi một cập nhật mỗi 30 phút cho tổng đài và phòng điều độ. Một kênh chung giữ nhật ký trực tiếp.

Ở cơn bão tiếp theo, cổng lại chậm đi, một sự cố được tuyên bố trong vòng mười phút, và dịch vụ được khôi phục trong 70 phút với các cập nhật gửi cho tổng đài suốt thời gian đó. Vấn đề vẫn còn. Lịch luân phiên chỉ huy có khoảng trống vào các ngày lễ, và nhóm thấy một phụ thuộc, nhà cung cấp tin nhắn văn bản, không có đầu mối chuyển lên cấp trên. Postmortem tạo ra hai hành động có người chịu trách nhiệm: hoàn thiện lịch luân phiên với phương án dự phòng, và thống nhất một đường chuyển lên cấp trên với nhà cung cấp. Nhóm lên lịch diễn lại sự cố cơn bão cho các thành viên mới của lịch luân phiên.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối gây ra và sửa nhiều sự cố. Hãy tham gia lịch trực hoặc hỗ trợ trực tiếp cho nó, và coi hành động postmortem là hạng mục backlog. Xây phương tiện phát hiện và hoàn tác vấn đề vào các bản phát hành của bạn. Tham gia các buổi diễn tập để các vai trò trở nên quen thuộc.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành sở hữu quy trình. Giữ nó ngắn và được luyện tập, trao cho mọi người thẩm quyền hành động và giữ các bản ghi mà người khác dùng được. Chia sẻ điều bạn học với các nhóm phân phối, và đẩy các bài học vào quản lý vấn đề và lập kế hoạch.

### Lãnh đạo và quản trị

Lãnh đạo đặt ra văn hóa. Hãy yêu cầu postmortem và đọc chúng, khen những người báo cáo vấn đề, và từ chối đi tìm ai đó để đổ lỗi. Bảo vệ thời gian để luyện tập và hoàn thành hành động. Quyết định ai được chi tiền hoặc kích hoạt mức ứng phó cao nhất.

### Khách hàng và người dùng

Khách hàng và người dùng cần các cập nhật kịp thời, trung thực và một cách rõ ràng để báo vấn đề. Hãy hỏi nhà cung cấp bạn có thể mong đợi gì trong lúc ngừng hoạt động và bạn sẽ được báo thế nào. Khi một postmortem được chia sẻ với bạn, hãy đọc nó để xem nhà cung cấp sẽ đổi gì.

## Các kiểu thất bại thường gặp

- **Không có vai trò.** Mọi người cùng làm bản sửa kỹ thuật và không ai điều phối hay giao tiếp. Thay vào đó, mỗi lần chỉ định một chỉ huy sự cố, một trưởng vận hành và một trưởng truyền thông.
- **Tuyên bố muộn.** Mọi người chờ đến khi vấn đề tồi tệ. Thay vào đó, đặt ngưỡng thấp, rõ ràng và bình thường hóa việc tuyên bố.
- **Làm tự do.** Nhiều người thay đổi hệ thống cùng lúc. Thay vào đó, chỉ cho phép thay đổi qua trưởng vận hành.
- **Im lặng.** Người dùng và các bên liên quan không nghe gì. Thay vào đó, thống nhất một khoảng cập nhật và một mẫu.
- **Đổ lỗi.** Một postmortem đi tìm người có lỗi. Thay vào đó, hỏi điều gì trong hệ thống đã cho phép sai sót và sửa nó.
- **Postmortem đi vào hư không.** Các hành động không có người chịu trách nhiệm. Thay vào đó, đưa chúng vào backlog với ngày và rà soát đều đặn.
- **Không bao giờ luyện tập.** Lần đầu tiên quy trình được dùng là trong một sự cố lớn. Thay vào đó, diễn tập trên các sự kiện nhỏ và các buổi diễn tập.
- **Coi sửa chữa là giải quyết.** Cùng một sự cố quay lại. Thay vào đó, nối các lần lặp với quản lý vấn đề và sửa nguyên nhân.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Phát hiện và tuyên bố | Sự cố được nhận ra qua phàn nàn của người dùng | Có một số cảnh báo và một số sự cố được tuyên bố | Ngưỡng bằng văn bản và một sơ đồ nghiêm trọng đơn giản được dùng nhất quán | Thời gian phát hiện và tuyên bố được theo dõi và giảm | Phát hiện và tuyên bố được chia sẻ giữa các nhóm và nhà cung cấp |
| Ứng phó và vai trò | Người ứng phó ứng biến | Một số nhóm chỉ định người dẫn đầu | Vai trò, bàn giao và bản ghi trực tiếp là chuẩn | Thời gian ứng phó và hiệu quả vai trò được rà soát | Ứng phó được điều phối giữa các nhóm và nhà cung cấp, với diễn tập chung |
| Giao tiếp | Cập nhật tùy hứng | Một số cập nhật đến một số đối tượng | Nhịp cập nhật và mẫu tồn tại cho mỗi mức nghiêm trọng | Tính kịp thời của giao tiếp được đo và người dùng được hỏi | Giao tiếp được điều phối với khách hàng và đối tác |
| Học tập | Rà soát chỉ theo sau những sự cố tồi tệ nhất | Một số postmortem được viết | Postmortem không đổ lỗi theo sau các điều kiện kích hoạt xác định, với hành động được theo dõi | Việc hoàn thành hành động và sự tái diễn được đo | Bài học được chia sẻ giữa các nhóm và nuôi thay đổi toàn tổ chức |

## Danh mục kiểm tra

- [ ] Chúng ta có một định nghĩa ngắn về sự cố kèm ví dụ.
- [ ] Chúng ta có một sơ đồ mức nghiêm trọng nhỏ với ví dụ tác động lên người dùng và danh sách gọi.
- [ ] Mỗi sự cố bắt đầu bằng việc chỉ định một chỉ huy sự cố, một trưởng vận hành và một trưởng truyền thông.
- [ ] Một bản ghi trực tiếp được giữ cho mỗi sự cố.
- [ ] Chỉ trưởng vận hành được chỉ định thay đổi sản xuất trong một sự cố.
- [ ] Khoảng cập nhật được thống nhất cho mỗi mức nghiêm trọng.
- [ ] Các điều kiện kích hoạt postmortem được viết ra.
- [ ] Postmortem không đổ lỗi, được chia sẻ và được rà soát.
- [ ] Mọi hành động postmortem có người chịu trách nhiệm và một ngày, và các hành động còn mở được rà soát.
- [ ] Chúng ta đã luyện tập quy trình trong sáu tháng qua.

## Lời nhắc AI

**Mục đích: soạn một quy trình sự cố một trang từ thực hành hiện tại của bạn.**

```text
Help me draft a one-page incident process for a team of [number] people who run [service].

How we handle incidents today: [describe in a few sentences].
Our on-call arrangement: [describe].
Who needs to be told during an incident: [list audiences].
Rules we must follow (contracts, regulations), with source text if you have it: [paste, or write "none known"].

Produce a short process with: what counts as an incident, a simple severity scheme with user-impact examples (leave numeric thresholds as [to be agreed]), the roles and what each does, how to communicate, and when to hold a postmortem. Mark every item that is an assumption. Do not invent obligations. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: biến nhật ký sự cố thành bản nháp postmortem không đổ lỗi.**

```text
Below is the log of an incident: [paste timestamps, messages, and actions; remove personal data].
Impact as we know it: [describe users affected and for how long, using only facts].

Draft a blameless postmortem with: summary, impact, timeline, how it was detected, how it was mitigated, contributing causes (separate known from suspected), what went well, what went badly, and proposed actions with a suggested type (prevent, detect, respond) but no owners or dates. Describe actions of people neutrally, as roles. Do not invent facts or causes. Mark gaps with [UNKNOWN], and list what you are unsure of.
```

**Mục đích: viết cập nhật trạng thái sự cố cho các bên liên quan không chuyên kỹ thuật.**

```text
Write a status update for stakeholders who are not technical about this incident.

Facts: what is affected: [describe]; since when: [time]; what we know about the cause: [what is known, or "not yet known"]; what we are doing: [describe]; when the next update will come: [time].

Write under 120 words in plain language. State what we know and what we do not, without guessing at the cause or the time of recovery. Do not promise a resolution time unless I gave one. Offer two versions: one for customers and one for internal staff. List what you are unsure of.
```

**Mục đích: thiết kế một buổi diễn tập sự cố nhỏ.**

```text
Design a 60-minute incident exercise for [number] people who run [service].

Scenario basis: [describe a past incident or a plausible failure, using only facts you want to use].
Roles to practice: incident commander, operations lead, communications lead.
Constraints: [for example no use of production systems].

Give a timed plan: briefing, the scenario released in three stages, prompts for each role, and a short review with questions on roles, communication, and records. Do not use real production access. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): dùng để viết kế hoạch đặt ra vai trò, ngưỡng và giao tiếp cho nhóm của bạn.
- [postmortem](../../../../skills/postmortem/SKILL.md): dùng để chạy một buổi rà soát không đổ lỗi và ghi lại hành động sau một sự cố.
- [runbook](../../../../skills/runbook/SKILL.md): dùng để biến các bản sửa đã biết thành quy trình ngắn cho người ứng phó.
- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): dùng để thiết kế một lịch trực công bằng với dự phòng và bàn giao.
- [crisis-communication-plan](../../../../skills/crisis-communication-plan/SKILL.md): dùng để lập kế hoạch điều bạn nói với người dùng, nhân viên và công chúng trong một sự cố ngừng hoạt động lớn.

## Nguồn chính

- **Managing Incidents** (Andrew Stribblehill, trong *Site Reliability Engineering*, Google, sre.google): bản tường thuật công khai rõ ràng nhất về chỉ huy sự cố cho các nhóm dịch vụ.
- **Postmortem Culture: Learning from Failure** (*Site Reliability Engineering*, Google, sre.google): lập luận cho postmortem không đổ lỗi, với các điều kiện kích hoạt và ý tưởng xây dựng văn hóa.
- **Incident management** (Wikipedia): một tổng quan nhiều lĩnh vực với một phần về quản lý dịch vụ CNTT.
- **IT service management** (Wikipedia): định nghĩa sự cố và vị trí của việc xử lý sự cố trong bàn dịch vụ.

## Tài liệu tham khảo

1. Managing Incidents — Andrew Stribblehill, Google SRE book, sre.google — https://sre.google/sre-book/managing-incidents/
2. Postmortem Culture: Learning from Failure — Google SRE book, sre.google — https://sre.google/sre-book/postmortem-culture/
3. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Incident Command System — Wikipedia — https://en.wikipedia.org/wiki/Incident_Command_System
6. Root cause analysis — Wikipedia — https://en.wikipedia.org/wiki/Root_cause_analysis
7. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
8. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
9. Computer security incident management — Wikipedia — https://en.wikipedia.org/wiki/Computer_security_incident_management
