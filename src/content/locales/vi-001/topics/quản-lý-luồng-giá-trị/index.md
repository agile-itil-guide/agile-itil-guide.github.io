# Quản lý luồng giá trị

**Quản lý luồng giá trị nhìn toàn bộ con đường từ yêu cầu đến giá trị, đo công việc chờ ở đâu và cải thiện dòng chảy xuyên các nhóm, vì những chậm trễ lớn nhất trong một tổ chức dịch vụ thường nằm giữa các nhóm, không phải bên trong chúng.**

## Vì sao điều này quan trọng

Hầu hết các nhóm đo công việc của chính mình: số ticket đã đóng, số story đã xong, số thay đổi đã phát hành. Những con số này có thể trông tốt trong khi khách hàng chờ hàng tuần. Lý do là phần lớn thời gian trôi qua của một yêu cầu điển hình dành cho việc chờ, trong hàng đợi, chờ phê duyệt, giữa các nhóm. Một nhóm làm bước của mình nhanh hơn có thể không đổi gì cho người đã đưa yêu cầu.

Tư duy lean có một phương pháp để thấy điều này: bản đồ luồng giá trị, vẽ mọi bước từ lúc bắt đầu một quy trình đến khách hàng và ghi thời gian và khối lượng ở mỗi giai đoạn. ITIL 4 có ý tưởng riêng về luồng giá trị, một tập hoạt động tạo ra và giao một dịch vụ, kết hợp các hoạt động của chuỗi giá trị theo nhiều thứ tự khác nhau (xem Chủ đề 2.6 — Chuỗi giá trị dịch vụ). Hai thứ khớp nhau. Ý tưởng ITIL nói một luồng là gì, còn phương pháp lean cho thấy cách đo và cải thiện một luồng.

Quản lý luồng giá trị vượt ra ngoài một buổi workshop vẽ bản đồ một lần. Nó có nghĩa là quản lý dòng chảy công việc liên tục, với các thước đo chung, một chủ sở hữu có tên và các buổi rà soát định kỳ gồm mọi nhóm trong luồng. Danh sách năng lực của DORA gồm khả năng nhìn thấy công việc trong luồng giá trị và giới hạn công việc đang làm dở, và hướng dẫn của nó về giới hạn mô tả việc làm mọi công việc nhìn thấy được, gồm cả công việc ngoài nhóm. Chủ đề này dựa vào bài viết Wikipedia về vẽ bản đồ luồng giá trị, DORA và Kanban Guide, và nêu rõ nơi các nguồn im lặng.

## Các khái niệm cốt lõi

### Luồng giá trị là gì

