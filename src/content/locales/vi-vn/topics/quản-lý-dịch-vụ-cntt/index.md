# Quản lý dịch vụ CNTT

**Quản lý dịch vụ CNTT (ITSM) là ngành thực hành thiết kế, cung cấp, vận hành và cải tiến các dịch vụ CNTT xoay quanh điều khách hàng cần, và các nhóm agile vận hành dịch vụ đã đang làm điều đó, dù có dùng cái tên này hay không.**

## Vì sao điều này quan trọng

Khi một nhóm phát hành phần mềm rồi vận hành nó, nhóm đó trở thành nhà cung cấp dịch vụ. Người dùng phụ thuộc vào nó, mong nó sẵn sàng và muốn được giúp khi nó hỏng. ITSM là tập hợp thực hành đã lớn lên quanh mối quan hệ đó. Những nhóm bỏ qua nó thường khám phá lại nó theo cách đau đớn: bị gọi trực vào ban đêm, mất dấu những gì đã thay đổi, hoặc tranh cãi với khách hàng về điều đã hứa.

ITSM mang tiếng là quy trình nặng nề, và một phần tiếng đó là xứng đáng. Ngược lại, các nhóm agile mang tiếng là chạy nhanh và để vận hành lo hậu quả. Cả hai tiếng đó mô tả những thất bại, không phải ý định của mỗi lĩnh vực. ITSM hỏi khách hàng cần gì từ một dịch vụ và nhà cung cấp sẽ cung cấp và cải tiến nó thế nào. Đó cũng là câu hỏi các nhóm agile quan tâm.

