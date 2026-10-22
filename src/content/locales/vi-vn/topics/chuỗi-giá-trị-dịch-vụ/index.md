# Chuỗi giá trị dịch vụ

**Chuỗi giá trị dịch vụ là một tập sáu hoạt động mà các nhóm kết hợp theo nhiều thứ tự khác nhau để tạo ra các luồng giá trị, và nó mô tả việc giao hàng liên tục và vận hành dịch vụ khớp vào một dòng chảy thay vì hai dòng riêng biệt.**

## Vì sao điều này quan trọng

Nhiều tổ chức coi xây dựng và vận hành là hai giai đoạn: trước hết một dự án xây dịch vụ, rồi một nhóm vận hành tiếp quản. Lần bàn giao là nơi tri thức bị mất, trách nhiệm mờ đi và khách hàng cảm nhận khoảng trống. Chuỗi giá trị dịch vụ của ITIL 4 được thiết kế để thay bức tranh đó bằng một bức tranh trong đó cùng các hoạt động có thể diễn ra theo bất kỳ thứ tự nào và bao nhiêu lần tùy ý, tùy tình huống.

Điều đó gần với cách các nhóm agile đã làm việc. Trong một tuần, một nhóm có thể lập kế hoạch một tính năng, xây một phần của nó, phát hành, trả lời câu hỏi của khách hàng về nó và sửa một vấn đề tìm thấy trong sản xuất. Mỗi việc đó là một hoạt động khác nhau trong chuỗi. Nhìn chúng như các phần của một dòng chảy giúp nhóm hỏi công việc chờ ở đâu, ai làm mỗi hoạt động và hoạt động nào bị bỏ bê.

Chủ đề này mô tả sáu hoạt động, cách chúng kết hợp thành các luồng giá trị và cách một nhóm agile có thể dùng ý tưởng đó. Các tóm tắt đến từ một nhà cung cấp đào tạo và một nhà cung cấp phần mềm, vì các trang công khai của chủ sở hữu khung đã đọc cho cuốn sách này chỉ nhắc chuỗi giá trị dịch vụ qua loa. Trang của nhà cung cấp phần mềm liệt kê các hoạt động mà không mô tả, nên hãy coi các mô tả dưới đây là những cách đọc được dùng rộng rãi, và kiểm tra các ấn phẩm ITIL 4 để có lời lẽ của chủ sở hữu (xem Chủ đề 2.2 — ITIL).

## Các khái niệm cốt lõi

### Chuỗi nằm ở đâu

Trong hệ thống giá trị dịch vụ, chuỗi là mô hình vận hành ở trung tâm (xem Chủ đề 2.3 — Hệ thống giá trị dịch vụ ITIL). Một trang của nhà cung cấp phần mềm mô tả nó là phần của hệ thống liên quan đến đường ống phân phối hay vòng đời của một sản phẩm hoặc dịch vụ, nhận nhu cầu làm đầu vào và tạo ra giá trị làm đầu ra. Nó cũng lưu ý rằng trong thực tế vòng đời hiếm khi tuyến tính.

### Sáu hoạt động

Bảng nêu từng hoạt động, mục đích mà trang của một nhà cung cấp đào tạo nêu cho nó, và hoạt động đó trông ra sao trong một nhóm agile. Cột bên phải là cách đọc của cuốn sách này.