Một **luồng giá trị** là chuỗi các bước qua đó một yêu cầu trở thành giá trị được giao. [Bài viết Wikipedia về vẽ bản đồ luồng giá trị](https://en.wikipedia.org/wiki/Value-stream_mapping) mô tả phương pháp là một kỹ thuật quản lý lean phân tích trạng thái hiện tại và thiết kế một trạng thái tương lai cho các sự kiện đưa một sản phẩm hay dịch vụ từ lúc bắt đầu một quy trình đến khách hàng. Trong cách nhìn của ITIL, một luồng giá trị là một tập hoạt động cụ thể tạo ra và giao một dịch vụ hay sản phẩm nhất định cho khách hàng (xem Chủ đề 2.6 — Chuỗi giá trị dịch vụ).

Ví dụ trong một tổ chức dịch vụ: xử lý một sự cố từ lúc báo đến lúc khôi phục, giao một thay đổi từ ý tưởng đến sản xuất, đón một khách hàng mới hoặc đáp ứng một yêu cầu truy cập.

### Vẽ bản đồ luồng giá trị

Bài viết nói bản đồ trực quan tạo ra cho thấy mỗi bước then chốt và định lượng thời gian và khối lượng ở mỗi giai đoạn. Nó mô tả hai bản đồ: một **bản đồ trạng thái hiện tại**, được dựng bằng việc quan sát và theo dõi dòng chảy thật của vật liệu và thông tin, và một **bản đồ trạng thái tương lai**, cho thấy quy trình lý tưởng sau cải tiến. Trạng thái hiện tại phải được dựng trước. Bài viết trích dẫn *Learning to See* của Mike Rother và John Shook (Lean Enterprise Institute, 1999) làm nguồn. Nó liệt kê phát triển phần mềm, phát triển sản phẩm, quản lý dự án và các quy trình hành chính và văn phòng là các lĩnh vực dùng, và nhắc đến hai cách tiếp cận hướng phần mềm của Ali và cộng sự: phân tích artifact phát triển và phân tích luồng thông tin.

Bài viết không định nghĩa thời gian chờ giao, thời gian xử lý hay tỷ lệ hoàn chỉnh và chính xác, không liệt kê ký hiệu và không bàn lời chỉ trích nào. Tuy nhiên, trang của DORA về giao hàng liên tục nhắc đến vẽ bản đồ luồng giá trị như một cách để lộ ra các nút thắt bằng việc so sánh thời gian trôi qua với thời gian tạo giá trị và đo tỷ lệ hoàn chỉnh và chính xác (%C/A). Các thuật ngữ dưới đây là cách dùng phổ biến:

| Thuật ngữ | Ý nghĩa, trong cách dùng phổ biến |
|---|---|
| **Thời gian chờ giao (lead time)** | Tổng thời gian trôi qua từ lúc bắt đầu một yêu cầu đến khi giao |
| **Thời gian xử lý** (hoặc thời gian chạm) | Thời gian ai đó thực sự làm việc trên yêu cầu |
| **Thời gian chờ** | Thời gian yêu cầu nằm nhàn rỗi giữa các bước |
| **Tỷ lệ hoàn chỉnh và chính xác (%C/A)** | Phần công việc đến một bước mà không cần sửa hoặc thiếu thông tin |
| **Hiệu suất dòng chảy** | Thời gian xử lý chia cho thời gian chờ giao, dưới dạng phần trăm |

Hiệu suất dòng chảy là một tỷ lệ đơn giản được tính cho minh họa của cuốn sách này, và các nguồn đã đọc không định nghĩa nó.

### Thước đo dòng chảy

Kanban Guide nêu bốn thước đo dòng chảy (xem Chủ đề 1.5 — Kanban): **công việc đang làm dở** (các hạng mục đã bắt đầu nhưng chưa xong), **thông lượng** (số hạng mục hoàn thành mỗi giai đoạn), **tuổi của hạng mục công việc** (thời gian từ khi một hạng mục chưa xong bắt đầu) và **thời gian chu trình** (thời gian từ đầu đến cuối của một hạng mục đã hoàn thành). Chúng hoạt động ở cấp luồng công việc của một nhóm. Quản lý luồng giá trị áp dụng cùng ý tưởng xuyên các nhóm: đo thời gian trôi qua từ yêu cầu đến khi khách hàng nhận, không phải từ điểm một nhóm đơn lẻ nhận nó.

Các thước đo giao phần mềm của DORA, như thời gian chờ giao của thay đổi, áp dụng cho một lát của luồng, từ commit đến sản xuất (xem Chủ đề 3.4 — Kích hoạt thay đổi). Phần trước đó, từ ý tưởng đến commit, cũng là một phần của luồng giá trị và thường có những lần chờ dài nhất.

### Giới hạn công việc đang làm dở

Trang của DORA về giới hạn công việc đang làm dở (WIP) mô tả chúng là các trần về số hạng mục có thể ở mỗi giai đoạn của một luồng công việc. Nó nói nghiên cứu của DORA chỉ liên hệ giới hạn WIP với hiệu suất giao phần mềm tốt hơn khi kết hợp với các năng lực khác, như hiển thị trực quan và vòng phản hồi từ giám sát, và không đưa kích thước hiệu ứng. Lời khuyên triển khai của nó gồm làm mọi công việc nhìn thấy được, gồm cả công việc ngoài nhóm, đặt mỗi giới hạn theo năng lực nhóm, giữ vững giới hạn và không nâng chúng khi mọi người rảnh, chỉ kéo công việc khi một ô trống mở ra, theo dõi thời gian chờ giao và độ biến thiên của nó, giảm bàn giao, và hạ giới hạn dần dần để lộ ra ràng buộc tiếp theo. Các cạm bẫy nó nêu gồm bỏ qua công việc thượng nguồn và hạ nguồn, dẫn đến tối ưu hóa cục bộ, và đặt giới hạn quá cao.

### Nhìn toàn bộ luồng

Cạm bẫy "tối ưu hóa cục bộ" là cạm bẫy trung tâm. Một luồng có năm nhóm có năm hàng đợi. Nếu một nhóm nhân đôi tốc độ, thời gian chờ giao của luồng có thể hầu như không đổi, vì các nhóm khác vẫn chờ. Quản lý luồng giá trị tìm **ràng buộc**, bước giới hạn cả luồng, và cải thiện nó trước (xem Chủ đề 1.7 — Phát triển phần mềm Lean về tối ưu hóa toàn bộ).

### Quyền sở hữu và quản trị

Một luồng vượt qua các nhóm, nên cần ai đó chịu trách nhiệm cho toàn bộ. Một chủ sở hữu luồng giá trị (hoặc một nhóm nhỏ) giữ bản đồ, các thước đo và danh sách cải tiến, và triệu tập các nhóm. Không có chủ sở hữu, không ai chịu trách nhiệm về luồng, và cải tiến ở lại trong ranh giới nhóm. Điều này nối với quyền sở hữu sản phẩm và dịch vụ (xem Chủ đề 5.5 — Quyền sở hữu sản phẩm và dịch vụ).

### Công cụ

Các công cụ phần mềm cho quản lý luồng giá trị thu thập dữ liệu từ hệ thống ticket, kiểm soát nguồn và pipeline để cho thấy dòng chảy xuyên chuỗi công cụ. Các nguồn đã đọc cho cuốn sách này không bàn về những công cụ đó. Nếu bạn đánh giá bất kỳ cái nào, hãy kiểm tra nó cần dữ liệu gì, chính xác đến đâu và các thước đo có trả lời một câu hỏi bạn có không. Một bản đồ sơ lược vẽ tay cùng các nhóm liên quan là điểm khởi đầu tốt và thường lộ ra nhiều hơn một bảng điều khiển.

### Giới hạn

Bài viết Wikipedia không bàn lời chỉ trích nào, và trang WIP của DORA không đưa kích thước hiệu ứng hay giá trị mục tiêu. Các lưu ý thực tế, được đưa ra như kinh nghiệm, gồm việc vẽ bản đồ mà không bao giờ dẫn đến thay đổi, thước đo bị dùng để xếp hạng các nhóm, và bản đồ vẽ từ trí nhớ của quản lý thay vì quan sát các hạng mục thật.

## Thực hành tốt

1. **Chọn một luồng quan trọng.** Chọn một dòng chảy người dùng quan tâm, như một thay đổi đến sản xuất hay một yêu cầu truy cập. Một luồng hẹp, thật dạy được nhiều hơn một luồng rộng, trừu tượng.
2. **Vẽ từ các hạng mục thật.** Theo vài hạng mục gần đây từ đầu đến cuối, và ghi ngày thực tế, không phải tài liệu quy trình. Quan sát thắng hồi tưởng, như sự nhấn mạnh của bài viết về quan sát và theo dõi dòng chảy thật gợi ý.
3. **Ghi thời gian và thời gian chờ ở mỗi bước.** Với mỗi bước, ghi thời gian làm việc và thời gian chờ trước nó. Những lần chờ thường là câu chuyện.
4. **Gồm mọi người trong luồng.** Mời những người từ mọi nhóm chạm vào hạng mục, gồm người phê duyệt và nhà cung cấp. Vẽ cùng nhau, để không ai bất ngờ với kết quả.
5. **Tính thời gian chờ giao, thời gian xử lý và hiệu suất dòng chảy.** So sánh thời gian trôi qua với thời gian làm việc và xem bao nhiêu là chờ. Dùng các con số để bắt đầu cuộc trò chuyện.
6. **Nhìn độ chính xác.** Hỏi công việc đến một bước thiếu hoặc sai bao nhiêu lần, đòi làm lại. Một bước có tỷ lệ hoàn chỉnh và chính xác thấp gây chậm trễ ở hạ nguồn.
7. **Tìm ràng buộc.** Xác định bước giới hạn cả luồng và cải thiện nó trước. Cải thiện các bước khác cho ít lợi ích.
8. **Vẽ trạng thái tương lai.** Thiết kế một luồng tốt hơn cùng các nhóm, không phải một luồng lý tưởng, và chọn một hoặc hai thay đổi đầu tiên. Thống nhất chủ sở hữu và ngày.
9. **Giới hạn công việc đang làm dở.** Đặt trần cho cái mỗi giai đoạn giữ, đặt giới hạn theo năng lực, giữ chúng khi mọi người rảnh và hạ dần, như hướng dẫn của DORA mô tả.
10. **Làm công việc nhìn thấy được.** Cho thấy luồng trên một bảng hoặc bản đồ chung gồm công việc ngoài bất kỳ nhóm nào. Cập nhật khi các hạng mục di chuyển.
11. **Chỉ định một chủ sở hữu luồng.** Chọn một người chịu trách nhiệm về hiệu suất của luồng, có thể triệu tập các nhóm và đưa cải tiến lên lãnh đạo.
12. **Rà soát đều đặn.** Tổ chức một buổi rà soát ngắn hằng tháng về thời gian chờ giao, các lần chờ và danh sách cải tiến. Vẽ lại bản đồ sau các thay đổi đáng kể.

## Câu hỏi để thảo luận với nhóm của bạn

**Nếu chúng ta theo một yêu cầu từ lần liên hệ đầu tiên đến khi khách hàng nhận, mất bao lâu, và bao nhiêu phần đó là thời gian làm việc?**

Chọn một hạng mục gần đây và thu thập ngày. Mời mọi người đoán đáp án trước khi xem. Phỏng đoán thường lạc quan. Tính tỷ lệ thời gian làm việc. Người điều phối có thể hỏi lần chờ lớn nhất xảy ra ở đâu và ai sở hữu. Chọn nó làm mục tiêu đầu tiên.

**Ai trong luồng mà chúng ta chưa bao giờ nói chuyện?**

Liệt kê các nhóm, người phê duyệt và nhà cung cấp mà một hạng mục chạm vào. Đánh dấu những bên nhóm chưa từng gặp. Hỏi mời họ đến một buổi vẽ bản đồ sẽ được gì. Các câu trả lời điển hình: hiểu vì sao họ chờ, hoặc họ cần gì để làm nhanh hơn. Mời một bên.

**Chúng ta bàn giao cái gì chưa hoàn chỉnh, và nhận cái gì chưa hoàn chỉnh?**

Xin ví dụ về công việc quay lại để làm lại. Ghi lại lần bàn giao nào gây ra nhiều lần quay lại nhất và thiếu gì. Đây là ý tưởng tỷ lệ hoàn chỉnh và chính xác bằng lời đơn giản. Thống nhất một danh mục kiểm tra ngắn cho một lần bàn giao.

**Ràng buộc trong luồng của chúng ta ở đâu, và điều gì xảy ra nếu chúng ta tăng tốc thứ khác?**

Bàn bước nào có hàng đợi dài nhất. Hỏi điều gì xảy ra với thời gian từ đầu đến cuối nếu một bước khác nhanh gấp đôi. Điểm là để thấy cải thiện một bước không phải ràng buộc đổi rất ít. Chọn làm việc trên ràng buộc.

**Mỗi nhóm đang làm bao nhiêu việc cùng lúc, và điều gì xảy ra nếu chúng ta đặt trần?**

Đếm công việc đang làm dở mỗi nhóm. Bàn việc ngừng bắt đầu nghĩa là gì. Nỗi sợ điển hình: điều gì đó quan trọng sẽ chờ. Lợi ích điển hình: mọi thứ được hoàn thành. Thống nhất một trần thử nghiệm cho một nhóm và một cách đánh giá kết quả.

**Ai chịu trách nhiệm về luồng này như một tổng thể?**

Hỏi nhóm nêu tên người. Nếu không ai, hãy bàn ai có thể, và họ cần thẩm quyền gì. Người điều phối có thể lưu ý rằng cải tiến xuyên nhóm hiếm khi xảy ra nếu không có chủ sở hữu. Đề xuất một cái tên và đưa nó đến lãnh đạo liên quan.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan quản lý môi trường quốc gia cấp giấy phép cho các nhà vận hành công nghiệp. Người nộp đơn phàn nàn rằng một giấy phép điển hình mất khoảng bốn tháng, và nhóm dịch vụ số mười hai người của cơ quan được yêu cầu làm nhanh hơn. Nhóm đã xây một biểu mẫu nộp đơn trực tuyến nhanh hơn, nhưng thời gian trôi qua hầu như không đổi.

Trưởng nhóm triệu tập những người từ mọi phần của luồng: nhóm tiếp nhận đơn, hai người rà soát kỹ thuật, một cán bộ pháp lý, văn phòng phí và nhóm cấp tài liệu giấy phép. Họ vẽ bản đồ sáu giấy phép gần đây từ ngày nộp đến ngày giấy phép đến tay người nộp đơn. Kết quả thật đáng suy ngẫm. Tổng thời gian khoảng 110 ngày, và thời gian làm việc khoảng 12. Lần chờ dài nhất ở hàng đợi rà soát kỹ thuật, nơi các đơn chờ trung bình 40 ngày trước khi ai đó mở, và khoảng một phần ba số đơn đến với thông tin còn thiếu phải được yêu cầu lại. Văn phòng phí và nhóm tài liệu mỗi nơi thêm một tuần chờ cho việc xử lý theo lô.

Nhóm thống nhất ba thay đổi. Biểu mẫu trực tuyến kiểm tra các mục thường thiếu trước khi nộp. Nhóm rà soát kỹ thuật đặt một giới hạn công việc đang làm dở và một quy tắc mở mọi đơn trong vòng năm ngày làm việc để kiểm tra tính đầy đủ. Văn phòng phí và nhóm tài liệu chuyển từ lô hằng tuần sang xử lý hằng ngày. Họ chỉ định trưởng dịch vụ số làm chủ sở hữu luồng và rà soát thời gian chờ giao hằng tháng. Sau ba tháng, thời gian chờ giao trung vị khoảng 70 ngày, và tỷ lệ đơn bị trả lại vì thiếu thông tin giảm. Một số vấn đề vẫn còn. Nhóm rà soát nói giới hạn làm khó xử lý các đơn lớn, phức tạp, và cán bộ pháp lý là một điểm chậm trễ đơn lẻ mà không ai đã đếm. Chủ sở hữu luồng nhờ nhóm rà soát tách các trường hợp phức tạp thành một làn riêng, và làm việc với văn phòng pháp lý về người rà soát thứ hai.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối chỉ thấy một phần của luồng. Hãy tham gia các buổi vẽ bản đồ, chia sẻ dữ liệu của bạn, và nhìn điều xảy ra trước khi công việc đến bạn và sau khi bạn phát hành. Coi thời gian chờ giao của luồng là mục tiêu chung, không chỉ bước của riêng bạn.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thường giữ những hàng đợi dài nhất: truy cập, phê duyệt, môi trường, hỗ trợ. Hãy cởi mở về năng lực và các ràng buộc của bạn. Dùng bản đồ để xin các nhóm thượng nguồn đầu vào đầy đủ và để giải thích ưu tiên của bạn.

### Lãnh đạo và quản trị

Lãnh đạo có thể gỡ các ràng buộc xuyên nhóm mà các nhóm không gỡ được. Hãy chỉ định chủ sở hữu luồng, đòi thời gian chờ giao từ đầu đến cuối và phản hồi các cải tiến bản đồ gợi ý. Tránh dùng thước đo luồng để xếp hạng các nhóm, điều làm nản dữ liệu trung thực.

### Khách hàng và người dùng

Khách hàng và người dùng trải nghiệm cả luồng. Hãy nói với nhóm những chậm trễ làm bạn đau ở đâu, cung cấp thông tin đầy đủ từ đầu, và tham gia một buổi vẽ bản đồ nếu được mời. Cái nhìn của bạn về lúc yêu cầu thực sự kết thúc là điểm cuối thật của luồng.

## Các kiểu thất bại thường gặp

- **Tối ưu hóa một nhóm đơn lẻ.** Một lợi ích cục bộ không đổi gì từ đầu đến cuối. Thay vào đó, tìm và xử lý ràng buộc.
- **Vẽ bản đồ từ trí nhớ.** Bản đồ phản ánh điều các quản lý tin. Thay vào đó, theo dõi các hạng mục thật với ngày thật.
- **Thiếu tiếng nói.** Nhà cung cấp và người phê duyệt không có mặt trong phòng. Thay vào đó, gồm mọi nhóm trong luồng.
- **Bản đồ mà không có thay đổi.** Tấm áp phích treo trên tường. Thay vào đó, thống nhất một hoặc hai thay đổi với chủ sở hữu trước khi buổi họp kết thúc.
- **Không có chủ sở hữu.** Không ai chịu trách nhiệm về luồng. Thay vào đó, chỉ định một chủ sở hữu luồng có thẩm quyền triệu tập.
- **Thước đo như bảng xếp hạng.** Các nhóm giấu thời gian chờ. Thay vào đó, dùng thước đo để hiểu luồng và bàn chúng cởi mở.
- **Giới hạn dịch chuyển.** Giới hạn WIP được nâng bất cứ khi nào mọi người rảnh. Thay vào đó, giữ giới hạn và sửa nguyên nhân, như DORA khuyên.
- **Công cụ trước.** Một bảng điều khiển được mua trước khi biết câu hỏi. Thay vào đó, bắt đầu với một bản đồ vẽ tay và thêm công cụ khi cần.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Nhìn luồng | Dòng chảy được đánh giá bằng cảm giác | Một số nhóm vẽ các bước của mình | Các luồng chính được vẽ từ đầu đến cuối từ hạng mục thật, cùng mọi nhóm | Thời gian chờ giao, các lần chờ và độ chính xác được đo và rà soát | Luồng được vẽ và đo xuyên các tổ chức và nhà cung cấp |
| Cải thiện dòng chảy | Các nhóm tăng tốc bước của riêng mình | Một số thay đổi xuyên nhóm được thử | Một danh sách cải tiến tập trung vào ràng buộc cho mỗi luồng với chủ sở hữu | Cải tiến gắn với thời gian chờ giao đã đo và được kiểm tra | Cải tiến luồng là thường quy và chia sẻ giữa các luồng |
| Giới hạn và khả năng nhìn thấy | Công việc đang làm dở không giới hạn và bị ẩn | Một số nhóm dùng bảng và giới hạn | Công việc nhìn thấy được xuyên các nhóm với giới hạn đã thống nhất | Giới hạn được tinh chỉnh bằng dữ liệu thời gian chờ giao | Giới hạn và khả năng nhìn thấy được điều phối giữa các luồng |
| Quyền sở hữu và quản trị | Không ai sở hữu luồng | Có những người điều phối không chính thức | Mỗi luồng chính có chủ sở hữu có tên và rà soát định kỳ | Chủ sở hữu chịu trách nhiệm về kết quả đã đo | Chủ sở hữu cộng tác giữa các luồng để tối ưu hóa toàn bộ |

## Danh mục kiểm tra

- [ ] Chúng ta đã chọn một luồng quan trọng và vẽ nó từ các hạng mục thật.
- [ ] Bản đồ cho thấy thời gian làm việc và thời gian chờ ở mỗi bước.
- [ ] Những người từ mọi nhóm trong luồng đã tham gia vẽ bản đồ.
- [ ] Chúng ta biết thời gian chờ giao từ đầu đến cuối và bao nhiêu là chờ.
- [ ] Chúng ta đã xác định ràng buộc và chọn một hoặc hai thay đổi.
- [ ] Công việc đang làm dở nhìn thấy được xuyên các nhóm, với giới hạn đã thống nhất ở các giai đoạn chính.
- [ ] Một người có tên sở hữu luồng.
- [ ] Một buổi rà soát định kỳ ngắn xem thời gian chờ giao, các lần chờ và danh sách cải tiến.
- [ ] Chúng ta theo dõi công việc đến một lần bàn giao không đầy đủ bao nhiêu lần.
- [ ] Thước đo luồng không được dùng để xếp hạng các nhóm.

## Lời nhắc AI

**Mục đích: tính thời gian chờ giao và hiệu suất dòng chảy từ các hạng mục thật.**

```text
I have timing data for [number] recent items in the stream [name]. For each item and each step I have the date work began and ended, and the date it arrived at the step: [paste a table with real dates, step names, and the team responsible].

Using only my dates, calculate for each item the total lead time, the working time (end minus begin for each step), the waiting time (arrival at a step minus the end of the previous step), and the flow efficiency (working time divided by lead time). Show the average and range across items, and the three longest waits by team and step. Do not invent numbers. If dates are missing, say what to collect. List what you are unsure of.
```

**Mục đích: lập kế hoạch một workshop vẽ bản đồ luồng giá trị.**

```text
Plan a 2-hour value stream mapping workshop for the stream [name].

Participants: [roles and teams].
Data to bring (real dates for [number] recent items): [describe what exists].
Constraints: [for example remote].

Provide a timed agenda: agree the start and end of the stream, walk through real items, mark steps with working time and waiting time, record rework and incomplete handovers, identify the constraint, draw a future state, and agree one or two changes with owners and dates. Include prompts to keep the conversation on the system. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: phân tích chất lượng bàn giao giữa hai nhóm.**

```text
Teams A and B hand work over in the stream [name]. Here are examples of items that came back for rework or information, with reason: [paste, one per line].

Group the reasons into categories using only the text. Count items per category from my list. For the top two categories, suggest an item for a handover checklist that team A could use, and a question for team B. Do not infer causes beyond the text. List what you are unsure of.
```

**Mục đích: thiết kế một thử nghiệm giới hạn công việc đang làm dở.**

```text
Design a four-week trial of work-in-process limits for [team] working in [stream or stage].

Current items in progress per person or stage: [paste real counts].
Lead time data we have: [describe].
Capacity, in people: [number].

Propose limits for each stage based on capacity, how to show work and age on a board, rules for pulling work, what to do when someone is idle (without raising limits), what to measure (leave targets as [to be agreed]), and what would make us stop. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): dùng để vẽ một luồng, ghi thời gian và tìm ràng buộc.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): dùng để nghiên cứu công việc di chuyển giữa các vai trò thế nào và chờ ở đâu.
- [kanban](../../../../skills/kanban/SKILL.md): dùng để thiết lập trực quan hóa và giới hạn công việc đang làm dở cho luồng.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): dùng để hiểu cái gì chảy vào luồng và với khối lượng bao nhiêu.
- [portfolio-management](../../../../skills/portfolio-management/SKILL.md): dùng để quyết định luồng và sáng kiến nào đáng được đầu tư.

## Nguồn chính

- **Value-stream mapping** (Wikipedia): định nghĩa bản đồ trạng thái hiện tại và tương lai và một chỉ dẫn đến *Learning to See*.
- **Work in process limits** (DORA, dora.dev): hướng dẫn đặt và giữ giới hạn và tránh tối ưu hóa cục bộ.
- **The Kanban Guide** (kanbanguides.org): định nghĩa bốn thước đo dòng chảy.
- **Lean software development** (Wikipedia): các lãng phí và nguyên tắc đứng sau tư duy luồng giá trị.

## Tài liệu tham khảo

1. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
2. Work in process limits — DORA, dora.dev — https://dora.dev/capabilities/wip-limits/
3. Continuous delivery — DORA, dora.dev — https://dora.dev/capabilities/continuous-delivery/
4. The Kanban Guide — John Coleman, Daniel Vacanti, and contributors, kanbanguides.org — https://kanbanguides.org/english/
5. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
6. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Theory of constraints — Wikipedia — https://en.wikipedia.org/wiki/Theory_of_constraints
9. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