Chủ đề này đưa ra từ vựng dùng trong phần còn lại của cuốn sách: dịch vụ là gì, khách hàng và người dùng là ai, ITSM bao gồm những gì, và các khung chính của nó đến từ đâu. Nó dùng [bài viết Wikipedia về quản lý dịch vụ CNTT](https://en.wikipedia.org/wiki/IT_service_management) làm bản đồ. Bài viết đó ngắn và liệt kê các khung nhiều hơn là giải thích chúng, nên chủ đề này thêm phần diễn giải thực tế và chỉ ra chỗ nào nó làm vậy.

## Các khái niệm cốt lõi

### ITSM là gì

Bài viết Wikipedia định nghĩa ITSM là tập các hoạt động một tổ chức thực hiện để thiết kế, xây dựng, cung cấp, vận hành và kiểm soát các dịch vụ CNTT được đưa đến khách hàng. Nó đối chiếu ITSM với các cách tiếp cận hướng công nghệ như quản lý mạng và quản lý hệ thống. ITSM, nó nói, theo cách tiếp cận quy trình, tập trung vào nhu cầu khách hàng thay vì hệ thống, và nhấn mạnh cải tiến liên tục.

Bài viết trích dẫn một khảo sát năm 2017 của CIO WaterCooler báo cáo rằng các doanh nghiệp dùng ITSM chủ yếu để hỗ trợ trải nghiệm khách hàng (35%) và chất lượng dịch vụ (48%). Đó là một khảo sát, và mẫu của nó không được mô tả trong bài viết, nên hãy coi các con số như minh họa cách người thực hành mô tả mục tiêu của họ chứ không phải thước đo mức phổ biến của từng mục tiêu.

### Dịch vụ, khách hàng và người dùng

Một **dịch vụ** là cách đem lại giá trị cho người khác mà họ không phải sở hữu chi phí và rủi ro. Thanh toán trực tuyến của một ngân hàng, đặt lịch hẹn của một bệnh viện và kho lưu trữ tệp chung của một công ty đều là dịch vụ. Bài viết phân biệt **người dùng**, người dùng dịch vụ, với **khách hàng**, người trả tiền hoặc đặt hàng cho nó. Trong CNTT nội bộ của một công ty, khách hàng có thể là trưởng một đơn vị kinh doanh và người dùng là nhân viên của đơn vị đó. Trong một dịch vụ công, khách hàng có thể là một bộ và người dùng là công dân. Hai nhóm này có nhu cầu khác nhau, và một nhà cung cấp chỉ lắng nghe khách hàng có thể bỏ lỡ điều người dùng trải nghiệm.

### Các hoạt động ITSM điển hình

Bài viết nêu vài ý tưởng cốt lõi, và thực hành ITSM chuẩn thêm những ý khác. Cùng nhau chúng cho một hình dạng dễ nhận ra:

| Hoạt động | Dùng để làm gì | Cuốn sách này bàn ở đâu |
|---|---|---|
| **Bàn dịch vụ** | Một đầu mối liên hệ duy nhất giữa nhà cung cấp và người dùng; xử lý sự cố và yêu cầu dịch vụ | Chủ đề 3.1 — Bàn dịch vụ |
| **Xử lý sự cố** | Khôi phục dịch vụ khi có điều gì làm gián đoạn hoặc đe dọa nó | Chủ đề 3.2 — Quản lý sự cố |
| **Yêu cầu dịch vụ** | Cung cấp những thứ thường lệ người dùng xin, như quyền truy cập hoặc thiết bị | Chủ đề 3.6 — Quản lý yêu cầu dịch vụ |
| **Vấn đề và thay đổi** | Tìm và sửa nguyên nhân gốc, và kiểm soát các sửa đổi lên dịch vụ | Chủ đề 3.3 — Quản lý vấn đề và Chủ đề 3.4 — Kích hoạt thay đổi |
| **Mức dịch vụ và danh mục** | Thống nhất điều được cung cấp và tốt đến mức nào | Chủ đề 3.7 — Quản lý mức dịch vụ và Chủ đề 3.8 — Quản lý danh mục dịch vụ |
| **Cải tiến liên tục** | Làm dịch vụ tốt hơn theo thời gian | Chủ đề 3.15 — Cải tiến liên tục |

Bài viết định nghĩa **sự cố** là một sự gián đoạn hoặc gián đoạn tiềm tàng đối với tính sẵn sàng hay chất lượng dịch vụ, và **yêu cầu dịch vụ** là một yêu cầu thường lệ về một dịch vụ. Nó chỉ nhắc **thỏa thuận mức dịch vụ (SLA)** qua loa, nên cuốn sách giải thích chúng trong Chủ đề 3.7 — Quản lý mức dịch vụ.

### Quản lý dịch vụ doanh nghiệp và tự động hóa

Bài viết nêu hai phần mở rộng. **Quản lý dịch vụ doanh nghiệp (ESM)** áp dụng các công cụ và ý tưởng ITSM cho các phần khác của doanh nghiệp, như nhân sự hay cơ sở vật chất, vốn cũng nhận yêu cầu và cung cấp dịch vụ. **Tự động hóa quy trình CNTT** thay các bước thủ công thường lệ bằng các bước tự động để nhân viên có thể tập trung vào công việc ưu tiên cao hơn. Cả hai đều quan trọng với các nhóm agile: ESM cho thấy ngành thực hành này không gắn với CNTT, và tự động hóa là cách các nhóm nhỏ theo kịp khối lượng.

### Các khung và tiêu chuẩn

Bài viết liệt kê nhiều khung và tiêu chuẩn. Danh sách dưới đây nhắc lại các mô tả một dòng của nó và được mở rộng trong Chủ đề 2.7 — Các khung và tiêu chuẩn ITSM.

| Tên | Bài viết nói gì |
|---|---|
| [ITIL](https://en.wikipedia.org/wiki/ITIL) | Các thực hành chi tiết cho ITSM và quản lý tài sản CNTT, căn chỉnh CNTT với mục tiêu kinh doanh |
| [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000) | Một tiêu chuẩn quốc tế cho hệ thống quản lý dịch vụ, theo đó một tổ chức có thể được chứng nhận |
| [COBIT](https://en.wikipedia.org/wiki/COBIT) | Một khung quản trị CNTT với các mục tiêu kiểm soát, chỉ số và mô hình trưởng thành |
| [FitSM](https://en.wikipedia.org/wiki/FitSM) | Một tiêu chuẩn nhẹ, phần lớn căn chỉnh với ISO/IEC 20000 |
| [CMMI](https://en.wikipedia.org/wiki/CMMI) | Một mô hình để thiết lập, quản lý và cải tiến dịch vụ |
| [TOGAF](https://en.wikipedia.org/wiki/TOGAF) | Một khung nối mục tiêu kinh doanh với mục tiêu kiến trúc |
| [Microsoft Operations Framework](https://en.wikipedia.org/wiki/Microsoft_Operations_Framework) | Hướng dẫn quản lý dịch vụ dựa trên công nghệ của Microsoft |
| [Application Services Library](https://en.wikipedia.org/wiki/Application_Services_Library) | Một khung cho quản lý ứng dụng chuyên nghiệp |
| [Business Information Services Library](https://en.wikipedia.org/wiki/Business_Information_Services_Library) | Một khung thực hành tốt nhất cho quản lý thông tin |
| Business Process Framework (eTOM) | Một khung quy trình cho các nhà cung cấp viễn thông |

Bài viết thêm rằng các khung ITSM đã dựa trên ISO 9000, ISO/IEC 27000 và CMMI, và rằng ITIL phiên bản 2 và BS 15000, tiền thân của ISO/IEC 20000, được căn chỉnh với nhau. Nó cũng mô tả USM, một hệ thống quản lý dựa trên nguyên tắc được chính phủ Hà Lan áp dụng.

### Bài viết không bao gồm gì

Bài viết không có phần lịch sử, không có lời phê bình và không nhắc đến agile hay DevOps. Sự im lặng đó có ý nghĩa. ITSM đã bị chỉ trích vì chi phí quy trình và thay đổi chậm, và các nhóm agile đã bị chỉ trích vì bỏ bê vận hành, nhưng bạn sẽ không thấy lời chỉ trích nào ở đó. Cuốn sách này bù khoảng trống ở Phần 5, bắt đầu với Chủ đề 5.1 — Quản lý dịch vụ Agile. Khi chủ đề này nhắc đến vấn đề, nó dựa vào các nguồn khác của cuốn sách và vào kinh nghiệm thực tế, và nói rõ như vậy.

### ITSM và ITAM

Bài viết về ITIL mô tả ITIL bao gồm cả ITSM và quản lý tài sản CNTT (ITAM). ITAM là ngành thực hành biết một tổ chức có những tài sản CNTT nào, chúng tốn bao nhiêu và được dùng ra sao. Dịch vụ phụ thuộc vào tài sản, và hai ngành chia sẻ thông tin, đó là lý do Phần 4 theo sát ITSM (xem Chủ đề 4.1 — Quản lý tài sản CNTT).

## Thực hành tốt

1. **Định nghĩa dịch vụ của bạn từ phía khách hàng.** Liệt kê những gì khách hàng và người dùng thực sự dùng, bằng lời của họ, như "đăng nhập", "đặt lịch hẹn" và "gửi hóa đơn". Nhóm công nghệ đằng sau mỗi cái lại. Đây là điểm bắt đầu của một danh mục dịch vụ (ITIL viết là "service catalogue"; xem Chủ đề 3.8 — Quản lý danh mục dịch vụ).
2. **Gọi tên ai là khách hàng và người dùng.** Với mỗi dịch vụ, viết ra ai trả tiền hoặc đặt hàng nó và ai dùng nó. Nếu họ là những người khác nhau, hãy kiểm tra cả hai nhóm đều có tiếng nói.
3. **Cho mỗi dịch vụ một chủ sở hữu.** Chỉ định một người chịu trách nhiệm về việc dịch vụ hoạt động và cải tiến theo thời gian ra sao. Không có chủ sở hữu, các vấn đề của dịch vụ không phải việc của ai.
4. **Bắt đầu với các hoạt động gây đau nhất.** Nếu ngừng hoạt động là nỗi đau, hãy tăng cường xử lý sự cố trước. Nếu không ai biết điều gì đã thay đổi, bắt đầu với bản ghi thay đổi. Đừng triển khai mọi thực hành ITSM cùng lúc.
5. **Dùng một cửa trước duy nhất.** Cho người dùng một nơi để xin giúp đỡ và gửi yêu cầu, và làm cho nó dễ dàng. Một bàn dịch vụ khó liên hệ sẽ bị đi vòng, và rồi bạn mất thông tin mà ITSM phụ thuộc vào.
6. **Tách sự cố khỏi yêu cầu và khỏi vấn đề.** Sự cố là một sự gián đoạn, yêu cầu là một đề nghị thường lệ và vấn đề là một nguyên nhân gốc. Các hàng đợi lẫn lộn che giấu mẫu hình và làm sai lệch các thước đo.
7. **Ghi những gì quan trọng và không hơn.** Giữ bản ghi về sự cố, thay đổi và tài sản mà bạn sẽ dùng để ra quyết định. Xóa các trường không ai đọc. Bản ghi là một chi phí, và bạn phải nói được mỗi bản ghi để làm gì.
8. **Chọn khung theo vấn đề, không theo mốt.** Dùng ITIL, ISO/IEC 20000, COBIT hay các mô hình nhẹ hơn như nguồn ý tưởng cho vấn đề bạn có. Áp dụng những phần giúp ích và nói rõ phần bạn bỏ.
9. **Tự động hóa việc thường lệ.** Tìm các bước lặp lại, như đặt lại mật khẩu và cấp quyền truy cập, và tự động hóa chúng một cách cẩn thận. Định kỳ rà soát các hành động tự động để chúng không lệch khỏi nhu cầu người dùng.
10. **Đo điều khách hàng cảm nhận.** Theo dõi tính sẵn sàng, thời gian khôi phục dịch vụ và mức hài lòng của người dùng trước khi đếm hoạt động nội bộ. Hãy dùng khảo sát từ bài viết Wikipedia như lời nhắc rằng những người thực hành đã gọi trải nghiệm khách hàng và chất lượng là các mục tiêu chính.
11. **Nhìn ra ngoài CNTT.** Nếu các phần khác của tổ chức xử lý yêu cầu kém, hãy cân nhắc công cụ và thực hành chung qua quản lý dịch vụ doanh nghiệp. Đừng áp từ vựng của CNTT lên họ.
12. **Cải tiến liên tục.** Dành thời gian đều đặn để rà soát điều gì đang hiệu quả, dùng dữ liệu sự cố và yêu cầu, và để thực hiện các thay đổi nhỏ (xem Chủ đề 3.15 — Cải tiến liên tục).

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta cung cấp những dịch vụ nào, bằng lời mà người dùng của chúng ta sẽ dùng?**

Mời mỗi người viết ba thứ người dùng dựa vào chúng ta nhiều nhất. So sánh các danh sách. Sự khác biệt thường cho thấy nhóm có những bức tranh khác nhau về dịch vụ, hoặc mô tả dịch vụ theo công nghệ thay vì theo cách dùng. Người điều phối có thể hỏi dịch vụ nào không có chủ sở hữu rõ ràng. Tiếp theo, thống nhất một danh sách dịch vụ đầu tiên.

**Ai là khách hàng và ai là người dùng của dịch vụ chính của chúng ta, và họ có muốn cùng những điều không?**

Gọi tên người đặt hàng hoặc trả tiền và những người dùng. Hỏi mỗi bên muốn gì từ dịch vụ. Trong CNTT nội bộ, khách hàng có thể quan tâm đến chi phí và rủi ro, còn người dùng quan tâm đến tốc độ và sự dễ dàng. Hỏi họ xung đột ở đâu và nhóm biết điều đó thế nào. Chọn một xung đột để trao đổi với những con người thật.

**Người dùng đi đâu khi cần giúp đỡ, và có bao nhiêu con đường?**

Đếm các cách: một cổng thông tin, một số điện thoại, email, chat, bàn làm việc của một đồng nghiệp. Hỏi người dùng thích con đường nào và vì sao. Nhiều con đường không chính thức nghĩa là một phần nhu cầu vô hình. Cuộc thảo luận nên kết thúc bằng quyết định giữ con đường nào, gộp con đường nào, và nắm bắt thế nào những gì đến qua các con đường không chính thức.

**Chúng ta phân biệt sự cố với yêu cầu với vấn đề tốt đến đâu, và điều gì xảy ra khi chúng ta trộn lẫn chúng?**

Lấy mười ticket gần đây và phân loại chúng. Bất đồng cho thấy định nghĩa khác nhau trong nhóm. Hỏi các danh mục lẫn lộn làm gì với báo cáo và ưu tiên. Chẳng hạn, nhiều yêu cầu trong hàng đợi sự cố có thể làm việc xử lý sự cố trông chậm. Thống nhất các định nghĩa đơn giản và ví dụ.

**Thực hành ITSM nào chúng ta còn thiếu hoặc chỉ làm trên giấy?**

Liệt kê các thực hành trong bảng trên và đánh giá mỗi cái là đang hoạt động, hoạt động một phần hay chỉ trên giấy. Xin một ví dụ gần đây cho mỗi cái được đánh giá là đang hoạt động. Người điều phối nên cưỡng lại ý muốn lấp mọi khoảng trống, và nên hỏi khoảng trống nào gây hại nhiều nhất cho khách hàng.

**Chúng ta muốn một khung làm gì cho mình, và chúng ta sợ nó làm gì với mình?**

Thu thập hy vọng và nỗi sợ về việc áp dụng ITIL hay ISO/IEC 20000. Hy vọng thường là sự nhất quán và uy tín. Nỗi sợ thường là giấy tờ và chậm chạp. Hỏi làm sao có cái đầu mà không có cái sau. Chẳng hạn, áp dụng từ vựng và vài thực hành, và tránh biểu mẫu. Ghi lại các điều kiện nhóm sẽ cần.

## Trong thực tế: một ví dụ agile ITIL

Một nhà bán lẻ trực tuyến cỡ trung đã lớn từ website của một người sáng lập thành một doanh nghiệp với một nhóm mười hai kỹ sư, một lượng khách hàng tăng và một nhóm nhỏ nhân viên hỗ trợ. Khách hàng gửi email báo vấn đề vào một hộp thư chung và gọi vào số di động cá nhân khi thanh toán hỏng. Các kỹ sư sửa những gì họ nghe thấy và hiếm khi ghi gì ra. Sau một lần ngừng thanh toán kéo dài ba giờ, người sáng lập hỏi vì sao không ai biết cho đến khi một khách hàng gọi.

Trưởng bộ phận kỹ thuật đề xuất ITSM nhẹ nhất có thể. Nhóm liệt kê các dịch vụ của mình theo thuật ngữ khách hàng: duyệt và tìm kiếm, thanh toán, theo dõi đơn hàng và tài khoản khách hàng. Mỗi dịch vụ có một chủ sở hữu. Một địa chỉ hỗ trợ chung trở thành cửa trước duy nhất, đổ vào một công cụ ticket đơn giản với các loại riêng cho sự cố và yêu cầu. Bất kỳ sự cố nào kéo dài hơn 30 phút đều có một buổi rà soát ngắn, viết trong một tài liệu chung. Các thay đổi lên thanh toán được thông báo trong kênh của nhóm trước khi chúng xảy ra.

Sau ba tháng, nhóm biết mình xử lý bao nhiêu sự cố và thấy phần lớn đến từ hai nguyên nhân. Họ sửa cả hai, và sự cố thanh toán không tái diễn. Một số khó khăn còn lại. Khách hàng vẫn gọi cho người sáng lập khi họ bực bội, nên một phần nhu cầu đi vòng công cụ ticket. Các kỹ sư cũng càu nhàu rằng viết rà soát tốn thời gian, và hai buổi rà soát bị bỏ qua trong một tháng bận. Trưởng bộ phận kỹ thuật quyết định giữ các buổi rà soát ngắn, đề nghị người sáng lập chuyển tiếp các cuộc gọi đến địa chỉ hỗ trợ, và xem lại liệu có cần một quy trình kiểu ITIL đầy đủ hơn không sau thêm một quý dữ liệu.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối cũng vận hành những gì họ xây đã đang làm ITSM. Hãy gọi tên các dịch vụ của bạn, ghi sự cố và thay đổi theo cách nhẹ, và chia sẻ dữ liệu với bất kỳ ai hỗ trợ dịch vụ của bạn. Coi bàn dịch vụ là nguồn bằng chứng về điều người dùng gặp khó khăn.

### Nhóm dịch vụ và vận hành

Nhân viên vận hành và bàn dịch vụ gánh phần lớn thực hành ITSM. Các ý tưởng agile có thể giúp bằng cách làm cho công việc của bạn nhìn thấy được, rút ngắn vòng phản hồi với người dùng và chuyển cải tiến từ các dự án hằng năm sang những thay đổi nhỏ thường xuyên. Hãy giải thích mục đích đằng sau mỗi quy tắc ITSM để đồng nghiệp có thể điều chỉnh nó một cách hợp lý.

### Lãnh đạo và quản trị

Lãnh đạo quyết định cần yêu cầu bao nhiêu cấu trúc và đòi bao nhiêu bằng chứng. Hãy đòi các kết quả mà khách hàng cảm nhận, và vài thước đo mà các nhóm có thể tạo ra từ công cụ của họ. Hãy thận trọng với việc mua một khung như một tín hiệu; bài viết Wikipedia liệt kê nhiều khung, và không cái nào thay thế được việc biết các dịch vụ của chính bạn.

### Khách hàng và người dùng

Khách hàng và người dùng là lý do ITSM tồn tại. Hãy mong có một cách rõ ràng để xin giúp đỡ, thông tin trung thực về điều nên chờ đợi và một người sở hữu mỗi dịch vụ. Đổi lại, hãy cung cấp thông tin kịp thời và cụ thể khi có điều gì sai, để nhà cung cấp có thể học từ đó.

## Các kiểu thất bại thường gặp

- **Quy trình vì chính quy trình.** Biểu mẫu và phê duyệt nhân lên và không ai nhớ vì sao. Thay vào đó, gắn mỗi thực hành với một mục đích và xóa những cái không còn phục vụ mục đích nào.
- **Không có cửa trước duy nhất.** Người dùng tìm đến bất kỳ ai họ biết, và nhu cầu vô hình. Thay vào đó, đưa ra một con đường dễ dàng và đưa các yêu cầu không chính thức vào đó.
- **Trộn lẫn sự cố, yêu cầu và vấn đề.** Báo cáo gây hiểu lầm và nguyên nhân vẫn bị che giấu. Thay vào đó, dùng định nghĩa đơn giản và phân loại ticket nhất quán.
- **Dịch vụ được mô tả theo công nghệ.** Người dùng không tìm được thứ họ cần và chủ sở hữu không rõ. Thay vào đó, mô tả dịch vụ theo thuật ngữ khách hàng và chỉ định chủ sở hữu cho mỗi dịch vụ.
- **Áp dụng nguyên một khung.** Các nhóm sao chép một khung lớn và vùi mình trong quy trình. Thay vào đó, bắt đầu với vấn đề và chỉ lấy những phần giúp ích.
- **Bỏ qua người dùng.** Nhà cung cấp chỉ nói chuyện với khách hàng trả tiền. Thay vào đó, lắng nghe cả khách hàng lẫn người dùng và tìm các xung đột.
- **Đo hoạt động.** Số lượng ticket và cuộc gọi thay cho bằng chứng về chất lượng dịch vụ. Thay vào đó, đo tính sẵn sàng, thời gian khôi phục dịch vụ và mức hài lòng của người dùng.
- **Coi ITSM tách rời khỏi phân phối.** Các nhóm phân phối phát hành rồi để vận hành tự xoay xở. Thay vào đó, nối họ qua các dịch vụ chung, dữ liệu chung và các buổi rà soát chung (xem Chủ đề 5.1 — Quản lý dịch vụ Agile).

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Định nghĩa dịch vụ | Dịch vụ được mô tả theo công nghệ hoặc không được mô tả | Một số dịch vụ được liệt kê với chủ sở hữu | Mọi dịch vụ được mô tả theo thuật ngữ khách hàng với chủ sở hữu được chỉ định | Mô tả dịch vụ được kiểm tra theo mức sử dụng và phản hồi | Định nghĩa dịch vụ được chia sẻ với khách hàng và nhà cung cấp và cùng điều chỉnh |
| Hỗ trợ và yêu cầu | Giúp đỡ được xin qua các con đường không chính thức | Một số nhóm có công cụ ticket hoặc hộp thư chung | Một cửa trước với các loại rõ ràng cho sự cố và yêu cầu | Nhu cầu và thời gian giải quyết được theo dõi và rà soát | Hỗ trợ được điều phối giữa các nhóm và nhà cung cấp bằng dữ liệu chung |
| Bản ghi và thước đo | Ít bản ghi được giữ | Một số nhóm ghi sự cố và thay đổi | Bản ghi nhất quán và mỗi bản có mục đích được nêu | Các thước đo hướng khách hàng được rà soát định kỳ | Các thước đo được chia sẻ giữa các dịch vụ và dùng để cùng đặt ưu tiên |
| Cải tiến | Sửa chữa theo sau khủng hoảng | Một số nhóm rà soát sự cố | Rà soát định kỳ dữ liệu sự cố và yêu cầu dẫn đến thay đổi có kế hoạch | Công việc cải tiến được cấp nguồn lực và kết quả được kiểm tra | Cải tiến là thường lệ giữa các nhóm và với khách hàng |

## Danh mục kiểm tra

- [ ] Chúng ta có danh sách dịch vụ của mình bằng ngôn ngữ khách hàng.
- [ ] Mỗi dịch vụ có một chủ sở hữu được chỉ định.
- [ ] Chúng ta biết ai là khách hàng và ai là người dùng của từng dịch vụ.
- [ ] Người dùng có một cửa trước rõ ràng để xin giúp đỡ và gửi yêu cầu.
- [ ] Sự cố, yêu cầu và vấn đề được ghi là những thứ khác nhau.
- [ ] Mỗi loại bản ghi có mục đích được nêu, và các trường không dùng được xóa.
- [ ] Chúng ta đo ít nhất một điều khách hàng cảm nhận, như tính sẵn sàng hoặc thời gian khôi phục dịch vụ.
- [ ] Chúng ta rà soát dữ liệu sự cố và yêu cầu định kỳ và hành động theo đó.
- [ ] Chúng ta nói được mình dùng những ý tưởng khung nào và bỏ những ý tưởng nào.
- [ ] Các tác vụ thường lệ có thể tự động hóa an toàn đã được xác định.

## Lời nhắc AI

**Mục đích: soạn danh sách các dịch vụ của bạn bằng ngôn ngữ khách hàng.**

```text
Help me describe the services my team provides in the words our users would use.

Who we are and what we run: [describe the team and its main systems in a few sentences].
Who uses what: [list user groups and what each group does with our systems].
What we currently call our services: [paste a list, or write "none"].

Produce a draft list of 5 to 10 services, each with a one-sentence description from the user's point of view, the customer or user groups, and a suggested owner role. Mark each item that is a guess. Do not invent systems I did not mention. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

**Mục đích: phân loại các ticket gần đây thành sự cố, yêu cầu và vấn đề.**

```text
Here are [number] recent tickets or messages to our team: [paste short, anonymized descriptions, one per line].

Definitions to use: an incident is an unplanned disruption or potential disruption to a service; a service request is a routine request for something the service normally provides; a problem is the underlying cause of one or more incidents.

Classify each item as incident, request, or possible problem, with one sentence of reasoning that uses only what I wrote. List items you could not classify and the question I should ask to decide. At the end, tell me the share in each category from my list only. Do not invent details, and list what you are unsure of.
```

**Mục đích: chọn một tập nhỏ các thực hành ITSM đầu tiên cho tình huống của bạn.**

```text
Help me choose a first set of IT service management practices for a team in this situation.

Team size and type: [describe].
Our biggest pains (with a recent example for each): [list].
Existing tools and records: [list, or write "none"].
Rules we must follow (audit, security, contracts), with source text if you have it: [paste, or write "none known"].

From these practices: service desk, incident management, problem management, change enablement, service request management, service level management, service catalog management, knowledge management, continual improvement, propose the two or three to start with and say why, using only the information above. Say what you would leave for later. Mark assumptions, ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị một cuộc trò chuyện giữa nhóm phân phối và bàn dịch vụ.**

```text
Plan a 45-minute conversation between a delivery team and the service desk about how new changes are handed over.

Delivery team: [describe]. Service desk: [describe].
Recent example of a handover that went badly: [describe factually].
What the service desk says it needs: [list, or write "unknown"].

Produce an agenda, five questions for each side, and a closing step that records one agreed change with an owner. Keep it free of any particular tool. Ask clarifying questions first if information is missing, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [service-catalog](../../../../skills/service-catalog/SKILL.md): dùng để soạn hoặc rà soát danh sách dịch vụ bằng ngôn ngữ khách hàng, với chủ sở hữu và mô tả.
- [service-level-agreement](../../../../skills/service-level-agreement/SKILL.md): dùng khi bạn sẵn sàng thống nhất với khách hàng mức dịch vụ nào nên chờ đợi.
- [incident-response-plan](../../../../skills/incident-response-plan/SKILL.md): dùng để chuẩn bị cách nhóm xử lý một sự cố trước khi nó xảy ra.
- [demand-analysis](../../../../skills/demand-analysis/SKILL.md): dùng để hiểu những loại yêu cầu và sự cố nào đến và với khối lượng bao nhiêu.
- [raci-matrix](../../../../skills/raci-matrix/SKILL.md): dùng để làm rõ ai sở hữu từng dịch vụ và ai được tham vấn hoặc được thông báo.

## Nguồn chính

- **IT service management** (Wikipedia): một định nghĩa ngắn kèm danh sách các khung và tiêu chuẩn liên quan, hữu ích như một bản đồ.
- **ITIL** (Wikipedia): lịch sử và các phiên bản của khung ITSM nổi tiếng nhất, gồm cả các thay đổi quyền sở hữu.
- **ISO/IEC 20000** (Wikipedia): bối cảnh về tiêu chuẩn quốc tế cho hệ thống quản lý dịch vụ.
- **Enterprise service management** (Wikipedia): giới thiệu về việc áp dụng các ý tưởng ITSM ra ngoài CNTT.

## Tài liệu tham khảo

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
3. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
4. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
5. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
9. Application Services Library — Wikipedia — https://en.wikipedia.org/wiki/Application_Services_Library
10. Business Information Services Library — Wikipedia — https://en.wikipedia.org/wiki/Business_Information_Services_Library
11. Enterprise service management — Wikipedia — https://en.wikipedia.org/wiki/Enterprise_service_management
12. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