| Hoạt động | Mục đích, như một nhà cung cấp đào tạo tóm tắt | Nó có thể trông thế nào trong một nhóm agile |
|---|---|---|
| **Lập kế hoạch** | Xác định chính sách, mục tiêu và hướng dẫn cho định hướng của tổ chức, để mọi người chia sẻ hiểu biết về tầm nhìn, hiện trạng và hướng cải tiến | Mục tiêu sản phẩm, lộ trình, lập kế hoạch theo quý và các lựa chọn danh mục đầu tư |
| **Cải tiến** | Liên tục cải thiện dịch vụ, thực hành và quy trình trên mọi hoạt động | Retrospective, rà soát sau sự cố và các hạng mục cải tiến trong backlog |
| **Tương tác** | Tương tác với các bên liên quan để hiểu nhu cầu, cung cấp thông tin, thu thập phản hồi và yêu cầu, và quản lý quan hệ | Nghiên cứu người dùng, sprint review, bàn dịch vụ và các cuộc trò chuyện với khách hàng |
| **Thiết kế và chuyển đổi** | Bảo đảm dịch vụ mới hoặc thay đổi đáp ứng kỳ vọng của các bên liên quan, từ thiết kế đến môi trường chạy thật | Thiết kế một thay đổi, kiểm thử nó và chuẩn bị cho phát hành và hỗ trợ |
| **Thu thập/xây dựng** | Có được hoặc tạo ra các thành phần cần cho dịch vụ, như nguồn lực vật lý, hạ tầng, tri thức hay phần mềm | Phát triển phần mềm, mua một công cụ, chuẩn bị hạ tầng, đào tạo nhân viên |
| **Cung cấp và hỗ trợ** | Cung cấp dịch vụ như đã thỏa thuận và hỗ trợ liên tục để giải quyết vấn đề và đáp ứng yêu cầu | Vận hành dịch vụ, xử lý sự cố và yêu cầu, triển khai các bản phát hành |

### Các hoạt động không phải là các giai đoạn

Trang của nhà cung cấp đào tạo nói các hoạt động "không tuyến tính mà đan xen với nhau và có thể được kết hợp theo nhiều cách để tạo thành nhiều luồng giá trị." Một **luồng giá trị**, theo lời của họ, là một tập hoạt động cụ thể tạo ra và giao một dịch vụ hay sản phẩm nhất định cho khách hàng. Đây là ý tưởng trung tâm. Chuỗi là một thực đơn các hoạt động, và một luồng giá trị là một con đường đi qua nó được chọn cho một mục đích cụ thể.

### Các luồng giá trị minh họa

Các trang đã đọc cho cuốn sách này không đưa ví dụ luồng giá trị nào, nên những ví dụ sau là minh họa của cuốn sách này về cách các hoạt động có thể kết hợp. Chúng không đến từ các ấn phẩm ITIL, và một luồng thật sẽ khác.

| Luồng giá trị | Một con đường có thể qua các hoạt động |
|---|---|
| **Xử lý một sự cố** | Tương tác (người dùng báo) → cung cấp và hỗ trợ (khôi phục dịch vụ) → cải tiến (rà soát và sửa nguyên nhân) |
| **Phát hành một tính năng** | Lập kế hoạch (quyết định mục tiêu) → thiết kế và chuyển đổi (thiết kế, kiểm thử, chuẩn bị hỗ trợ) → thu thập/xây dựng (phát triển) → cung cấp và hỗ trợ (phát hành) → tương tác (nhận phản hồi) → cải tiến |
| **Đáp ứng một yêu cầu truy cập** | Tương tác (nhận yêu cầu) → cung cấp và hỗ trợ (kiểm tra và cấp quyền) → tương tác (xác nhận với người dùng) |
| **Đưa một nhà cung cấp mới vào** | Lập kế hoạch (quyết định nhu cầu) → tương tác (chọn và thống nhất điều khoản) → thu thập/xây dựng (tích hợp) → cung cấp và hỗ trợ (vận hành) → cải tiến (rà soát hiệu suất) |

### Thực hành và chuỗi

Thực hành là các năng lực mà các hoạt động dựa vào. Chẳng hạn quản lý sự cố là một thực hành được dùng trong nhiều luồng giá trị. Các nguồn không đồng ý về mọi chi tiết của việc ánh xạ giữa thực hành và hoạt động, nên hãy tránh một bảng cứng nhắc. Phép thử tốt hơn là một thực hành có đóng góp cho luồng giá trị bạn đang xem xét không (xem Phần 3).

