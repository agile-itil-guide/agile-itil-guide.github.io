# Kỹ thuật độ tin cậy hệ thống

**Kỹ thuật độ tin cậy hệ thống coi vận hành là một bài toán kỹ thuật, dùng các mục tiêu mức dịch vụ, ngân sách lỗi và một trần cho công việc thủ công lặp lại để giữ dịch vụ đáng tin cậy mà vẫn thay đổi nhanh.**

## Vì sao điều này quan trọng

Nhiều thực hành quản lý dịch vụ được thiết kế cho một thế giới nơi nhân viên vận hành chạy phần mềm do người khác viết, và chi phí vận hành lớn lên cùng quy mô dịch vụ. Kỹ thuật độ tin cậy hệ thống (SRE) là câu trả lời của một tổ chức cho điều xảy ra khi mô hình đó chạm quy mô rất lớn: nhờ các kỹ sư phần mềm thiết kế và chạy chức năng vận hành, và làm cho hệ thống làm công việc mà con người lẽ ra phải làm bằng tay.

Với độc giả của cuốn sách này, SRE hữu ích vì ba lý do. Nó làm cho sự đánh đổi giữa tốc độ và độ tin cậy tường minh, với những con số mà cả các nhóm sản phẩm và vận hành đều đọc được. Nó cho một ý tưởng vững chắc về bao nhiêu công việc thủ công là quá nhiều. Và nó cho thấy nhiều thực hành ITIL, như quản lý sự cố, vấn đề, thay đổi và năng lực, có thể được làm theo thuật ngữ kỹ thuật. SRE không phải cách duy nhất để làm những việc này, và nó đến từ hoàn cảnh của một công ty internet rất lớn, nên điều gì chuyển được phụ thuộc vào tình huống của bạn.

Chủ đề này chủ yếu dựa vào ba chương của cuốn *Site Reliability Engineering* của Google, bổ sung bằng bài viết Wikipedia về SRE. Cuốn sách mô tả thực hành ở một tổ chức và lập luận cho cách tiếp cận của mình; bài viết Wikipedia cho một bức tranh rộng hơn nhưng mỏng hơn và không nêu lời chỉ trích nào. Hãy đọc cả hai như nguồn ý tưởng để thử, không phải một tiêu chuẩn.

## Các khái niệm cốt lõi

### SRE là gì

