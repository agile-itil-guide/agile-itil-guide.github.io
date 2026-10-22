# Quản lý phát hành và triển khai

**Quản lý phát hành và triển khai đưa các thay đổi vào sản xuất một cách an toàn, và mục tiêu trong bối cảnh agile là làm cho việc phát hành trở nên thường lệ, tự động và có thể hoàn tác đến mức nó không còn là một sự kiện.**

## Vì sao điều này quan trọng

Nhiều tổ chức vẫn coi một bản phát hành là một dịp lớn, căng thẳng. Một ngày được ấn định, một khung giờ được đặt, mọi người ở lại muộn, và thành công được đo bằng việc có gì hỏng không. Mô hình đó tạo ra đúng rủi ro mà nó sợ: càng nhiều thay đổi gộp vào một bản phát hành thì càng khó hiểu điều gì sai và hoàn tác càng đau đớn.

Chương trình nghiên cứu DORA mô tả giải pháp thay thế. Trang của nó về giao hàng liên tục định nghĩa thực hành là "khả năng phát hành mọi loại thay đổi theo yêu cầu một cách nhanh chóng, an toàn và bền vững", và báo cáo rằng làm tốt điều đó cải thiện hiệu suất giao hàng và tính sẵn sàng, và có liên hệ với kiệt sức thấp hơn và sự hài lòng công việc cao hơn. Trang cũng cảnh báo rằng triển khai thường xuyên hơn mà không đổi quy trình và kiến trúc có xu hướng làm tăng tỷ lệ thất bại và làm kiệt sức các nhóm. Bài học không phải là "phát hành nhanh hơn" mà là "xây khả năng phát hành an toàn, rồi phát hành thường xuyên".

Cuốn *Site Reliability Engineering* của Google, trong chương về kỹ thuật phát hành, nêu một ý tương tự từ thực tế: phát hành thường xuyên nghĩa là ít thay đổi hơn giữa các phiên bản, nên kiểm thử và xử lý sự cố dễ hơn. Chủ đề này dựa vào hai nguồn đó, vào các chủ đề liên quan đến thay đổi khác của cuốn sách, và vào từ vựng ITIL được dùng rộng rãi mà cuốn sách này không thể đối chiếu với văn bản của chủ sở hữu khung. Hãy coi các nguồn là mạnh, cụ thể và giới hạn trong các bối cảnh chúng mô tả.

## Các khái niệm cốt lõi

### Phát hành và triển khai

Hai thuật ngữ thường bị nhầm lẫn. Một sự phân biệt phổ biến, được dùng rộng rãi trong quản lý dịch vụ, là:

- Một **bản phát hành** là một phiên bản của dịch vụ hay thành phần được cung cấp để sử dụng. Đó là một quyết định về điều người dùng sẽ nhận được.
- Một **lần triển khai** là hành động chuyển một phiên bản vào một môi trường, như sản xuất.

Tách chúng ra là mạnh mẽ. Bạn có thể triển khai mã lên sản xuất mà không bật nó cho người dùng, và phát hành nó sau một cách có kiểm soát. Các kỹ thuật như công tắc tính năng dựa vào sự tách biệt này (xem bài viết Wikipedia về feature toggle).

### Giao hàng liên tục và triển khai liên tục

Trang của DORA định nghĩa **giao hàng liên tục** là khả năng phát hành mọi loại thay đổi theo yêu cầu một cách nhanh chóng, an toàn và bền vững. Nó phân biệt với **triển khai liên tục**, nghĩa là triển khai mọi thay đổi lên sản xuất ngay khi có thể. DORA nói các nhóm "có thể và nên bắt đầu với giao hàng liên tục" ngay cả khi họ không bao giờ áp dụng triển khai liên tục. Quyết định có phát hành hay không vẫn là một quyết định kinh doanh; giao hàng liên tục làm cho nó thành một lựa chọn chứ không phải một dự án.

### Nghiên cứu khuyến nghị gì

Trang của DORA liệt kê các thực hành hỗ trợ giao hàng liên tục:

| Thực hành | DORA nói gì |
|---|---|
| **Tự động hóa kiểm thử** | Các bộ kiểm thử tự động toàn diện, đáng tin, chủ yếu do lập trình viên tạo và duy trì |
| **Tự động hóa triển khai** | Triển khai hoàn toàn tự động, không cần can thiệp thủ công |
| **Phát triển dựa trên trunk** | Ít hơn ba nhánh hoạt động, nhánh sống rất ngắn, hiếm khi có giai đoạn khóa mã |
| **Nhóm và kiến trúc kết nối lỏng** | Các nhóm có thể kiểm thử và triển khai theo yêu cầu mà không phải phối hợp với các dịch vụ khác |
| **Các thực hành khác** | Tích hợp liên tục, kiểm thử liên tục, kiểm soát phiên bản cho mọi artifact sản xuất, quản lý dữ liệu kiểm thử, giám sát và khả năng quan sát, thông báo chủ động, quản lý thay đổi cơ sở dữ liệu, bảo mật thấm khắp |

Trang báo cáo rằng giao hàng liên tục có liên hệ với chất lượng cao hơn (ít thời gian hơn cho việc làm lại hay công việc ngoài kế hoạch), kiệt sức thấp hơn và ít đau đớn khi triển khai hơn. Nó cũng nói các nhóm ưu tú đạt mục tiêu độ tin cậy trong báo cáo 2021 có khả năng có kiến trúc kết nối lỏng cao gấp ba lần các nhóm yếu. Nó không nêu công cụ, tần suất triển khai mục tiêu hay lộ trình triển khai, và lưu ý rằng các cuộc chuyển đổi thường theo một "đường cong chữ J", với một đợt sụt giảm hiệu quả khi tự động hóa làm tăng yêu cầu kiểm thử và nợ kỹ thuật tích tụ.

### Bài học từ thực hành kỹ thuật phát hành

Chương về kỹ thuật phát hành trong cuốn SRE mô tả cách tiếp cận của một tổ chức lớn:

- **Tự phục vụ.** Các nhóm tự chạy quy trình phát hành của mình. Các bản phát hành "thực sự tự động" và chỉ cần kỹ sư tham gia khi có vấn đề.
- **Tốc độ cao.** Phát hành thường xuyên nghĩa là ít thay đổi hơn giữa các phiên bản, làm kiểm thử và xử lý sự cố dễ hơn.
- **Build kín (hermetic).** Build phụ thuộc vào các phiên bản công cụ và thư viện đã biết, nên cùng một revision cho kết quả giống hệt.
- **Chính sách được thực thi.** Kiểm soát truy cập chặn phê duyệt, tạo bản phát hành và triển khai. Gần như mọi thay đổi cần rà soát mã, và mỗi bản phát hành tạo ra một báo cáo các thay đổi được đưa vào.

Chương cũng nhấn mạnh cấu hình được kiểm soát nguồn và rà soát mã, và gợi ý lập trình viên, kỹ sư độ tin cậy hệ thống và kỹ sư phát hành cộng tác thay vì ném kết quả "qua hàng rào". Nó nói các tổ chức nên định nghĩa chính sách phát hành ngay cả khi chưa thể tự động hóa hay thực thi chúng, và rằng đặt thực hành tốt vào sớm thì rẻ hơn là vá lại về sau. Chương mô tả các công cụ riêng của Google; môi trường của bạn sẽ dùng những công cụ khác, nên hãy rút ra các nguyên tắc chứ không phải sản phẩm.

### Môi trường và thăng cấp

Một bản phát hành thường di chuyển qua một loạt môi trường, như phát triển, kiểm thử và sản xuất. Mỗi bước cung cấp bằng chứng. Một thực hành phổ biến, nhất quán với nghiên cứu trên, là build một lần và thăng cấp cùng một artifact, để cái đã được kiểm thử là cái được triển khai. Sự nhấn mạnh của chương SRE về các build giống hệt nhau từ cùng một revision thể hiện cùng ý tưởng.

### Triển khai dần và hoàn tác