### Luồng giá trị và dòng chảy agile

Tư duy agile và lean đã dùng các luồng giá trị (xem Chủ đề 1.7 — Phát triển phần mềm Lean). Một bản đồ luồng giá trị cho thấy các bước, thời gian và những lần chờ trên một con đường. Ý tưởng của ITIL thêm một từ vựng để phân loại các bước và một lời nhắc rằng con đường bao gồm cả hỗ trợ và cải tiến chứ không chỉ xây dựng. Với công việc số, điều này nối với quản lý luồng giá trị (xem Chủ đề 5.4 — Quản lý luồng giá trị).

### Giới hạn

Các trang đã đọc cho cuốn sách này không đưa phương pháp thiết kế hay chọn các luồng giá trị, và trang của nhà cung cấp phần mềm không giải thích chuỗi liên hệ với cải tiến liên tục thế nào ngoài việc gọi cải tiến là then chốt. Chuỗi là một cách mô tả công việc, không phải một cách quyết định làm thế nào. Giá trị của nó phụ thuộc vào việc bạn có dùng nó để nhìn các dòng chảy thật hay không.

## Thực hành tốt

1. **Chọn một luồng giá trị và vẽ nó.** Chọn một dòng chảy quan trọng với khách hàng, như phát hành một thay đổi hay xử lý một yêu cầu. Liệt kê các bước theo thứ tự, và gắn nhãn mỗi bước với hoạt động gần nhất trong sáu hoạt động.
2. **Đưa hỗ trợ và cải tiến vào bức tranh.** Đừng dừng luồng ở lúc phát hành. Cho thấy điều xảy ra sau đó: xử lý sự cố và học từ chúng.
3. **Tìm các hoạt động còn thiếu.** Nếu một luồng không có bước tương tác, không ai đang nói chuyện với người dùng. Nếu nó không có bước cải tiến, không có gì được học. Hãy thêm chúng ở nơi chúng quan trọng.
4. **Đo thời gian chờ.** Với một luồng, ghi lại công việc chờ bao lâu giữa các hoạt động và nơi nó vượt qua ranh giới nhóm. Lần chờ dài nhất là thứ đầu tiên cần xem xét (xem Chủ đề 5.4 — Quản lý luồng giá trị).
5. **Kết hợp các hoạt động tự do.** Cho phép các luồng khác nhau dùng các con đường khác nhau. Một bản sửa lỗi nhỏ có thể đi thẳng từ cung cấp và hỗ trợ sang thu thập/xây dựng rồi quay lại, không qua bước lập kế hoạch.
6. **Đưa thiết kế và chuyển đổi vào công việc của nhóm.** Đưa ghi chú hỗ trợ, giám sát và đào tạo vào như một phần của xây dựng, không phải một lần bàn giao ở cuối (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).
7. **Biến "tương tác" thành một hoạt động liên tục.** Đừng giới hạn liên hệ với người dùng ở đầu và cuối một dự án. Đưa bàn dịch vụ và phản hồi của khách hàng vào lập kế hoạch.
8. **Nối lập kế hoạch với bằng chứng từ vận hành.** Dùng dữ liệu sự cố và yêu cầu trong các cuộc trò chuyện lập kế hoạch để mục tiêu phản ánh điều người dùng thực sự trải nghiệm (xem Chủ đề 5.1 — Quản lý dịch vụ Agile).
9. **Chỉ định một chủ sở hữu cho mỗi luồng.** Một người nên nói được luồng hoạt động ra sao, và nên có khả năng tập hợp các nhóm để cải tiến nó.
10. **Dùng chuỗi như danh mục kiểm tra khoảng trống.** Khi có gì hỏng, hãy hỏi hoạt động nào yếu: kế hoạch không rõ, tương tác kém, chuyển đổi vội vàng, xây dựng yếu, hỗ trợ lung lay hay không có cải tiến.
11. **Giữ sơ đồ đơn giản.** Một bản phác thô với sáu nhãn là đủ. Nếu bản vẽ cần chú giải, hãy đơn giản hóa.
12. **Rà soát các luồng sau thay đổi.** Khi cấu trúc nhóm, nhà cung cấp hay công cụ thay đổi, hãy kiểm tra các luồng còn hoạt động như đã vẽ không.

