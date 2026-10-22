# Quản lý danh mục dịch vụ

**Một danh mục dịch vụ (ITIL viết là "service catalogue") là một danh sách được tuyển chọn về những gì một tổ chức cung cấp, với chủ sở hữu và mô tả đơn giản cho từng dịch vụ, và giá trị của nó phụ thuộc vào việc người dùng thấy nó hữu ích và các chủ sở hữu giữ nó đúng sự thật.**

## Vì sao điều này quan trọng

Hỏi một người dùng CNTT cung cấp gì và bạn thường nhận một câu trả lời mơ hồ. Hỏi nhóm CNTT và bạn sẽ nhận một danh sách các hệ thống. Hai danh sách hiếm khi khớp nhau, và khoảng cách gây ra hiểu lầm: người dùng xin những thứ không tồn tại, các nhóm hỗ trợ những dịch vụ không ai dùng, và không ai nói được ai chịu trách nhiệm về cái gì. Một danh mục dịch vụ khép khoảng cách đó bằng cách nêu, ở một nơi và bằng lời đơn giản, cái gì được cung cấp và ai đứng sau nó.

Với các nhóm agile, danh mục cũng là một cách làm cho quyền sở hữu nhìn thấy được. Một nhóm xây dựng và vận hành một dịch vụ nên nói được, "đây là điều chúng tôi cung cấp, đây là người để hỏi, đây là điều bạn có thể chờ đợi." Không có điều đó, yêu cầu đến sai nơi, sự cố bị chuyền qua lại giữa các nhóm, và nhân viên mới không tìm được sự giúp đỡ.