Cách một bản phát hành đến người dùng có thể theo từng bậc. Chương SRE mô tả các đợt triển khai dần có nhịp theo rủi ro, từ các lần đẩy tự động hằng giờ trong phát triển đến các đợt kéo dài nhiều ngày cho hạ tầng nhạy cảm, và nhắc đến phát hành canary, nơi một phần nhỏ lưu lượng nhận phiên bản mới trước. Hoàn tác nghĩa là quay lại phiên bản trước, và nó nên được luyện tập như triển khai dần. Các nhóm có thể đảo ngược nhanh có thể đủ khả năng triển khai thường xuyên (xem Chủ đề 3.4 — Kích hoạt thay đổi).

### Thông tin phát hành cho hỗ trợ

Nhân viên hỗ trợ và người dùng cần biết điều gì thay đổi và phải làm gì nếu nó hỏng. Một ghi chú phát hành, một danh sách vấn đề đã biết và một đầu mối có tên là mức tối thiểu (xem Chủ đề 3.1 — Bàn dịch vụ). Báo cáo các thay đổi được đưa vào của chương SRE là một nguồn.

### Thước đo

Trang của DORA gợi ý đo thời gian chờ giao ngắn cho các thay đổi thông thường và khẩn cấp, tỷ lệ thay đổi thất bại thấp, thời gian khôi phục dịch vụ ngắn, và tần suất phát hành giao đúng hạn các ưu tiên. Mục tiêu bao trùm của nó là không ai làm việc ngoài giờ hành chính để triển khai. Về định nghĩa và lưu ý cho các thước đo, xem Chủ đề 3.4 — Kích hoạt thay đổi và Chủ đề 5.6 — Chỉ số và đo lường.

## Thực hành tốt

1. **Tách triển khai khỏi phát hành.** Triển khai mã lên sản xuất ở trạng thái ngủ và bật nó cho người dùng khi sẵn sàng, dùng công tắc tính năng hoặc triển khai theo giai đoạn. Điều này giảm rủi ro của một lần triển khai và cho doanh nghiệp quyền kiểm soát.
2. **Tự động hóa triển khai.** Hướng tới không có bước thủ công. Các bước thủ công chậm, khác nhau giữa mọi người và gây ra sự cố. Tự động hóa từng bước nhỏ, bắt đầu với các bước hay sai nhất.
3. **Build một lần, thăng cấp artifact.** Tạo một gói và chuyển nó qua các môi trường, để cái bạn đã kiểm thử là cái bạn chạy. Ghi lại phiên bản nào ở đâu.
4. **Làm cho build tái lập được.** Cố định phiên bản công cụ và thư viện để cùng một revision cho cùng một kết quả. Điều này theo nguyên tắc build kín của chương SRE.
5. **Giữ nhánh sống ngắn.** Hướng dẫn trunk của DORA là ít hơn ba nhánh hoạt động và các nhánh hợp nhất trong khoảng một ngày. Nhánh dài biến phát hành thành các sự kiện hợp nhất.
6. **Kiểm thử tự động, và giữ kiểm thử nhanh và đáng tin.** Hướng tới phản hồi trong vài phút. Một bộ kiểm thử chập chờn hoặc chậm khiến mọi người đi vòng nó.
7. **Phát hành theo lô nhỏ.** Bản phát hành nhỏ hơn dễ rà soát, kiểm thử và hoàn tác. Nếu một bản phát hành lớn, hãy hỏi cách chia nó.
8. **Triển khai dần theo giai đoạn.** Bắt đầu với một phần nhỏ người dùng hoặc máy chủ, theo dõi các tín hiệu và mở rộng. Định nghĩa trước bạn sẽ theo dõi gì và ai có thể dừng đợt triển khai.
9. **Diễn tập hoàn tác.** Biết cách quay lại phiên bản tốt gần nhất và luyện tập. Một hoàn tác bạn chưa từng thử chỉ là một niềm hy vọng.
10. **Cho hỗ trợ những gì họ cần trước khi phát hành.** Cung cấp ghi chú phát hành, vấn đề đã biết và một đầu mối liên hệ. Đưa nhân viên hỗ trợ vào việc ký duyệt các thay đổi ảnh hưởng đến người dùng (xem Chủ đề 3.1 — Bàn dịch vụ).
11. **Giữ cấu hình trong kiểm soát phiên bản.** Coi thay đổi cấu hình như mã, với rà soát và bản ghi. Chọn nơi mỗi loại thiết lập nằm và vì sao.
12. **Hướng tới triển khai trong giờ làm việc.** DORA nêu đây là mục tiêu bao trùm. Nếu triển khai cần làm đêm khuya, quy trình hoặc kiến trúc cần được cải thiện.