## Câu hỏi để thảo luận với nhóm của bạn

**Ba luồng giá trị quan trọng nhất với người dùng của chúng ta là gì, và ai sở hữu từng luồng?**

Mời mọi người nêu các dòng chảy quan trọng nhất, như một người dùng nhận tài khoản mới hay một bản sửa đến sản xuất. So sánh các danh sách. Sự khác biệt cho thấy nhóm có những bức tranh khác nhau về điều quan trọng. Người điều phối có thể hỏi ai có thể trả lời cho từng luồng từ đầu đến cuối. Thường là không ai, và đó là một phát hiện.

**Với một luồng, chúng ta làm tốt hoạt động nào trong sáu hoạt động, và bỏ qua hoạt động nào?**

Vẽ luồng và gắn nhãn các bước. Rồi tìm các hoạt động còn thiếu. Các nhóm thường thấy họ lập kế hoạch và xây dựng tốt, còn tương tác và cải tiến thì kém. Hỏi hoạt động còn thiếu sẽ thêm gì và tốn gì. Chọn một cái để thêm ở quy mô nhỏ.

**Công việc chờ ở đâu giữa các hoạt động, và ai sở hữu lần chờ?**

Đánh dấu các lần bàn giao và ghi các lần chờ điển hình. Nhiều lần chờ nằm ở ranh giới giữa các nhóm. Hỏi lần chờ đó cần thiết, như cho một kiểm tra rủi ro, hay là tai nạn của cách các nhóm được tổ chức. Chọn một lần để rút ngắn.

**Làm sao chúng ta biết người dùng nghĩ gì về những gì chúng ta giao, và nó đổi kế hoạch của chúng ta nhanh đến đâu?**

Lần theo một phản hồi gần đây từ người dùng đến backlog. Đếm các bước. Nếu mất hàng tuần hoặc không bao giờ đến, hoạt động tương tác yếu. Hỏi điều gì sẽ rút ngắn đường đi, như một kênh chung với bàn dịch vụ. Thống nhất một thay đổi.

**Chúng ta làm gì sau một sự cố hoặc một bản phát hành để cải thiện lần sau?**

Xem vài sự cố và bản phát hành gần nhất có một cải tiến được ghi lại không. Nếu không có, hoạt động cải tiến chỉ là không chính thức. Hỏi ai sở hữu các hành động cải tiến và chúng được theo dõi thế nào. Thống nhất một nơi đơn giản để ghi chúng.

**Luồng nào vượt qua ranh giới tổ chức, và ai nói thay cho toàn bộ?**

Liệt kê các luồng liên quan đến nhà cung cấp, các phòng ban khác hoặc khách hàng. Hỏi ai chịu trách nhiệm về dòng chảy từ đầu đến cuối và điều gì xảy ra ở các ranh giới. Một kết quả tốt là chỉ định một người điều phối và một cuộc trò chuyện định kỳ xuyên ranh giới.

## Trong thực tế: một ví dụ agile ITIL

Một nhóm bệnh viện khu vực vận hành một dịch vụ cổng bệnh nhân dùng để đặt lịch hẹn và xem kết quả xét nghiệm. Một nhóm mười người xây dựng và vận hành nó. Nhóm phát hành tính năng mới mỗi hai tuần, nhưng bệnh nhân phàn nàn rằng việc sửa các lỗi được báo mất hàng tháng và họ không nhận được hồi âm cho các tin nhắn phản hồi.