Phần giới thiệu của cuốn sách định nghĩa SRE là "điều xảy ra khi bạn nhờ một kỹ sư phần mềm thiết kế một nhóm vận hành." [Bài viết Wikipedia về kỹ thuật độ tin cậy hệ thống](https://en.wikipedia.org/wiki/Site_reliability_engineering) mô tả nó là một ngành trong kỹ thuật phần mềm và hỗ trợ hạ tầng CNTT, giám sát và cải thiện tính sẵn sàng và hiệu năng của phần mềm đã triển khai và các dịch vụ lớn, với trọng tâm là tự động hóa và hạ tầng dưới dạng mã. Bài viết gọi SRE là một triển khai cụ thể của DevOps, hẹp hơn về phạm vi vì nó tập trung vào việc xây các hệ thống đáng tin (xem Chủ đề 5.2 — DevOps). Cuốn sách mô tả DevOps là một tập nguyên tắc rộng hơn mà SRE triển khai theo một cách cụ thể.

Theo bài viết, thực hành SRE của Google bắt đầu năm 2003 khi Benjamin Treynor Sloss gia nhập và lập một nhóm từ bảy kỹ sư sản xuất; đến 2016 nhóm có hơn 1.000 SRE, và các công ty internet lớn khác đã áp dụng thực hành. Một khảo sát năm 2020 với 572 chuyên gia thấy các nhóm SRE ở 64 phần trăm các tổ chức có 10.000 nhân viên trở lên, 44 phần trăm những tổ chức có 101 đến 1.000 và 32 phần trăm những tổ chức có 100 trở xuống. Chuỗi hội nghị SREcon đã chạy hằng năm từ 2014.

### Vấn đề SRE giải quyết

Phần giới thiệu mô tả mô hình truyền thống: lập trình viên và quản trị viên hệ thống bị chia thành các nhóm riêng. Nó nêu hai loại chi phí:

- **Chi phí trực tiếp.** Quản lý thay đổi thủ công và xử lý sự kiện trở nên đắt, vì nhóm vận hành lớn lên theo tải.
- **Chi phí gián tiếp.** Các nhóm có từ vựng, động lực và giả định về rủi ro khác nhau, dẫn đến xung đột về bản phát hành. Vận hành thêm các cổng ra mắt, và lập trình viên đáp lại bằng các cách đi vòng.

SRE nhằm tránh sự chia tách này bằng cách coi vận hành là một bài toán kỹ thuật. Chương nói quy mô nhóm lớn lên chậm hơn hệ thống, vì kỹ thuật giữ tải vận hành không lớn theo nhịp lưu lượng.

### Các nguyên lý

Phần giới thiệu liệt kê các lĩnh vực các nhóm SRE chịu trách nhiệm: tính sẵn sàng, độ trễ, hiệu năng, hiệu suất, quản lý thay đổi, giám sát, ứng phó khẩn cấp và lập kế hoạch năng lực. Bài viết Wikipedia liệt kê các thực hành cốt lõi gồm tự động hóa công việc lặp lại, xác định mục tiêu độ tin cậy qua các chỉ báo mức dịch vụ (SLI), mục tiêu (SLO) và ngân sách lỗi, thiết kế hệ thống để giảm rủi ro, khả năng quan sát và giám sát, quản lý toil, một quy trình quản lý sự cố đã được kiểm thử, và lập kế hoạch năng lực, quản lý phát hành và kỹ thuật hỗn loạn.

### Mục tiêu mức dịch vụ và ngân sách lỗi

SRE gắn độ tin cậy với các mục tiêu tường minh (xem Chủ đề 3.7 — Quản lý mức dịch vụ để có phần bàn đầy đủ). Tóm lại:

- Chọn vài chỉ báo phản ánh điều người dùng quan tâm.
- Đặt một mục tiêu không đòi hỏi sự hoàn hảo.
- Cho phép một **ngân sách lỗi**: khoảng giữa hoàn hảo và mục tiêu.
- Dùng ngân sách để quyết định nhịp phát hành: khi còn ngân sách, phát hành tiếp tục; khi nó hết, phát hành chậm lại và công sức chuyển sang độ tin cậy.

Chương "Embracing Risk" giải thích vì sao: các nhóm sản phẩm được đo theo tốc độ và các nhóm độ tin cậy theo độ tin cậy, điều này tạo căng thẳng, và ngân sách cho cả hai một thước đo chung, khách quan. Cũng chương đó nói chi phí độ tin cậy tăng dốc và mục tiêu là khớp rủi ro của một dịch vụ với điều doanh nghiệp chấp nhận (xem Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng).

### Toil

Chương "Eliminating Toil" định nghĩa **toil** là công việc vận hành gắn với việc chạy một dịch vụ sản xuất, và nói nó không đơn thuần là công việc ai đó không thích và khác với chi phí quản lý như các cuộc họp. Toil có xu hướng:

| Đặc điểm | Ý nghĩa |
|---|---|
| **Thủ công** | Cần công sức trực tiếp của con người, dù một script chạy các bước |
| **Lặp lại** | Làm đi làm lại, không phải một vấn đề mới |
| **Có thể tự động hóa** | Một cỗ máy có thể làm, hoặc nhu cầu có thể được thiết kế loại bỏ |
| **Chiến thuật** | Bị ngắt quãng dẫn dắt và phản ứng, như đáp lại các page |
| **Không có giá trị bền vững** | Dịch vụ ở cùng trạng thái sau đó |
| **Tuyến tính với tăng trưởng** | Công sức tăng theo quy mô dịch vụ, lưu lượng hay người dùng |

Cuốn sách nói các SRE nhằm giữ toil dưới 50 phần trăm thời gian của họ, với ít nhất một nửa dành cho công việc dự án kỹ thuật, và phần giới thiệu đặt một trần 50 phần trăm cho công việc "ops" tổng hợp, gửi phần vượt về các nhóm phát triển. Nó nói quá nhiều toil gây trì trệ nghề nghiệp, tinh thần thấp và kiệt sức, làm chậm công việc tính năng và gây ra nghỉ việc; "toil trở nên độc hại khi trải qua với số lượng lớn", dù lượng nhỏ có thể làm dịu và một số là không tránh khỏi. Chương đưa một cách tính ngưỡng sàn mà việc trực áp đặt (chẳng hạn cận dưới 33 phần trăm cho một lịch trực sáu người theo các giả định ví dụ của nó) và báo cáo rằng ngắt quãng là nguồn toil lớn nhất, tiếp theo là ứng phó khi trực và rồi phát hành. Nó định nghĩa công việc kỹ thuật là mới, đòi hỏi phán đoán, tạo ra cải tiến vĩnh viễn và theo một chiến lược.

### Ứng phó khẩn cấp và giám sát

Phần giới thiệu nói giám sát không nên đòi con người diễn giải cảnh báo: phần mềm diễn giải dữ liệu và con người chỉ được thông báo khi cần hành động (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện). Nó nói SRE trực nên nhận tối đa khoảng hai sự kiện mỗi ca. Nó tuyên bố rằng playbook tạo ra cải thiện khoảng gấp ba về thời gian sửa trung bình so với ứng biến. Xử lý sự cố theo cách tiếp cận chỉ huy sự cố, và postmortem không đổ lỗi và được viết cho mọi sự cố đáng kể (xem Chủ đề 3.2 — Quản lý sự cố).

### Quản lý thay đổi

Phần giới thiệu nêu khoảng 70 phần trăm các lần ngừng hoạt động đến từ các thay đổi lên một hệ thống đang chạy, và khuyến nghị triển khai dần, phát hiện vấn đề nhanh và hoàn tác an toàn. Đây là nhận định của chính cuốn sách, từ kinh nghiệm của Google, và có thể không đúng với mọi tổ chức. Thông điệp của nó nhất quán với hướng dẫn của DORA về thay đổi (xem Chủ đề 3.4 — Kích hoạt thay đổi và Chủ đề 3.5 — Quản lý phát hành và triển khai).

### SRE và ITIL

SRE có thể được đọc như một cách kỹ thuật để thực hiện vài thực hành ITIL:

| Thực hành ITIL | Cách tiếp cận SRE |
|---|---|
| Quản lý sự cố | Vai trò chỉ huy sự cố, bản ghi sự cố trực tiếp, postmortem không đổ lỗi |
| Quản lý vấn đề | Hành động postmortem trong backlog, loại bỏ toil tại nguyên nhân |
| Kích hoạt thay đổi | Triển khai dần, phát hiện nhanh, hoàn tác an toàn, kiểm tra tự động |
| Quản lý mức dịch vụ | SLI, SLO, ngân sách lỗi |
| Giám sát và quản lý sự kiện | Cảnh báo dựa trên triệu chứng, bốn tín hiệu vàng |
| Quản lý năng lực | Lập kế hoạch năng lực như một tác vụ kỹ thuật, với kiểm thử tải |
| Cải tiến liên tục | Một trần cho toil, các dự án kỹ thuật là công việc chính |

Việc ánh xạ là của cuốn sách này, không phải của các nguồn. Cả cuốn sách lẫn bài viết Wikipedia đều không tuyên bố triển khai ITIL.

### Các mô hình triển khai

Bài viết Wikipedia mô tả sáu mô hình tổ chức cho SRE: "Kitchen Sink", hạ tầng, công cụ, sản phẩm hay ứng dụng, nhúng và tư vấn. Nó nói một mô hình lai là phổ biến trong các tổ chức lớn, nhưng đánh dấu nhận định đó cần trích dẫn. Mô hình nào hợp với bạn phụ thuộc vào quy mô và số lượng dịch vụ.

### Giới hạn và lời chỉ trích

Bài viết Wikipedia không nêu lời chỉ trích, chi phí hay dạng thất bại nào, và cuốn sách mô tả thành công của một tổ chức. Các giới hạn thực tế đã biết rõ từ kinh nghiệm, và được đưa ra ở đây như vậy: SRE cần các kỹ sư viết được phần mềm và sẵn lòng làm vận hành; trần 50 phần trăm cần sự ủng hộ của ban quản lý; ngân sách lỗi chỉ hiệu quả nếu các nhóm sản phẩm tôn trọng chúng; và cách tiếp cận khó sao chép nếu không có quy mô và công cụ đã tạo ra nó. Các tổ chức nhỏ hơn có thể áp dụng các ý tưởng, như mục tiêu, ngân sách, đo toil và rà soát không đổ lỗi, mà không cần lập một nhóm.

## Thực hành tốt

1. **Chọn một dịch vụ và đặt một mục tiêu.** Chọn hai đến bốn chỉ báo phản ánh trải nghiệm người dùng, đặt một mục tiêu đầu tiên lỏng và đo vài tháng trước khi siết chặt.
2. **Thống nhất một chính sách ngân sách lỗi.** Viết ra điều xảy ra khi ngân sách gần hết và khi nó hết, và ai được ghi đè. Biến nó thành quy tắc chung của sản phẩm và vận hành.
3. **Đo toil.** Nhờ mọi người ghi lại bao nhiêu thời gian của họ dành cho công việc vận hành thủ công, lặp lại. Dùng sáu đặc điểm để phân loại nó. Nhìn các nguồn hàng đầu.
4. **Đặt trần cho công việc thủ công.** Đặt một ngưỡng cho toil, như một nửa thời gian của một người, và rà soát nó. Khi vượt trần, gửi phần dư về các nhóm sở hữu nguyên nhân hoặc giảm phạm vi.
5. **Tự động hóa toil lớn nhất trước.** Chọn mục tốn nhiều thời gian nhất và dễ lặp lại nhất, tự động hóa nó kèm kiểm thử và đo khoản tiết kiệm. Ưu tiên thiết kế loại bỏ nhu cầu hơn là tự động hóa nó.
6. **Bảo vệ thời gian kỹ thuật.** Lập kế hoạch công việc dự án cho kỹ sư vận hành như công việc thật có chủ sở hữu và ngày. Không có nó, toil nở ra.
7. **Giới hạn ngắt quãng.** Hướng tới ít sự kiện mỗi ca trực, tinh chỉnh cảnh báo để page có thể hành động và sửa nguyên nhân lặp lại. Hướng dẫn của cuốn sách là tối đa khoảng hai sự kiện mỗi ca.
8. **Viết playbook.** Với các lỗi phổ biến, viết các bước phản hồi ngắn, đã kiểm thử. Cuốn sách tuyên bố chúng cải thiện thời gian sửa so với ứng biến.
9. **Làm thay đổi dần dần và có thể đảo ngược.** Triển khai dần, phát hiện vấn đề nhanh và hoàn tác an toàn. Vì thay đổi là nguyên nhân phổ biến nhất của ngừng hoạt động theo kinh nghiệm của cuốn sách, hãy đầu tư vào đây trước.
10. **Chạy postmortem không đổ lỗi cho sự cố đáng kể,** gồm cả những lần suýt xảy ra không gọi trực. Biến hành động thành hạng mục backlog.
11. **Bắt đầu với các ý tưởng, không phải nhóm.** Các tổ chức nhỏ hơn có thể áp dụng mục tiêu, ngân sách, thước đo toil và postmortem với nhân viên hiện có trước khi lập một nhóm chuyên trách.
12. **Chọn mô hình tổ chức có chủ ý.** Nếu bạn lập một chức năng SRE, hãy quyết định nó cung cấp công cụ, nhúng với các nhóm sản phẩm hay tư vấn, và rà soát lựa chọn khi bạn lớn lên.

## Câu hỏi để thảo luận với nhóm của bạn

**Dịch vụ nào chúng ta sẽ đặt mục tiêu trước, và mục tiêu sẽ là gì?**

Mời mỗi người nêu dịch vụ và chỉ báo phản ánh tốt nhất trải nghiệm của người dùng. So sánh. Khác biệt cho thấy ưu tiên chưa rõ. Người điều phối có thể hỏi điều gì xảy ra hôm nay khi dịch vụ chậm hơn hoặc ít sẵn sàng hơn người dùng mong đợi. Thống nhất một dịch vụ để bắt đầu và điều cần đo.

**Chúng ta sẽ làm gì nếu tiêu hết toàn bộ ngân sách lỗi tháng này?**

Mời nhóm và một đại diện sản phẩm mô tả các hành động, ai quyết định và cái gì được bảo vệ. Nhiều nhóm chưa bao giờ thống nhất. Bàn liệu việc tạm dừng các bản phát hành rủi ro có được chấp nhận không. Soạn một chính sách một trang.

**Bao nhiêu phần tuần của chúng ta là toil, và ba nguồn hàng đầu là gì?**

Mời mọi người ước lượng rồi ghi lại trong hai tuần. So sánh ước lượng với bản ghi. Mục đích là thấy hình dạng công việc, không phải đổ lỗi. Chọn nguồn lớn nhất và hỏi nó có thể bị loại bỏ bằng thiết kế không.

**Tác vụ thủ công lặp lại nào có thể được một script hay một thay đổi thiết kế loại bỏ?**

Liệt kê các tác vụ mọi người ngán. Với mỗi cái, ước lượng tần suất và thời gian. Các ứng viên tốt nhất là thường xuyên, ổn định và rủi ro thấp. Hỏi điều gì sẽ làm tự động hóa an toàn, như giới hạn và nhật ký. Chọn một cái để tự động hóa.

**Mỗi ca trực nhận bao nhiêu sự kiện, và bao nhiêu cần hành động?**

Đếm cho quý vừa qua. Nếu con số cao, hãy bàn nó đến từ đâu. Phần giới thiệu gợi ý hướng tới khoảng hai sự kiện mỗi ca. Chọn một nguồn cảnh báo để sửa.

**Chúng ta sẽ mất và được gì nếu lập một nhóm độ tin cậy chuyên trách?**

Xin các quan điểm thẳng thắn. Cái được có thể là sự tập trung và kỹ năng; cái mất có thể là một ngăn riêng mới hoặc việc vứt công việc vận hành sang. Bàn các lựa chọn thay thế như kỹ sư nhúng hoặc luân phiên. Quyết định thử gì ở quy mô nhỏ.

## Trong thực tế: một ví dụ agile ITIL

Một nhà phân phối điện khu vực vận hành một ứng dụng báo mất điện và một hệ thống điều phối đội công tác hiện trường. Một nhóm kết hợp mười tám người xây dựng và vận hành cả hai. Nhân viên vận hành trong nhóm dành phần lớn thời gian cho công việc thủ công: khởi động lại các job bị kẹt, điều chỉnh nguồn dữ liệu và đáp lại các page. Trưởng nhóm lưu ý họ còn rất ít thời gian cho cải tiến, và hai người trong số họ đã xin chuyển sang nhóm khác.

Trưởng nhóm đề xuất một cách tiếp cận lấy cảm hứng từ SRE. Với ứng dụng báo mất điện, nhóm đặt hai chỉ báo: tỷ lệ các lần gửi báo cáo thành công và thời gian hiện xác nhận. Họ thống nhất một mục tiêu lỏng và một ngân sách lỗi hằng tháng với quản lý chăm sóc khách hàng, và viết một chính sách một trang: khi hơn ba phần tư ngân sách đã tiêu, các bản phát hành rủi ro phải chờ. Nhóm nhờ các kỹ sư ghi toil trong một tháng. Nhật ký cho thấy một phần ba thời gian của họ dành cho việc khởi động lại một job nhập dữ liệu hay lỗi và cho các điều chỉnh thủ công sau bão, khi nhu cầu tăng vọt. Họ đặt trần một nửa thời gian cho toil, quyết định sửa nguyên nhân của job nhập trước, và tự động hóa các điều chỉnh sau bão bằng một script có giới hạn và nhật ký. Page được tinh chỉnh để chỉ các triệu chứng người dùng thấy được mới cảnh báo kỹ sư trực.

Bốn tháng sau, toil giảm xuống còn khoảng một phần ba thời gian của nhóm, job nhập không còn lỗi, và chính sách ngân sách lỗi đã được dùng một lần, trong một tháng có sự cố nhà cung cấp, để hoãn một bản phát hành tính năng. Khó khăn vẫn còn. Hệ thống điều phối chưa có mục tiêu, và quản lý chăm sóc khách hàng đã bị cám dỗ ghi đè chính sách ngân sách hai lần cho các tính năng khẩn. Trưởng nhóm và quản lý thống nhất rà soát các lần ghi đè hằng tháng và đặt mục tiêu cho điều phối tiếp theo. Họ cũng học được rằng "trần" là một hướng dẫn, không phải lời hứa: sau một cơn bão lớn, toil tăng vượt xa một nửa trong hai tuần, và họ phải quyết định cắt gì.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối tham gia đặt mục tiêu và tôn trọng ngân sách. Hãy xây khả năng vận hành vào tính năng, chấp nhận rằng toil quay về nhóm gây ra nó, và giúp tự động hóa. Hãy coi một ngân sách đã cạn là thông tin về dịch vụ, không phải hình phạt.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành có thể làm công việc SRE hoặc áp dụng các ý tưởng của nó. Đo toil, bảo vệ thời gian cho kỹ thuật và đẩy công việc lặp lại về nguồn của nó. Dùng mục tiêu để giải thích vì sao một số công việc nên bị từ chối.

### Lãnh đạo và quản trị

Lãnh đạo phải ủng hộ trần cho toil và quy tắc ngân sách lỗi; không có sự ủng hộ chúng thất bại. Hãy hỏi mục tiêu và tình trạng ngân sách, không phải số lượng sự cố. Cung cấp thời gian cho công việc kỹ thuật và sẵn sàng nói không với tính năng khi ngân sách đã tiêu hết.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi từ các mức dịch vụ rõ ràng và khôi phục nhanh hơn khi có gì hỏng. Hãy nói với nhóm điều gì quan trọng nhất, để mục tiêu phản ánh trải nghiệm của bạn. Hãy mong các cuộc trò chuyện trung thực về đánh đổi giữa tính năng mới và độ tin cậy.

## Các kiểu thất bại thường gặp

- **Sao chép chức danh.** Vận hành được đổi tên và không có gì thay đổi. Thay vào đó, áp dụng mục tiêu, ngân sách và thước đo toil trước.
- **Một ngân sách lỗi không ai tôn trọng.** Tính năng ghi đè nó mọi lần. Thay vào đó, thống nhất quy tắc với chủ sở hữu sản phẩm và rà soát các lần ghi đè.
- **Không có thời gian cho kỹ thuật.** Toil lấp đầy tuần. Thay vào đó, đặt trần cho nó và bảo vệ thời gian dự án.
- **Tự động hóa sai thứ.** Một tác vụ hiếm được tự động hóa trong khi tác vụ thường xuyên vẫn còn. Thay vào đó, xếp hạng theo thời gian và tần suất.
- **Mục tiêu hoàn hảo.** Mục tiêu đòi 100 phần trăm. Thay vào đó, đặt mục tiêu lỏng từ nhu cầu người dùng và siết chặt bằng dữ liệu.
- **Nhóm độ tin cậy như bãi rác.** Phát triển gửi mọi công việc vận hành sang đó. Thay vào đó, trả công việc dư về nguồn của nó.
- **Sao chép quy mô của Google.** Các thực hành cần một tổ chức lớn được một tổ chức nhỏ áp dụng. Thay vào đó, lấy những ý tưởng phù hợp, như mục tiêu và postmortem.
- **Bỏ qua con người.** Tải trực làm kiệt sức mọi người. Thay vào đó, giới hạn sự kiện mỗi ca và chia sẻ lịch trực.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Mục tiêu và ngân sách | Mục tiêu độ tin cậy không chính thức | Một số dịch vụ có mục tiêu | Dịch vụ chính có mục tiêu và chính sách ngân sách lỗi đã thống nhất | Ngân sách dẫn dắt phát hành và các lần ghi đè chính sách được rà soát | Mục tiêu và ngân sách được căn chỉnh giữa các dịch vụ phụ thuộc nhau |
| Toil và tự động hóa | Toil không được đo | Một số nhóm ước lượng toil | Toil được đo và đặt trần; công việc tự động hóa được lên kế hoạch | Nguồn toil và khoản tiết kiệm được theo dõi và giảm | Tự động hóa được chia sẻ và toil được giảm giữa các nhóm |
| Ứng phó khẩn cấp | Phản hồi được ứng biến | Có một số playbook và lịch trực | Vai trò, playbook và postmortem không đổ lỗi là chuẩn | Tải sự kiện và thời gian sửa được đo và cải thiện | Phản hồi được diễn tập và điều phối giữa các nhóm và nhà cung cấp |
| Thay đổi và năng lực | Thay đổi rủi ro và thủ công | Một số đợt triển khai theo giai đoạn | Triển khai dần và lập kế hoạch năng lực là thường lệ | Thất bại thay đổi và dự báo năng lực được đo | Thực hành thay đổi và năng lực được chia sẻ trong toàn tổ chức |

## Danh mục kiểm tra

- [ ] Ít nhất một dịch vụ có chỉ báo và mục tiêu lỏng, được đo theo thời gian.
- [ ] Một chính sách ngân sách lỗi được thống nhất với chủ sở hữu sản phẩm và viết ra.
- [ ] Toil được đo với một định nghĩa nhất quán, và các nguồn hàng đầu được biết.
- [ ] Một trần cho toil tồn tại và được rà soát.
- [ ] Thời gian cho các dự án kỹ thuật được lên kế hoạch và bảo vệ.
- [ ] Tải trực được đo, và page có thể hành động.
- [ ] Playbook tồn tại cho các lỗi phổ biến nhất và đã được kiểm thử.
- [ ] Triển khai dần theo từng bước và hoàn tác đã được kiểm thử.
- [ ] Sự cố đáng kể và các lần suýt xảy ra có postmortem không đổ lỗi với hành động có chủ sở hữu.
- [ ] Chúng ta đã chọn có chủ ý cách công việc độ tin cậy được tổ chức.

## Lời nhắc AI

**Mục đích: phân loại công việc của bạn thành toil, kỹ thuật hay chi phí quản lý.**

```text
Here is a list of what our operations engineers did in the last two weeks, with the time spent on each: [paste real data].

Classify each item as toil, engineering work, or overhead, using these definitions. Toil: manual, repetitive, automatable, tactical, without enduring value, and growing linearly with the service. Engineering work: novel, requires judgment, produces permanent improvement. Overhead: administrative work not tied to running a service. Give a one-sentence reason from my text for each. Compute the share of time in each class from my numbers only, and list the three largest toil items. Mark items you could not classify. Do not invent time figures. List what you are unsure of.
```

**Mục đích: soạn một chính sách ngân sách lỗi.**

```text
Draft a one-page error budget policy for [service].

Objective and period: [for example, "99.9% of purchase requests succeed, per month"].
Release rhythm and who decides: [describe].
Customer and product concerns: [list].

Write sections: how the budget is calculated and shown, what happens at three stages of consumption (leave thresholds as [to be agreed]), who can override and how overrides are recorded, how the policy is reviewed, and what we do after an exhausted budget. Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chọn một mục toil để tự động hóa trước.**

```text
Here are our top toil items with how often each occurs, time per occurrence, risk if the automation fails, and whether the cause could be designed away: [paste].

Rank them by total time saved per month (computed from my numbers only). For the top three, say whether I should design the need away or automate it, and what safeguards the automation needs (tests, limits, logs). Do not invent numbers. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: viết một mục playbook.**

```text
Write a playbook entry for this recurring failure: [describe symptom and impact].

What I know about causes and fixes: [paste].
Who to escalate to: [role, or "unknown"].

Provide a short entry: how to confirm the failure, the first checks, the usual fix, how to confirm recovery, when to escalate, and what to record. Mark any step you inferred with [CHECK]. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [on-call-rotation](../../../../skills/on-call-rotation/SKILL.md): dùng để thiết kế một lịch trực công bằng với giới hạn sự kiện mỗi ca.
- [runbook](../../../../skills/runbook/SKILL.md): dùng để viết các playbook làm nhanh việc sửa chữa.
- [postmortem](../../../../skills/postmortem/SKILL.md): dùng để chạy các buổi rà soát không đổ lỗi và theo dõi hành động.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): dùng để kiểm thử rằng các thiết kế độ tin cậy hoạt động bằng cách gây ra lỗi một cách an toàn.
- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): dùng để lập kế hoạch năng lực như một tác vụ kỹ thuật gắn với nhu cầu.

## Nguồn chính

- **Introduction** (*Site Reliability Engineering*, Google, sre.google): định nghĩa SRE, trần 50 phần trăm, các nguyên lý và sự chia tách phát triển và vận hành mà nó nhằm tránh.
- **Eliminating Toil** (*Site Reliability Engineering*, Google, sre.google): định nghĩa toil và lý do đặt trần cho nó.
- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): kinh tế của độ tin cậy và ngân sách lỗi.
- **Site reliability engineering** (Wikipedia): bản tóm tắt rộng hơn về ngành, các mô hình triển khai, khảo sát áp dụng và tài liệu đọc thêm.

## Tài liệu tham khảo

1. Introduction — Google SRE book, sre.google — https://sre.google/sre-book/introduction/
2. Eliminating Toil — Google SRE book, sre.google — https://sre.google/sre-book/eliminating-toil/
3. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
4. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
5. DevOps — Wikipedia — https://en.wikipedia.org/wiki/DevOps
6. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
7. Infrastructure as code — Wikipedia — https://en.wikipedia.org/wiki/Infrastructure_as_code
8. Observability (software) — Wikipedia — https://en.wikipedia.org/wiki/Observability_(software)
9. Incident management — Wikipedia — https://en.wikipedia.org/wiki/Incident_management