## Câu hỏi để thảo luận với nhóm của bạn

**Mất bao lâu, và bao nhiêu bước, để đưa một thay đổi đã hoàn tất vào sản xuất?**

Lần theo một thay đổi gần đây từ "sẵn sàng" đến "đã lên sóng". Liệt kê từng bước, ai làm và nó chờ bao lâu. Phân biệt các bước thủ công với các bước tự động. Các nhóm thường ngạc nhiên về số bước thủ công và những lần chờ giữa chúng. Người điều phối có thể hỏi bước nào đã gây ra nhiều sự cố nhất. Chọn một cái để tự động hóa.

**Điều gì phải đúng để chúng ta phát hành trong giờ làm việc mà không lo lắng?**

Hỏi nhóm sợ điều gì khi phát hành. Các câu trả lời điển hình: không có hoàn tác đã kiểm thử, kiểm thử yếu, tác động lên người dùng không rõ. Mỗi cái là một thứ phải xây. Liệt kê và xếp hạng chúng. Hỏi bước nhỏ nhất cho cái đầu tiên là gì. Mục tiêu của DORA là không ai làm việc ngoài giờ hành chính để triển khai là một mục tiêu hữu ích để bàn.

**Chúng ta gộp thay đổi ở đâu vì phát hành đau đớn, và việc gộp tốn chúng ta gì?**

Xem nội dung các bản phát hành gần đây. Đếm số thay đổi trong mỗi bản. Hỏi chuyện gì xảy ra khi một lô hỏng, và mất bao lâu để tìm ra nguyên nhân. Bàn điều gì sẽ biến việc phát hành từng thay đổi thành con đường dễ. Thống nhất bước đầu tiên, như phát hành một thay đổi rủi ro thấp riêng lẻ.

**Làm sao chúng ta biết một bản phát hành đang hoạt động khi nó đã lên sóng?**

Hỏi nhóm theo dõi tín hiệu nào trong giờ đầu: lỗi, hiệu năng, báo cáo của người dùng. Nếu câu trả lời là "chúng tôi chờ phàn nàn", hãy bàn về giám sát sẽ cho thấy vấn đề nhanh chóng. Hỏi ai đang theo dõi và họ sẽ làm gì. Thống nhất một danh mục kiểm tra ngắn cho sau phát hành.

**Đội hỗ trợ của chúng ta biết gì về một bản phát hành trước khi nó ra mắt?**

Hỏi bàn dịch vụ họ đã biết gì về bản phát hành gần nhất và khi nào. So sánh với điều họ cần. Bàn một cách bàn giao đơn giản, như một ghi chú phát hành và một đầu mối có tên. Đưa những người trả lời câu hỏi của người dùng vào việc lập kế hoạch cho các bản phát hành rủi ro.

**Điều gì ngăn chúng ta triển khai mà không có giai đoạn đóng băng, và một giai đoạn đóng băng tốn chúng ta gì?**

Các giai đoạn đóng băng là phổ biến quanh các thời điểm kinh doanh cao điểm. Hỏi chúng kéo dài bao lâu và trì hoãn gì. Bàn liệu các thay đổi nhỏ, được kiểm thử tốt có thể tiến hành trong thời gian đó với biện pháp bảo vệ thêm không. Trang của DORA cảnh báo không áp dụng cùng một phê duyệt cho mọi thay đổi bất kể rủi ro hay thời điểm, nên hãy hỏi giai đoạn đóng băng có quá thô không.

## Trong thực tế: một ví dụ agile ITIL

Một trường đại học vận hành hệ thống ghi danh trực tuyến cho 30.000 sinh viên. Nhóm phát triển tám người phát hành mỗi học kỳ một lần, trong khung giờ cuối tuần trước khi ghi danh mở. Mỗi bản phát hành gộp hàng trăm thay đổi và cần mười lăm người, một danh mục kiểm tra thủ công dài và một kế hoạch gọi điện. Bản phát hành gần nhất thất bại lúc 2 giờ sáng Chủ nhật, và nhóm mất mười bốn giờ tìm xem thay đổi nào đã gây ra.