Trưởng bộ phận dịch vụ số nhờ nhóm vẽ luồng giá trị cho một lỗi được báo, từ tin nhắn của bệnh nhân đến bản sửa trong sản xuất. Họ gắn nhãn các bước với sáu hoạt động. Tin nhắn đến qua một biểu mẫu liên hệ (tương tác) và nằm trong hộp thư chung nhiều ngày trước khi có ai phân loại. Một lỗi đã phân loại đi vào cùng backlog với tính năng mới (lập kế hoạch), nơi nó cạnh tranh kém. Một bản sửa được xây dựng (thu thập/xây dựng), kiểm thử và phát hành cùng đợt tính năng tiếp theo (thiết kế và chuyển đổi, cung cấp và hỗ trợ). Không ai báo cho bệnh nhân (tương tác), và không ai ghi lại điều lỗi đã dạy nhóm (cải tiến).

Nhóm thay đổi luồng. Hộp thư chung được kiểm tra hằng ngày theo lịch luân phiên, các lỗi được gắn thẻ và có một làn riêng trong backlog với mục tiêu là bản phát hành tiếp theo, bệnh nhân nhận hồi âm khi tin nhắn đến và một hồi âm nữa khi bản sửa được đưa lên, và mỗi lỗi quá một tháng được bàn tại buổi rà soát hai tuần một lần. Sau hai tháng, thời gian sửa trung vị giảm và phàn nàn của bệnh nhân về sự im lặng giảm. Vấn đề vẫn còn: các lỗi liên quan đến hệ thống hẹn của bệnh viện, do một nhà cung cấp vận hành, vẫn chờ trong hàng đợi của nhà cung cấp, và các tin nhắn hồi âm do lập trình viên viết bằng ngôn ngữ mà một số bệnh nhân thấy khó theo dõi. Nhóm mời nhà cung cấp đến buổi rà soát và nhờ nhóm truyền thông soạn các mẫu ngôn ngữ dễ hiểu.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối thường dành nhiều thời gian nhất cho lập kế hoạch, thiết kế và chuyển đổi, và thu thập/xây dựng. Hãy nhìn ba hoạt động còn lại: bạn tương tác với người dùng thế nào, bạn hỗ trợ những gì bạn phát hành ra sao và bạn cải tiến thế nào. Coi các yêu cầu hỗ trợ và bài học từ sự cố là đầu vào của lập kế hoạch.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành dành nhiều thời gian nhất cho cung cấp và hỗ trợ, và một phần của tương tác. Hãy dùng chuỗi để cho thấy công việc của bạn phụ thuộc vào các hoạt động trước đó, như thiết kế và chuyển đổi, thế nào, và để xin những gì bạn cần từ chúng. Tham gia lập kế hoạch để tri thức vận hành đến được đầu luồng.

### Lãnh đạo và quản trị

Lãnh đạo có thể dùng chuỗi để hỏi dòng chảy bị đứt ở đâu cho các dịch vụ quan trọng. Hãy ủng hộ việc chỉ định chủ sở hữu luồng, và cho họ thẩm quyền tập hợp các nhóm. Tránh biến sáu hoạt động thành sáu phòng ban; mục đích là nối chúng.

### Khách hàng và người dùng

Khách hàng và người dùng tham gia chủ yếu ở hoạt động tương tác, và họ được lợi khi phản hồi đi trọn đường đến kế hoạch và bản sửa. Hãy mong có hồi âm và kết quả nhìn thấy được. Hãy nói với nhà cung cấp luồng nào quan trọng nhất với bạn và những lần chậm trễ nào làm bạn đau.

## Các kiểu thất bại thường gặp