[Bài viết Wikipedia về danh mục dịch vụ](https://en.wikipedia.org/wiki/Service_catalog) mô tả một danh mục dịch vụ là một tập hợp có tổ chức và được tuyển chọn các dịch vụ kinh doanh và công nghệ thông tin trong một doanh nghiệp, đóng vai trò là một công cụ quản lý tri thức chỉ định chuyên gia về chủ đề cho từng dịch vụ được liệt kê. Nó lưu ý rằng tập Thiết kế Dịch vụ của ITIL định nghĩa một danh mục dịch vụ CNTT là danh sách đầy đủ các dịch vụ chỉ thuộc CNTT và là phần duy nhất của danh mục đầu tư dịch vụ được công bố cho khách hàng, mà không nêu ấn bản ITIL nào. Chủ đề này xây trên mô tả đó, và trên các chủ đề khác của cuốn sách, và giữ danh mục thực tế và nhẹ.

## Các khái niệm cốt lõi

### Trong một danh mục có gì

Theo Wikipedia, mỗi mục trong một danh mục dịch vụ thường gồm một chủ sở hữu có tên, một mô tả, một danh mục phân loại, các loại yêu cầu liên quan, các dịch vụ nền tảng, quyền sử dụng, chi phí, cách dịch vụ được yêu cầu và đáp ứng, và các đầu mối chuyển lên cấp trên. Các phân loại phổ biến gồm CNTT, vận hành và đáp ứng. Bạn không cần tất cả những thứ này cho mọi dịch vụ. Một danh mục tốt bắt đầu với vài thứ mà người dùng và nhân viên hỗ trợ thực sự cần.

| Trường | Vì sao nó giúp | Ai dùng nó |
|---|---|---|
| **Tên và mô tả bằng lời đơn giản** | Người dùng nhận ra điều được cung cấp | Người dùng, bàn dịch vụ |
| **Chủ sở hữu** | Có người chịu trách nhiệm về dịch vụ | Mọi người |
| **Ai được dùng nó (quyền sử dụng)** | Tránh các yêu cầu lãng phí | Người dùng, bàn dịch vụ |
| **Cách yêu cầu hoặc nhận giúp đỡ** | Đưa người dùng đến đúng nơi | Người dùng, bàn dịch vụ |
| **Nó phụ thuộc vào gì (dịch vụ nền tảng)** | Cho thấy còn thứ gì khác phải hoạt động | Vận hành, các nhóm phân phối |
| **Chi phí, nếu tính phí** | Hỗ trợ quyết định và ngân sách | Khách hàng, tài chính |
| **Mức dịch vụ hoặc kỳ vọng** | Đặt kỳ vọng | Người dùng, khách hàng (xem Chủ đề 3.7 — Quản lý mức dịch vụ) |
| **Đầu mối chuyển lên cấp trên** | Tăng tốc giúp đỡ khi có vấn đề | Bàn dịch vụ, vận hành |

### Danh mục và danh mục đầu tư

Bài viết Wikipedia đặt danh mục dịch vụ CNTT là một tập con của danh mục doanh nghiệp rộng hơn. Trong từ vựng ITIL, danh mục đầu tư dịch vụ (service portfolio) là tập đầy đủ các dịch vụ, gồm cả những dịch vụ đang phát triển và đang bị cho ngừng, còn danh mục là phần được công bố cho khách hàng. Các nguồn đã đọc ở đây không định nghĩa danh mục đầu tư chi tiết: bài viết về quản lý danh mục đầu tư dịch vụ chuyển hướng sang quản lý danh mục đầu tư CNTT, vốn chỉ nói ITIL v3 kêu gọi một thực hành quản lý danh mục đầu tư dịch vụ có vẻ tương đương về chức năng với quản lý danh mục đầu tư CNTT. Hãy coi ý tưởng danh mục đầu tư như sau: danh mục là những gì bạn cung cấp bây giờ, và danh mục đầu tư còn gồm những gì bạn đang xây và đang cho ngừng (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ về các lựa chọn danh mục đầu tư).

### Danh mục doanh nghiệp và CNTT

Một danh mục dịch vụ doanh nghiệp bao gồm các dịch vụ từ nhiều chức năng, như nhân sự, cơ sở vật chất và CNTT. Một danh mục dịch vụ CNTT là một tập con. Bài viết trích dẫn các lợi ích của một danh mục: tập trung hóa dịch vụ trên các doanh nghiệp phân tán, xác định khoảng trống và trùng lặp dịch vụ, theo dõi phân bổ nguồn lực, và đo nhu cầu, cung ứng, thời gian phê duyệt, thời gian giao và tài chính của dịch vụ. Với dịch vụ đám mây, nó trích dẫn việc tự cấp phát và các định nghĩa chuẩn hóa hỗ trợ lập kế hoạch năng lực và dự báo mua sắm. Đây là các nhận định từ bài viết, dựa trên các nguồn nó trích dẫn.

### Góc nhìn kinh doanh và góc nhìn kỹ thuật

Nhiều tổ chức phân biệt điều khách hàng thấy với điều nhà cung cấp cần nội bộ. Các nguồn đã đọc ở đây không đưa ra sự phân biệt này, nên hãy coi đây là thực hành phổ biến. **Góc nhìn hướng khách hàng** liệt kê dịch vụ theo thuật ngữ của người dùng ("Email và lịch"). **Góc nhìn kỹ thuật** liệt kê các thành phần và nhóm đứng sau ("Máy chủ thư, bộ lọc thư rác, dịch vụ thư mục"). Góc nhìn khách hàng giúp người dùng chọn. Góc nhìn kỹ thuật giúp vận hành hiểu các phụ thuộc (xem Chủ đề 4.4 — Quản lý cấu hình). Giữ hai góc nhìn liên kết nhưng tách biệt, để người dùng không phải đối mặt với tên thành phần.

### Danh mục như một công cụ tri thức

Bài viết Wikipedia nhấn mạnh rằng danh mục chỉ định chuyên gia về chủ đề cho từng dịch vụ. Điều này biến nó thành một bản đồ ai biết gì. Một danh mục được giữ cập nhật giúp bàn dịch vụ định tuyến các liên hệ, giúp nhân viên mới tìm sự giúp đỡ và giúp người ứng phó sự cố tìm đúng người (xem Chủ đề 3.9 — Quản lý tri thức).

### Danh mục và yêu cầu

Danh mục thường gồm các yêu cầu người dùng có thể đưa ra cho mỗi dịch vụ, như "xin quyền truy cập" hay "báo lỗi". Một mô hình yêu cầu mô tả cách mỗi yêu cầu được đáp ứng (xem Chủ đề 3.6 — Quản lý yêu cầu dịch vụ). Không phải dịch vụ nào cũng cần yêu cầu, và không phải yêu cầu nào cũng cần một mục trong danh mục, nhưng các yêu cầu thường xuyên nên dễ tìm.

### Giữ cho đúng sự thật

Một danh mục lỗi thời nhanh nếu không ai sở hữu nó. Dịch vụ thay đổi, các nhóm tái cơ cấu và mô tả trôi xa khỏi thực tế. Kỷ luật hữu ích nhất là một chu kỳ rà soát: mỗi chủ sở hữu xác nhận các mục của mình theo lịch, và các dịch vụ không dùng bị cho ngừng. Bài viết Wikipedia không bàn về lời chỉ trích hay giới hạn, nhưng kinh nghiệm thực tế nhất quán: một danh mục sai còn tệ hơn không có danh mục, vì nó đưa mọi người đến sai nơi một cách tự tin.

### Danh mục và các nhóm agile

Các nhóm agile thường chống lại những danh mục nặng nề vì họ chờ đợi quan liêu. Một danh mục nhẹ tương thích với cách làm việc agile. Nó có thể là một tài liệu hay một trang chung, do chính các chủ sở hữu duy trì, với vài trường cho mỗi dịch vụ. Phép thử là sự sử dụng: người dùng và bàn dịch vụ có thực sự tra cứu nó không?

## Thực hành tốt

1. **Liệt kê dịch vụ bằng lời của người dùng.** Bắt đầu bằng việc hỏi người dùng và bàn dịch vụ họ sẽ gọi mỗi thứ là gì. Đặt tên dịch vụ theo điều người dùng làm ("Tham gia một cuộc họp video"), không theo công nghệ ("Nền tảng hội nghị").
2. **Cho mỗi dịch vụ một chủ sở hữu có tên.** Một người nên chịu trách nhiệm về mỗi dịch vụ. Khi một dịch vụ có nhiều phần, hãy chỉ định một chủ sở hữu cho toàn bộ và liệt kê những người đóng góp.
3. **Bắt đầu nhỏ.** Bắt đầu với 10 đến 20 dịch vụ mà người dùng hỏi nhiều nhất. Thêm khi bạn học được điều gì hữu ích. Một danh sách ngắn, chính xác tốt hơn một danh sách dài, cũ.
4. **Chỉ gồm những gì mọi người dùng.** Với mỗi trường, hỏi ai dùng nó và để làm gì. Bỏ các trường không ai dùng. Chỉ thêm một trường khi có người cần.
5. **Nối với yêu cầu và giúp đỡ.** Với mỗi dịch vụ, cho thấy cách xin một thứ, báo lỗi và tìm giúp đỡ. Liên kết đến cơ sở tri thức (xem Chủ đề 3.9 — Quản lý tri thức).
6. **Cho thấy kỳ vọng về dịch vụ.** Nêu điều người dùng có thể chờ đợi, như giờ hỗ trợ và phản hồi điển hình, bằng lời đơn giản. Liên kết đến thỏa thuận chính thức nếu có.
7. **Ghi lại phụ thuộc.** Với mỗi dịch vụ, ghi các dịch vụ và nhà cung cấp chính nó dựa vào. Điều này giúp ứng phó sự cố và lập kế hoạch thay đổi.
8. **Tách góc nhìn khách hàng khỏi góc nhìn kỹ thuật.** Giữ mô tả hướng người dùng không có biệt ngữ. Liên kết chúng với các bản ghi kỹ thuật nơi chúng tồn tại.
9. **Rà soát theo lịch.** Nhờ mỗi chủ sở hữu xác nhận các mục của họ ít nhất hai lần mỗi năm, và cho ngừng các dịch vụ không ai dùng. Hiển thị ngày rà soát gần nhất trên mỗi mục.
10. **Làm cho nó dễ tìm và dễ dùng.** Đặt danh mục nơi người dùng vốn đã nhìn, như mạng nội bộ hay cổng thông tin. Thử tìm kiếm với các truy vấn thật.
11. **Dùng danh mục để tìm khoảng trống và chồng lấn.** Tìm các dịch vụ không ai sở hữu, các dịch vụ trùng nhau và các yêu cầu không có dịch vụ khớp. Mang các phát hiện đến lập kế hoạch (xem Chủ đề 5.5 — Quyền sở hữu sản phẩm và dịch vụ).
12. **Coi thay đổi danh mục là thay đổi dịch vụ.** Khi bạn thêm, đổi hoặc cho ngừng một dịch vụ, hãy thông báo cho bàn dịch vụ và người dùng bị ảnh hưởng, như bạn làm với một bản phát hành.

## Câu hỏi để thảo luận với nhóm của bạn

**Nếu một đồng nghiệp mới hỏi chúng ta cung cấp gì, chúng ta sẽ trả lời gì, và tất cả có nói giống nhau không?**

Mời mỗi người liệt kê các dịch vụ trong hai phút, rồi so sánh. Sự khác biệt cho thấy ranh giới mờ đến đâu. Người điều phối có thể hỏi mục nào người dùng sẽ không nhận ra. Dùng danh sách gộp làm bản nháp danh mục, và đánh dấu các mục có bất đồng.

**Dịch vụ nào không có chủ sở hữu rõ ràng?**

Đi qua danh sách và đánh dấu những dịch vụ mà không ai nói được ai chịu trách nhiệm. Các dịch vụ không chủ thường gây ra những chậm trễ dài nhất trong sự cố và yêu cầu. Hỏi điều gì ngăn một người nhận quyền sở hữu: thời gian, thẩm quyền hay ranh giới không rõ. Thống nhất một chủ sở hữu hoặc một quyết định cho ngừng với từng cái.

**Người dùng xin gì mà chúng ta không liệt kê, và chúng ta liệt kê gì mà không ai xin?**

So sánh dữ liệu yêu cầu với danh sách. Các yêu cầu không có dịch vụ khớp cho thấy khoảng trống; các dịch vụ được liệt kê mà không có yêu cầu cho thấy ứng viên để cho ngừng. Hãy thận trọng: một số dịch vụ được dùng một cách âm thầm. Hỏi người dùng trước khi bỏ. Chọn một khoảng trống và một ứng viên để xem xét.

**Người dùng cần thấy gì để chọn đúng dịch vụ mà không cần gọi cho chúng ta?**

Lấy một lựa chọn phổ biến, như dùng công cụ nào để chia sẻ tệp. Hỏi thông tin nào sẽ giúp: một mô tả ngắn, dành cho ai, một bảng so sánh. Soạn một mục một đoạn và thử nó với hai người dùng. Mục đích là một danh mục làm giảm cuộc gọi bằng cách rõ ràng.

**Làm sao chúng ta biết khi một dịch vụ đã đổi và danh mục đã lỗi thời?**

Hỏi lần rà soát gần nhất diễn ra khi nào và ai làm. Bàn các yếu tố kích hoạt, như một lần tái cơ cấu hay một bản phát hành lớn, và một chu kỳ định kỳ. Một ngày "rà soát lần cuối" nhìn thấy được trên mỗi mục sẽ giúp. Thống nhất ngày rà soát đầu tiên và ai chịu trách nhiệm.

**Chúng ta phụ thuộc vào những gì mà không có trong danh mục?**

Liệt kê các nền tảng và nhà cung cấp đứng sau dịch vụ của bạn. Hỏi cái nào được liệt kê và ai sở hữu chúng. Các phụ thuộc không có chủ sở hữu là rủi ro. Chọn một cái để thêm vào góc nhìn kỹ thuật.

## Trong thực tế: một ví dụ agile ITIL

Một hội đồng khu vực có 120 nhân viên trong phòng CNTT phục vụ 2.500 nhân viên hội đồng và một số dịch vụ hướng ra công chúng. Nhân viên phàn nàn rằng họ không biết hỏi ai để được giúp, và bàn dịch vụ dành nhiều thời gian chuyển hướng cuộc gọi. Hội đồng từng xây một danh mục dịch vụ với 300 mục, nhưng hiếm khi được dùng và phần lớn đã lỗi thời.

Trưởng bộ phận cung cấp dịch vụ quyết định làm lại, nhỏ. Cô hỏi bàn dịch vụ 30 lý do phổ biến nhất khiến mọi người liên hệ, và nhóm chúng thành 15 dịch vụ bằng lời của người dùng: "Email và lịch", "Tệp và chia sẻ", "Laptop và thiết bị", "Website hội đồng", "Hệ thống tài chính", và tiếp tục như vậy. Với mỗi dịch vụ, một chủ sở hữu có tên viết bốn thứ: một mô tả hai câu, dành cho ai, cách nhận giúp đỡ và điều nên chờ đợi. Các phụ thuộc được ghi trong một danh sách kỹ thuật riêng cho vận hành. Danh mục là một trang web duy nhất trên mạng nội bộ của hội đồng, và mỗi mục hiển thị ngày được chủ sở hữu xác nhận lần cuối.

Sau ba tháng, các cuộc gọi đến bàn về việc hỏi ai giảm, và các chủ sở hữu nhận ra khoảng trống: không ai sở hữu hệ thống đặt phòng họp, và hai dịch vụ chồng lấn. Chúng được giao chủ sở hữu và gộp lại. Vấn đề vẫn còn. Ba chủ sở hữu chưa xác nhận các mục của họ, và một số nhân viên vẫn gọi bàn theo thói quen. Trưởng bộ phận đặt một chu kỳ nhắc nhở và sắp xếp để bàn chỉ người gọi đến danh mục trong khi xử lý yêu cầu của họ. Cô cũng thấy một số mục được viết bằng ngôn ngữ kỹ thuật và nhờ một cán bộ truyền thông rà soát chúng.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối nên được nêu tên là chủ sở hữu của các dịch vụ họ xây và vận hành, và nên giữ các mục của mình cập nhật. Khi bạn ra mắt hoặc cho ngừng một dịch vụ, hãy cập nhật danh mục và báo cho bàn dịch vụ. Dùng danh mục để tìm ai cần nói chuyện về một phụ thuộc.

### Nhóm dịch vụ và vận hành

Vận hành và bàn dịch vụ là người dùng nhiều nhất. Hãy nói với chủ sở hữu điều gì sai hoặc thiếu trong các mục, và dùng danh mục để định tuyến và chuyển lên cấp trên. Giữ góc nhìn kỹ thuật liên kết với góc nhìn khách hàng, để người ứng phó sự cố thấy được cái gì phụ thuộc vào cái gì.

### Lãnh đạo và quản trị

Lãnh đạo có thể dùng danh mục để thấy tổ chức cung cấp gì, cái gì chồng lấn và cái gì mồ côi. Hãy yêu cầu xử lý các khoảng trống và trùng lặp, và yêu cầu nêu tên chủ sở hữu. Đừng đòi mọi trường cho mọi dịch vụ; hãy đòi những gì hỗ trợ quyết định.

### Khách hàng và người dùng

Khách hàng và người dùng có một cái nhìn rõ ràng về điều họ có thể xin và điều nên chờ đợi. Hãy dùng danh mục để tìm đúng dịch vụ, và nói với chủ sở hữu khi một mục sai hoặc không rõ. Nếu bạn không tìm được điều bạn cần, hãy nói, vì đó là bằng chứng của một khoảng trống.

## Các kiểu thất bại thường gặp

- **Quá lớn, quá sớm.** Hàng trăm mục được tạo ra và không được duy trì. Thay vào đó, bắt đầu với các dịch vụ được dùng nhiều nhất và lớn dần.
- **Viết bằng ngôn ngữ của nhà cung cấp.** Người dùng không tìm được điều họ cần. Thay vào đó, đặt tên dịch vụ theo điều người dùng làm và thử với người dùng.
- **Không có chủ sở hữu.** Không ai giữ các mục đúng sự thật. Thay vào đó, chỉ định chủ sở hữu cho mọi mục và hiển thị ngày rà soát.
- **Một danh mục không ai dùng.** Nó nằm trên một trang mà người dùng không ghé. Thay vào đó, đặt nó nơi mọi người vốn đã nhìn và nhờ bàn dịch vụ chỉ đến nó.
- **Trộn góc nhìn khách hàng và góc nhìn kỹ thuật.** Người dùng đối mặt với tên thành phần. Thay vào đó, giữ một góc nhìn khách hàng rõ ràng và liên kết một góc nhìn kỹ thuật cho vận hành.
- **Không cho ngừng.** Dịch vụ đã chết vẫn nằm trong danh sách. Thay vào đó, rà soát mức sử dụng và cho ngừng những gì không ai cần.
- **Coi nó là dự án một lần.** Danh mục cũ đi sau khi ra mắt. Thay vào đó, đặt một chu kỳ rà soát và biến nó thành một phần của thay đổi.
- **Quá nhiều trường bắt buộc.** Chủ sở hữu điền các trường để thỏa mãn mẫu. Thay vào đó, chỉ yêu cầu những gì có người dùng.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Phạm vi và độ rõ ràng | Dịch vụ được biết không chính thức | Có một danh sách một số dịch vụ | Một danh mục các dịch vụ chính bằng lời của người dùng với chủ sở hữu | Mức sử dụng và khoảng trống được đo và danh mục được điều chỉnh | Danh mục trải rộng các chức năng và đối tác và được định hình cùng người dùng |
| Quyền sở hữu và tính cập nhật | Không ai sở hữu danh sách | Một số chủ sở hữu thỉnh thoảng xác nhận các mục | Mỗi mục có chủ sở hữu và ngày rà soát | Các lần rà soát quá hạn được theo dõi và giải quyết | Quyền sở hữu và rà soát là thường lệ trong toàn tổ chức |
| Liên kết với yêu cầu và giúp đỡ | Yêu cầu đi qua email hoặc điện thoại | Một số mục liên kết đến biểu mẫu hoặc trợ giúp | Các mục liên kết đến yêu cầu, tri thức và đường hỗ trợ | Lượt nhấp và mức giảm cuộc gọi được đo | Yêu cầu, tri thức và hỗ trợ được tích hợp giữa các chức năng |
| Phụ thuộc và quyết định | Phụ thuộc là tri thức truyền miệng | Một số phụ thuộc được liệt kê | Phụ thuộc được ghi và dùng trong công việc sự cố và thay đổi | Dữ liệu phụ thuộc hỗ trợ lập kế hoạch và rà soát rủi ro | Phụ thuộc được chia sẻ với nhà cung cấp và dùng để cùng lập kế hoạch |

## Danh mục kiểm tra

- [ ] Chúng ta có một danh sách dịch vụ bằng lời của người dùng, bắt đầu với những dịch vụ dùng nhiều nhất.
- [ ] Mỗi dịch vụ có một chủ sở hữu có tên.
- [ ] Mỗi mục nói dành cho ai, cách nhận giúp đỡ và điều nên chờ đợi.
- [ ] Danh mục nằm nơi người dùng và bàn dịch vụ vốn đã nhìn.
- [ ] Các mục hiển thị ngày được xác nhận lần cuối.
- [ ] Chủ sở hữu rà soát các mục của họ ít nhất hai lần mỗi năm.
- [ ] Các phụ thuộc chính được ghi trong một góc nhìn kỹ thuật.
- [ ] Các dịch vụ không dùng được xem xét để cho ngừng.
- [ ] Việc thêm, đổi hoặc cho ngừng một dịch vụ được thông báo cho bàn dịch vụ và người dùng.
- [ ] Chúng ta đã thử danh mục với các truy vấn thật của người dùng.

## Lời nhắc AI

**Mục đích: biến dữ liệu liên hệ thành một danh sách dịch vụ nháp bằng lời của người dùng.**

```text
Below are the reasons people contacted our service desk in the last [period]: [paste short, anonymized descriptions or category counts].

Group them into 10 to 20 candidate services, each named in plain words that a non-technical user would recognize, such as "Email and calendar." For each, give a two-sentence description based only on the contacts, the contacts that fit under it, and a question to ask its owner. List contacts that do not fit. Do not invent services or systems that do not appear in the data. Ask clarifying questions first if the data is thin, and list what you are unsure of.
```

**Mục đích: viết một mục danh mục rõ ràng.**

```text
Help me write a service catalog entry for [service].

What it does, in my own words: [describe].
Who may use it: [describe].
How users get help or make requests: [describe].
Support hours and what users can expect: [describe, or write "unknown"].
Main things it depends on: [list].
Owner: [role].

Write a short entry for users (no jargon, under 80 words) and a separate technical note for operations. Mark anything you added as an assumption. Do not invent service levels or contacts. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: rà soát một danh mục để tìm khoảng trống, chồng lấn và mục mồ côi.**

```text
Here is our service catalog (names, owners, descriptions, and last review dates): [paste].
Here is data on what users request or report: [paste counts by topic, or write "none"].

Using only this text, list: services with no owner or an overdue review; pairs of services that seem to overlap; request topics with no matching service; and services with no requests in the data. For each, suggest a question for the owner or the desk rather than a conclusion. Do not guess about services not listed. List what you are unsure of.
```

**Mục đích: lên kế hoạch một buổi rà soát danh mục với các chủ sở hữu.**

```text
Plan a 60-minute review of our service catalog with [number] service owners.

State of the catalog: [describe, such as number of entries and how old they are].
Problems we know of: [list].

Give a timed agenda that has each owner confirm or correct their entries, look at overlaps and gaps, decide what to retire, and agree a review date. Include a one-page template for owners to prepare. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): dùng để soạn các mục và cấu trúc một danh mục dịch vụ.
- [stakeholder-analysis](../../../../skills/stakeholder-analysis/SKILL.md): dùng để hiểu ai dùng từng dịch vụ và họ cần gì.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): dùng để tìm yêu cầu và dịch vụ nào được dùng nhiều nhất.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để ghi ai sở hữu, hỗ trợ và được tham vấn về từng dịch vụ.
- [product-roadmap](../../../../skills/product-roadmap/SKILL.md): dùng để lập kế hoạch cách dịch vụ sẽ được thêm, đổi hoặc cho ngừng theo thời gian.

## Nguồn chính

- **Service catalog** (Wikipedia): một mô tả ngắn về nội dung, lợi ích và định nghĩa ITIL của một danh mục dịch vụ CNTT.
- **IT portfolio management** (Wikipedia): bối cảnh về các khái niệm danh mục đầu tư, gồm ghi chú rằng quản lý danh mục đầu tư dịch vụ của ITIL v3 có vẻ tương đương về chức năng.
- **ITIL** (Wikipedia): bối cảnh về các phiên bản ITIL và nơi các ý tưởng danh mục và danh mục đầu tư đến từ đâu.
- **Knowledge management** (Wikipedia): bối cảnh về cách các danh mục đóng vai trò công cụ tri thức.

## Tài liệu tham khảo

1. Service catalog — Wikipedia — https://en.wikipedia.org/wiki/Service_catalog
2. IT portfolio management — Wikipedia — https://en.wikipedia.org/wiki/IT_portfolio_management
3. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
4. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
5. Knowledge management — Wikipedia — https://en.wikipedia.org/wiki/Knowledge_management
6. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
7. Help desk — Wikipedia — https://en.wikipedia.org/wiki/Help_desk
8. Service-level agreement — Wikipedia — https://en.wikipedia.org/wiki/Service-level_agreement