Trưởng nhóm đề xuất đổi cách tiếp cận. Thứ nhất, việc triển khai được viết thành script hoàn toàn, bắt đầu với các bước đã hỏng lần trước. Thứ hai, nhóm thêm kiểm thử tự động cho đường ghi danh, chạy trên mọi thay đổi và mất dưới mười phút. Thứ ba, tính năng mới được triển khai ở trạng thái tắt và được bật bằng công tắc tính năng sau khi kiểm tra. Thứ tư, một bước hoàn tác được viết ra và diễn tập trong môi trường kiểm thử. Văn phòng giáo vụ đồng ý một quy tắc rằng không bản phát hành nào lên sản xuất trong ba tuần cao điểm ghi danh trừ khi đó là bản sửa cho một lỗi người dùng thấy được.

Trong vòng một học kỳ, nhóm triển khai hằng tuần ngoài các tuần cao điểm, trong giờ làm việc, với ghi chú phát hành gửi cho bàn hỗ trợ sinh viên vào ngày hôm trước. Một số bản phát hành bị chậm vì kiểm thử chập chờn và một công tắc tính năng bị bật nhầm gây ra chút nhầm lẫn ngắn. Cuộc chuyển đổi cũng gặp đường cong chữ J mà trang của DORA mô tả: trong hai tháng, công việc về kiểm thử và script làm chậm việc giao tính năng. Nhóm tiếp tục, sửa các kiểm thử chập chờn, thêm một bước vào danh mục kiểm tra để gỡ các công tắc, và thống nhất với giáo vụ xem lại quy tắc đóng băng năm sau. Các đỉnh ghi danh của các học kỳ trôi qua mà không có sự cố liên quan đến phát hành.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối sở hữu pipeline: kiểm thử, build, script triển khai và hoàn tác. Hãy đầu tư vào chúng như một sản phẩm có người dùng. Phát hành nhỏ, phát hành thường xuyên và coi mỗi bản phát hành là bằng chứng về pipeline. Lôi kéo hỗ trợ và vận hành khi thay đổi ảnh hưởng đến họ.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành được lợi từ các bản phát hành nhỏ hơn, dễ dự đoán hơn, và có thể giúp bằng cách xác định điều gì phải đúng trước khi một bản phát hành được chấp nhận: giám sát, runbook và hoàn tác. Chuyển từ canh cổng sang tạo điều kiện bằng cách cung cấp nền tảng và các kiểm tra mà các nhóm phân phối dùng. Theo dõi các tín hiệu sau phát hành.

### Lãnh đạo và quản trị

Lãnh đạo quyết định các nhóm có thể đầu tư vào pipeline và chịu đựng đường cong chữ J không. Hãy yêu cầu thời gian chờ giao, tỷ lệ thay đổi thất bại và thời gian phục hồi. Cưỡng lại việc đóng băng phát hành như một phản ứng đại trà với rủi ro, và thay vào đó hãy đòi bằng chứng rằng các bản phát hành rủi ro được xem xét kỹ hơn.

### Khách hàng và người dùng

Khách hàng và người dùng thấy các cải tiến nhỏ, thường xuyên và ít gián đoạn bùng nổ hơn. Hãy mong được báo trước về các thay đổi ảnh hưởng đến bạn và có cách để báo vấn đề. Nếu bạn có các giai đoạn cao điểm, hãy nói với nhà cung cấp để họ lập kế hoạch triển khai theo giai đoạn quanh chúng.

## Các kiểu thất bại thường gặp