- **Đọc chuỗi như một trình tự.** Các nhóm ép mọi phần công việc đi qua cả sáu hoạt động theo thứ tự. Thay vào đó, chọn các con đường phù hợp với công việc.
- **Vẽ phòng ban, không phải luồng.** Mỗi hoạt động được giao cho một phòng ban và dòng chảy bị mất. Thay vào đó, lần theo một phần công việc xuyên qua chúng.
- **Quên tương tác và cải tiến.** Luồng kết thúc ở lúc phát hành. Thay vào đó, đưa liên hệ với người dùng và việc học vào mọi luồng.
- **Bàn giao thay cho thiết kế và chuyển đổi.** Ghi chú hỗ trợ, giám sát và đào tạo bị để đến cuối. Thay vào đó, xây chúng vào công việc từ đầu.
- **Không có chủ sở hữu luồng.** Không ai nói được luồng hoạt động ra sao. Thay vào đó, chỉ định một chủ sở hữu có thẩm quyền triệu tập các nhóm.
- **Sơ đồ quá chi tiết.** Bản đồ thành một tấm áp phích không ai đọc. Thay vào đó, giữ nó trong một trang và cập nhật khi có gì thay đổi.
- **Coi từ vựng là mục đích.** Các nhóm dành thời gian gắn nhãn chứ không cải tiến. Thay vào đó, chỉ gắn nhãn những gì giúp tìm ra khoảng trống.
- **Dựa vào các tóm tắt thứ cấp.** Mô tả các hoạt động khác nhau giữa các nguồn. Thay vào đó, kiểm tra các ấn phẩm của chủ sở hữu khi cần độ chính xác.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Khả năng nhìn thấy luồng giá trị | Các dòng chảy chỉ được biết không chính thức | Một số luồng được các nhóm của chúng vẽ | Các luồng chính được vẽ với chủ sở hữu | Các luồng được đo về thời gian chờ và kết quả | Các luồng vượt qua ranh giới tổ chức và được cùng cải tiến |
| Phạm vi hoạt động | Lập kế hoạch và xây dựng chiếm ưu thế | Một số nhóm thêm hoạt động tương tác và cải tiến | Cả sáu hoạt động xuất hiện trong các luồng chính | Khoảng trống phạm vi được theo dõi và đóng | Phạm vi được cân bằng giữa các nhóm và nhà cung cấp dựa trên bằng chứng |
| Bàn giao và chuyển đổi | Bàn giao muộn và không được quản lý | Một số nhóm đưa hỗ trợ vào xây dựng | Hỗ trợ, giám sát và đào tạo là một phần của mọi bản phát hành | Vấn đề chuyển đổi được đo và giảm | Chuyển đổi được chia sẻ giữa phân phối, vận hành và nhà cung cấp |
| Phản hồi và cải tiến | Phản hồi đến qua phàn nàn | Một số phản hồi đến backlog | Phản hồi và hạng mục cải tiến được theo dõi với chủ sở hữu | Tác động của cải tiến được kiểm tra | Phản hồi và việc học chảy liên tục giữa các nhóm và khách hàng |

## Danh mục kiểm tra

- [ ] Chúng ta đã vẽ ít nhất một luồng giá trị quan trọng với người dùng.
- [ ] Mỗi bước trong bản vẽ được gắn nhãn với hoạt động chuỗi giá trị gần nhất.
- [ ] Luồng bao gồm tương tác với người dùng và một bước ghi lại các cải tiến.
- [ ] Chúng ta biết công việc chờ ở đâu và bao lâu, ít nhất là đại khái.
- [ ] Công việc thiết kế và chuyển đổi, như giám sát và ghi chú hỗ trợ, là một phần của xây dựng.
- [ ] Một người được chỉ định sở hữu dòng chảy từ đầu đến cuối của luồng.
- [ ] Phản hồi từ người dùng đến backlog và nhận được hồi âm.
- [ ] Dữ liệu sự cố và yêu cầu được dùng trong lập kế hoạch.
- [ ] Luồng được rà soát sau các thay đổi đáng kể.
- [ ] Chúng ta đã kiểm tra ấn phẩm của chủ sở hữu để có định nghĩa chính xác của từng hoạt động.

## Lời nhắc AI

**Mục đích: gắn nhãn các bước của một luồng thật với sáu hoạt động.**