- **Phát hành bùng nổ.** Hàng trăm thay đổi ra cùng lúc. Thay vào đó, phát hành theo lô nhỏ và tách triển khai khỏi phát hành.
- **Triển khai thủ công.** Các bước khác nhau theo từng người và hỏng vào ban đêm. Thay vào đó, tự động hóa từng bước, bắt đầu với những bước rủi ro nhất.
- **Phát hành thường xuyên hơn mà không có biện pháp bảo vệ.** Tỷ lệ thất bại tăng và mọi người kiệt sức, như DORA cảnh báo. Thay vào đó, đầu tư vào kiểm thử, hoàn tác và giám sát trước.
- **Artifact khác nhau ở các môi trường khác nhau.** Cái được kiểm thử không phải cái chạy. Thay vào đó, build một lần và thăng cấp cùng một artifact.
- **Nhánh sống lâu.** Hợp nhất thành sự kiện. Thay vào đó, giữ nhánh ngắn và tích hợp liên tục.
- **Hoàn tác chưa thử.** Lần hoàn tác đầu tiên xảy ra trong một sự cố ngừng hoạt động. Thay vào đó, diễn tập nó đều đặn.
- **Hỗ trợ biết sau cùng.** Nhân viên biết về thay đổi từ người dùng. Thay vào đó, gửi ghi chú phát hành và đầu mối liên hệ trước khi phát hành.
- **Đóng băng đại trà.** Cùng một lệnh đóng băng áp dụng cho mọi thay đổi. Thay vào đó, cho phép các thay đổi rủi ro thấp, được kiểm thử tốt đi qua với kiểm tra thêm và giữ đóng băng cho những gì rủi ro.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Tự động hóa triển khai | Triển khai thủ công và khác nhau | Một số lần triển khai được viết script | Triển khai được tự động qua một pipeline chung | Lỗi và thời lượng triển khai được theo dõi và giảm | Pipeline và thực hành được chia sẻ và cải thiện giữa các nhóm |
| Tần suất và kích thước phát hành | Bản phát hành hiếm và lớn | Một số nhóm phát hành theo lô nhỏ hơn | Các nhóm phát hành theo lô nhỏ với nhịp đã biết | Tần suất, thời gian chờ giao và kích thước được đo và tinh chỉnh | Nhịp phát hành được điều phối giữa các dịch vụ và nhà cung cấp |
| An toàn (kiểm thử, triển khai dần, hoàn tác) | Kiểm thử thủ công; hoàn tác chưa thử | Có một số kiểm thử tự động và bước hoàn tác | Kiểm thử tự động, triển khai dần theo giai đoạn và hoàn tác đã diễn tập là chuẩn | Tỷ lệ thay đổi thất bại và thời gian phục hồi được theo dõi và cải thiện | Thực hành an toàn được chia sẻ và kiểm thử giữa các nhóm |
| Sẵn sàng hỗ trợ | Hỗ trợ biết về bản phát hành từ người dùng | Một số bản phát hành có ghi chú | Ghi chú phát hành và đầu mối liên hệ là chuẩn | Phản hồi của hỗ trợ về bản phát hành được thu thập và hành động theo | Hỗ trợ, phân phối và người dùng cùng lập kế hoạch phát hành |

## Danh mục kiểm tra

- [ ] Chúng ta nói được sự khác biệt giữa triển khai và phát hành, và chúng ta dùng nó.
- [ ] Triển khai được tự động không có bước thủ công, hoặc các bước thủ công còn lại được liệt kê.
- [ ] Chúng ta build một lần và thăng cấp cùng một artifact qua các môi trường.
- [ ] Kiểm thử tự động chạy trên mọi thay đổi và cho phản hồi trong vài phút.
- [ ] Nhánh sống ngắn và được hợp nhất vào trunk thường xuyên.
- [ ] Một hoàn tác tồn tại cho mỗi loại bản phát hành và đã được diễn tập.
- [ ] Việc triển khai dần theo giai đoạn ở nơi rủi ro biện minh, với tín hiệu được định nghĩa trước.
- [ ] Ghi chú phát hành và vấn đề đã biết đến bàn dịch vụ trước một bản phát hành.
- [ ] Cấu hình nằm trong kiểm soát phiên bản và được rà soát.
- [ ] Chúng ta theo dõi thời gian chờ giao, tỷ lệ thay đổi thất bại và thời gian phục hồi cho từng dịch vụ.

## Lời nhắc AI

**Mục đích: vẽ các bước từ "sẵn sàng" đến "đã lên sóng" và tìm điều cần tự động hóa.**