```text
Help me label the steps of a value stream with the six ITIL service value chain activities: plan; improve; engage; design and transition; obtain/build; deliver and support.

The stream (what it delivers and to whom): [describe].
The steps in order, with who does each and how long it waited before it, if known: [paste].

For each step, suggest the closest activity and give one sentence of reasoning using only my text. Then list which of the six activities do not appear, and what that might mean, as questions and not conclusions. Do not invent steps or durations. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: tìm nơi phản hồi bị mất trên đường đến backlog.**

```text
I want to trace how user feedback reaches our backlog.

Where feedback arrives (channels): [list].
What happens to a piece of feedback after it arrives, step by step, with who does each step: [paste].
One recent example, with dates: [paste].

Describe the path in order and identify steps where the feedback could be lost or delayed, using only my text. Suggest three questions for the people involved and one small change to shorten the path. Do not invent causes. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Mục đích: lên kế hoạch một workshop luồng giá trị với nhân viên phân phối và vận hành.**

```text
Plan a 90-minute workshop for [number] people from delivery and operations to draw one value stream: [stream name].

Preparation: they will bring [data, such as dates of recent examples].
Constraints: [for example remote, different time zones].

Give a timed agenda, instructions for drawing the stream step by step, how to label steps with the six value chain activities, a way to mark waits and handovers, and a closing step to agree one change with an owner and date. Keep it free of any particular tool. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: viết một hướng dẫn ngắn về chuỗi giá trị cho thành viên nhóm mới.**

```text
Write a one-page guide to the ITIL service value chain for new team members.

Use only these notes, which I verified: [paste the six activity names and the descriptions you have checked against official sources, plus any examples from our own work].

Include: what the chain is for, one example stream from our work, and three questions a new person can ask to find which activity a task belongs to. Keep the language plain. Do not add claims about ITIL beyond my notes. Mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): dùng để vẽ một luồng, đo thời gian chờ và gắn nhãn các bước của nó.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): dùng để phân tích công việc di chuyển giữa các vai trò thế nào và tìm các vấn đề bàn giao.
- [agile-delivery](../../../../skills/agile-delivery/SKILL.md): dùng để lập kế hoạch cách một nhóm giao hàng theo các bước nhỏ qua các hoạt động xây dựng và phát hành.
- [getting-feedback](../../../../skills/getting-feedback/SKILL.md): dùng để thiết kế các cách thu thập phản hồi từ người dùng cho hoạt động tương tác.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để chạy các buổi rà soát làm cho hoạt động cải tiến thành thật.

## Nguồn chính

- **ITIL 4 Foundation** (PeopleCert): trang của chủ sở hữu nêu chuỗi giá trị dịch vụ trong các chủ đề được học.
- **ITIL service value system** (Purple Griffon): tóm tắt của một nhà cung cấp đào tạo về sáu hoạt động và các luồng giá trị; thứ cấp.
- **The ITIL 4 Service Value System** (ManageEngine): tóm tắt của một nhà cung cấp phần mềm nêu các hoạt động; thứ cấp.
- **Value-stream mapping** (Wikipedia): bối cảnh về kỹ thuật vẽ bản đồ mà thực hành lean dùng để tìm lãng phí.

## Tài liệu tham khảo

1. ITIL 4 Foundation — PeopleCert — https://www.peoplecert.org/browse-certifications/it-governance-and-service-management/ITIL-1/itil-4-foundation-2565
2. ITIL service value system — Purple Griffon (training provider; secondary source) — https://purplegriffon.com/blog/itil-service-value-system
3. The ITIL 4 Service Value System — ManageEngine (software vendor; secondary source) — https://manageengine.com/products/service-desk/itsm/itil-4-service-value-system.html
4. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Value chain — Wikipedia — https://en.wikipedia.org/wiki/Value_chain
7. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
8. Business process management — Wikipedia — https://en.wikipedia.org/wiki/Business_process_management
9. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