```text
Help me map the path of a change from ready to live.

The steps in order, with who does each, whether it is manual or automated, and how long it typically waits or takes: [paste].
The last three releases and what went wrong, if anything: [paste facts].

Produce a table of steps and mark the manual ones. Rank the manual steps by how often they caused problems in the text, and suggest, for the top three, one small way to automate or check each. Do not invent durations or failure counts. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

**Mục đích: viết ghi chú phát hành cho bàn dịch vụ và người dùng.**

```text
Write a release note for [service].

What changed (plain words): [describe].
Who is affected and when: [describe].
What users will notice: [describe].
Known issues and workarounds: [list, or write "none known"].
How to roll back and who to contact: [describe].

Write two versions: a one-paragraph note for users and a half-page note for the service desk. Use only the facts above. Mark any statement that is an assumption and ask clarifying questions first if information is missing. List what you are unsure of.
```

**Mục đích: lập kế hoạch một đợt triển khai dần theo giai đoạn.**

```text
Plan a staged rollout of [change].

What it changes and who uses it: [describe].
How we can limit exposure (percentage of users, regions, servers, feature switch): [describe options available].
Signals we can watch: [list monitoring and user feedback sources].
Rollback method: [describe].

Propose stages, what to check at each stage, who can pause or stop, and what would trigger a rollback, leaving numeric thresholds as [to be agreed]. Do not invent monitoring that we do not have. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: chuẩn bị luận chứng để đầu tư vào tự động hóa phát hành.**

```text
Help me prepare a short case for investing in release automation for [service].

What a release costs us today, in facts: [people involved, hours, incidents, delays; use real numbers only].
What we want to be able to do: [describe].
Known risks of the work: [for example a temporary slowdown while tests are written].

Write a one-page case with the problem, the proposed first steps (small and incremental), what we will measure (lead time, change fail rate, recovery time, with no targets that I did not give), the risks including a temporary dip in delivery, and what we ask for. Do not invent figures. Ask clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [release-notes](../../../../skills/release-notes/SKILL.md): dùng để nói với người dùng và bàn dịch vụ một bản phát hành đổi gì.
- [changelog](../../../../skills/changelog/SKILL.md): dùng để giữ bản ghi liên tục các thay đổi theo phiên bản.
- [test-driven-development](../../../../skills/test-driven-development/SKILL.md): dùng để xây các kiểm thử tự động làm cho phát hành thường xuyên trở nên an toàn.
- [shift-left-testing](../../../../skills/shift-left-testing/SKILL.md): dùng để chuyển kiểm thử lên sớm hơn trong pipeline để vấn đề được tìm ra sớm hơn.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): dùng để lập kế hoạch các bản phát hành nhỏ, thường xuyên và các kiểm tra quanh chúng.

## Nguồn chính

- **Continuous delivery** (DORA, dora.dev): định nghĩa, các thực hành khuyến nghị, phát hiện và cạm bẫy của chương trình nghiên cứu.
- **Release Engineering** (*Site Reliability Engineering*, Google, sre.google): thực hành tự phục vụ, build tái lập được và chính sách phát hành được thực thi của một tổ chức.
- **Streamlining change approval** (DORA, dora.dev): hướng dẫn về cách phê duyệt khớp vào giao hàng.
- **Continuous delivery** (Wikipedia): một tổng quan về thực hành và lịch sử của nó.

## Tài liệu tham khảo

1. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
2. Release Engineering — Google SRE book, sre.google — https://sre.google/sre-book/release-engineering/
3. Streamlining change approval — DORA, dora.dev — https://dora.dev/capabilities/streamlining-change-approval/
4. Continuous delivery — Wikipedia — https://en.wikipedia.org/wiki/Continuous_delivery
5. Software deployment — Wikipedia — https://en.wikipedia.org/wiki/Software_deployment
6. Release management — Wikipedia — https://en.wikipedia.org/wiki/Release_management
7. Feature toggle — Wikipedia — https://en.wikipedia.org/wiki/Feature_toggle
8. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
9. Version control — Wikipedia — https://en.wikipedia.org/wiki/Version_control
