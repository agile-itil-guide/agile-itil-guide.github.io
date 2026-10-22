# Tính sẵn sàng, năng lực và hiệu năng

**Tính sẵn sàng, năng lực và hiệu năng là ba góc nhìn về việc một dịch vụ có mặt, đủ lớn và đủ nhanh khi người dùng cần hay không, và cách tiếp cận agile là chọn mục tiêu từ nhu cầu người dùng, định giá chúng một cách trung thực và kiểm thử trước khi nhu cầu đến.**

## Vì sao điều này quan trọng

Người dùng không tách ba thứ này ra. Một dịch vụ "đang chạy" nhưng quá chậm để dùng đã làm họ thất vọng, và một dịch vụ nhanh vào ngày vắng nhưng sập lúc cao điểm đã làm họ thất vọng đúng vào lúc họ cần nhất. Các nhóm xem tính sẵn sàng, năng lực và hiệu năng riêng rẽ thường bỏ sót cách chúng tương tác: thêm năng lực đổi chi phí và độ phức tạp, đuổi theo tính sẵn sàng hoàn hảo giới hạn tốc độ bạn thay đổi, và tinh chỉnh cho tốc độ có thể giảm khả năng chống chịu.

Các nhóm agile đối mặt với một phiên bản riêng của vấn đề. Họ thay đổi dịch vụ thường xuyên, và mỗi thay đổi có thể làm đổi hiệu năng hay nhu cầu tài nguyên theo cách không ai kiểm thử. Họ cũng có xu hướng làm việc theo chân trời thời gian ngắn, nên các nhu cầu năng lực cần hàng tháng để sắp xếp, như phần cứng, hợp đồng hay giấy phép, có thể bị bỏ sót. Các thực hành trong chủ đề này cho một cách nhìn trước mà không quay lại lập kế hoạch tầm xa vì chính nó.

Cuốn *Site Reliability Engineering* của Google, trong chương "Embracing Risk", là nguồn rõ ràng về kinh tế của tính sẵn sàng: nó nói cách tiếp cận của mình không nhằm độ tin cậy 100%, vì quá một điểm nào đó, tối đa hóa sự ổn định giới hạn tốc độ phát triển tính năng mới, và chi phí độ tin cậy tăng dốc. [Bài viết Wikipedia về lập kế hoạch năng lực](https://en.wikipedia.org/wiki/Capacity_planning) đưa các định nghĩa và chiến lược chung. Cả hai đều chưa đầy đủ, và từ vựng ITIL dùng ở đây đến từ các mô tả được xuất bản rộng rãi mà cuốn sách này không thể đối chiếu với văn bản của chủ sở hữu khung.

## Các khái niệm cốt lõi

### Tính sẵn sàng

**Tính sẵn sàng** là khả năng của một dịch vụ làm điều người dùng cần khi họ cần. Một cách phổ biến để diễn đạt nó là dưới dạng phần trăm trong một giai đoạn. Chương SRE lưu ý hai cách đo. Với một hệ thống đơn lẻ, tính sẵn sàng dựa trên thời gian: 99,99% cho phép khoảng 52,56 phút ngừng hoạt động ngoài kế hoạch mỗi năm. Với các dịch vụ phân tán luôn sẵn sàng một phần, tốt hơn là đo bằng tỷ lệ yêu cầu thành công trong một cửa sổ trượt; ví dụ của chương là một dịch vụ có 2,5 triệu yêu cầu mỗi ngày và mục tiêu 99,99%, cho phép tới 250 lỗi. Chương tập trung vào ngừng hoạt động ngoài kế hoạch. Ngừng hoạt động có kế hoạch cần thỏa thuận riêng với người dùng.

### Cái giá của mỗi số chín thêm vào

Chương nói chi phí độ tin cậy tăng phi tuyến: thêm một số chín có thể tốn gấp 100 lần mức tăng trước, gồm các nguồn lực dự phòng và chi phí cơ hội của việc kỹ sư không xây dựng các tính năng hướng người dùng. Nó đưa một minh họa: nâng tính sẵn sàng từ 99,9% lên 99,99% trên một dịch vụ có doanh thu 1 triệu đô la đáng giá khoảng 900 đô la, nên khoản đầu tư chỉ có lời nếu số chín thêm vào tốn ít hơn thế. Các con số là ví dụ của nguồn, và các con số của bạn phải đến từ doanh thu hay giá trị của chính bạn. Nguyên tắc vẫn đúng: chọn tính sẵn sàng mà người dùng cần, và định giá mọi thứ vượt quá nó.

### Khả năng chịu rủi ro

Chương mô tả việc làm việc với các chủ sở hữu sản phẩm để biến mục tiêu kinh doanh thành các mục tiêu tường minh. Các yếu tố gồm tính sẵn sàng yêu cầu, hình dạng của các lỗi (một tỷ lệ lỗi thấp liên tục so với các lần ngừng hoàn toàn thỉnh thoảng, trong đó lộ dữ liệu đặc biệt nghiêm trọng), chi phí và các thước đo khác như độ trễ. Nó lưu ý rằng hạ tầng phục vụ nhiều máy khách có thể được cung cấp ở các mức dịch vụ xác định tường minh, để mỗi máy khách chọn mức rẻ nhất đáp ứng nhu cầu của mình.

### Ngân sách lỗi

Chương giải thích ngân sách lỗi là một thước đo chung, khách quan giữa các nhóm sản phẩm, được đo theo tốc độ, và các nhóm độ tin cậy, được đo theo độ tin cậy. Khi còn ngân sách, phát hành tiếp tục. Khi nó hết, phát hành chậm lại và công sức chuyển sang độ tin cậy (xem Chủ đề 3.7 — Quản lý mức dịch vụ).

### Năng lực

Bài viết Wikipedia định nghĩa lập kế hoạch năng lực là xác định năng lực sản xuất mà một tổ chức cần để đáp ứng nhu cầu thay đổi, và nói trong CNTT nó đồng nghĩa với quản lý năng lực: ước lượng các nguồn lực lưu trữ, phần cứng, phần mềm và kết nối cần trong một giai đoạn tương lai. Bài viết phân biệt **năng lực thiết kế**, đầu ra tối đa có thể, với **năng lực hiệu dụng**, đầu ra sau các ràng buộc. Trong thực tế, hãy lập kế hoạch theo năng lực hiệu dụng, luôn thấp hơn con số thiết kế.

### Các chiến lược năng lực

Bài viết mô tả bốn chiến lược để thêm năng lực:

| Chiến lược | Ý nghĩa | Đánh đổi |
|---|---|---|
| **Dẫn trước (lead)** | Thêm năng lực trước nhu cầu | Dịch vụ tốt và thời gian chờ giao ngắn, nhưng rủi ro nếu nhu cầu khó đoán |
| **Theo sau (lag)** | Chỉ thêm năng lực sau khi đã chạy ở hoặc vượt mức đầy | Rủi ro xây dư thấp hơn, nhưng có thể mất khách hàng |
| **Khớp (match)** | Thêm năng lực theo từng bước nhỏ khi nhu cầu thay đổi | Cân bằng, cần giám sát tốt |
| **Điều chỉnh (adjustment)** | Thêm hoặc bớt năng lực với lượng nhỏ hoặc lớn khi nhu cầu hoặc kiến trúc thay đổi | Linh hoạt, cần cấp phát nhanh |

Bài viết mô tả lập kế hoạch ngắn hạn, trung hạn và dài hạn (vận hành, chiến thuật và chiến lược), từ vài ngày đến nhiều năm. Trong bối cảnh đám mây, "khớp" và "điều chỉnh" thường dễ hơn vì nguồn lực có thể được thêm nhanh, nhưng chi phí và hợp đồng vẫn cần lập kế hoạch (xem Chủ đề 4.5 — Quản lý tài chính CNTT và FinOps).

### Hiệu năng

**Hiệu năng** là dịch vụ phản hồi nhanh và tốt đến đâu. Chương về giám sát của cuốn SRE gợi ý đo độ trễ, lưu lượng, lỗi và bão hòa, và cảnh báo rằng trung bình che giấu các giá trị ngoại lai chậm (xem Chủ đề 3.10 — Giám sát và quản lý sự kiện). Bão hòa, dịch vụ "đầy" đến đâu, nối hiệu năng với năng lực: chương lưu ý hiệu năng thường giảm trước khi đạt 100% mức sử dụng.

### Ba thứ tương tác thế nào

- Thêm năng lực có thể nâng tính sẵn sàng và hiệu năng, với một cái giá.
- Mục tiêu tính sẵn sàng cao thường cần dự phòng, tức năng lực thêm.
- Tinh chỉnh cho hiệu năng đỉnh có thể giảm khoảng dư cho lỗi.
- Thay đổi dịch vụ làm đổi cả ba, đó là vì sao kiểm thử quan trọng.

Một kỷ luật hữu ích là nêu các mục tiêu cùng nhau cho mỗi dịch vụ: sẵn sàng đến đâu, nhanh đến đâu và phải chịu tải bao nhiêu.

### Nhu cầu và dự báo

Năng lực phụ thuộc vào nhu cầu. Nhu cầu đến từ người dùng và từ doanh nghiệp: các chiến dịch tiếp thị, đỉnh theo mùa, khách hàng mới. Doanh nghiệp biết về tương lai nhiều hơn CNTT, nên hãy hỏi. Lập kế hoạch bằng các khoảng thay vì con số đơn, và xem lại dự báo đều đặn (xem kỹ năng dự báo nhu cầu bên dưới).

### Kiểm thử

Các nhận định về năng lực và hiệu năng chỉ là giả thuyết cho đến khi được kiểm thử. Kiểm thử tải và kiểm thử hiệu năng áp nhu cầu thực tế để xem dịch vụ hành xử thế nào, và kiểm thử hỗn loạn đưa vào các lỗi để xem tính sẵn sàng có giữ không. Những thứ này có thể là một phần của pipeline phân phối.

### Giới hạn của các nguồn

Bài viết Wikipedia về lập kế hoạch năng lực không nhắc đến quản lý năng lực của ITIL cũng không phân tích quan hệ giữa năng lực, hiệu năng và tính sẵn sàng, và phần về tài sản của nó bị đánh dấu thiếu trích dẫn. Chương SRE mô tả các thực hành của một tổ chức rất lớn với kinh tế riêng biệt. Hãy dùng chúng cho nguyên tắc, không phải cho con số.

## Thực hành tốt

1. **Nêu các mục tiêu tính sẵn sàng, hiệu năng và tải cùng nhau.** Với mỗi dịch vụ, viết nó phải sẵn sàng đến đâu, phải phản hồi nhanh đến đâu và phải chịu bao nhiêu tải. Dựa chúng trên nhu cầu người dùng và thống nhất với chủ sở hữu dịch vụ và khách hàng.
2. **Định giá các mục tiêu.** Ước lượng một mức tính sẵn sàng hay tốc độ thêm tốn bao nhiêu, bằng tiền và bằng các tính năng bị trì hoãn. So sánh với điều người dùng và doanh nghiệp sẽ được. Dùng con số của bạn, không phải ví dụ trong một cuốn sách.
3. **Đo tính sẵn sàng theo cách khớp với dịch vụ.** Với các dịch vụ luôn sẵn sàng một phần, dùng tỷ lệ thành công trong một cửa sổ trượt như chương SRE. Với các hệ thống đơn giản, dùng thước đo dựa trên thời gian. Đếm ngừng hoạt động ngoài kế hoạch và có kế hoạch riêng.
4. **Lập kế hoạch theo năng lực hiệu dụng.** Ước lượng dịch vụ có thể chịu được gì sau các ràng buộc thật như chi phí quản lý, hỏng thành phần và bảo trì. Giữ một biên.
5. **Chọn chiến lược năng lực có chủ ý.** Quyết định dẫn trước, theo sau hay khớp cho từng nguồn lực, dựa trên thời gian chờ, chi phí thiếu hụt và chi phí xây dư. Viết lựa chọn ra và xem lại.
6. **Hỏi doanh nghiệp về nhu cầu.** Gặp các lãnh đạo tiếp thị, bán hàng và vận hành theo chu kỳ đều đặn để biết về chiến dịch, đợt ra mắt và đỉnh theo mùa. Ghi tải dự kiến theo khoảng.
7. **Theo dõi bão hòa.** Theo dõi các nguồn lực chính đầy đến đâu và đặt cảnh báo từ rất sớm trước điểm hiệu năng suy giảm. Biết mức mà dịch vụ của bạn bắt đầu chậm.
8. **Kiểm thử trước đỉnh.** Chạy kiểm thử tải và hiệu năng giống lưu lượng thật, trước các đỉnh đã biết và sau các thay đổi đáng kể. Sửa những gì bạn tìm thấy khi còn thời gian.
9. **Kiểm thử lỗi, không chỉ tải.** Luyện tập việc mất một thành phần, một vùng hay một nhà cung cấp trong môi trường an toàn và xem tính sẵn sàng có giữ không (xem kỹ năng kiểm thử hỗn loạn bên dưới).
10. **Đưa năng lực vào công việc thay đổi và phát hành.** Hỏi trong thiết kế và rà soát xem một thay đổi có làm đổi nhu cầu nguồn lực không. Thêm kiểm tra hiệu năng vào pipeline cho các đường quan trọng (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).
11. **Dùng ngân sách lỗi để giải quyết các đánh đổi.** Khi còn ngân sách, tiêu nó cho thay đổi. Khi nó hết, dồn công sức vào độ tin cậy và năng lực. Rà soát quy tắc với phân phối và vận hành cùng nhau.
12. **Đối chiếu dự báo với thực tế.** Mỗi quý, so sánh nhu cầu dự đoán và thực tế rồi điều chỉnh phương pháp. Coi những điều bất ngờ là thông tin.

## Câu hỏi để thảo luận với nhóm của bạn

**Người dùng của chúng ta thực sự cần gì ở tính sẵn sàng, tốc độ và năng lực, và ai đã quyết định?**

Hỏi các mục tiêu hiện tại và chúng đến từ đâu. Thường chúng được đặt từ lâu, hay do nhóm tự đặt mà không hỏi người dùng. Hỏi người dùng và khách hàng điều gì làm họ đau nhất. Bàn các mục tiêu có khớp không. Người điều phối có thể hỏi điều gì sẽ xảy ra nếu mục tiêu thấp hơn một bậc, và nó giải phóng được gì.

**Số chín tiếp theo tốn chúng ta bao nhiêu?**

Chọn một dịch vụ có mục tiêu tính sẵn sàng cao. Ước lượng nâng hoặc hạ nó một bậc tốn bao nhiêu, bằng tiền và bằng công việc bị trì hoãn. So sánh với giá trị cho người dùng. Ví dụ của chương SRE cho thấy phép tính có thể quay ngược chống lại một mục tiêu cao hơn nhanh thế nào. Hãy tính bằng số của chính bạn và ghi lại các giả định.

**Đỉnh nhu cầu tiếp theo chúng ta biết là gì, và chúng ta đã làm gì để chuẩn bị?**

Liệt kê các đỉnh đã biết: một chiến dịch, một hạn chót, một đợt cao điểm theo mùa. Với mỗi cái, hỏi ai biết tải dự kiến và dịch vụ đã được kiểm thử ở mức đó chưa. Thường chưa ai hỏi. Thống nhất một người thu thập các con số và một ngày cho cuộc kiểm thử.

**Dịch vụ của chúng ta gần bão hòa nhất ở đâu, và điều gì xảy ra khi nó đến đó?**

Hỏi nguồn lực được dùng nhiều nhất. Xem xu hướng. Hỏi dịch vụ làm gì ở giới hạn đó: chậm, lỗi hay sập. Nếu không ai biết, hãy kiểm thử. Chọn một ngưỡng để hành động và một cảnh báo cho nó.

**Trong vài thay đổi gần nhất của chúng ta, thay đổi nào ảnh hưởng đến hiệu năng hoặc năng lực, và chúng ta có biết trước không?**

Rà soát các thay đổi gần đây và hỏi hiệu năng được kiểm tra thế nào. Nếu không được kiểm tra, hãy bàn một kiểm tra nhẹ sẽ là gì. Các lựa chọn điển hình là một kiểm thử trên đường quan trọng hay phát hành canary kèm giám sát. Thống nhất một cái cho bản phát hành tiếp theo.

**Nếu một thành phần hỏng ngay bây giờ, điều gì sẽ xảy ra với tính sẵn sàng?**

Lấy một dịch vụ chính và lần theo một lỗi của cơ sở dữ liệu, một vùng hay một nhà cung cấp. Hỏi thiết kế giả định gì và đã kiểm thử gì. Khoảng cách giữa giả định và bằng chứng là rủi ro. Lên kế hoạch một cuộc kiểm thử lỗi có kiểm soát trong môi trường an toàn.

## Trong thực tế: một ví dụ agile ITIL

Một cơ quan lương hưu quốc gia vận hành một dịch vụ trực tuyến nơi công dân kiểm tra quyền lợi và nộp biểu mẫu. Dịch vụ có một năm yên ắng ngoại trừ vài tuần sau khi các bản sao kê hằng năm được gửi, khi lưu lượng tăng lên gấp vài lần mức bình thường. Năm ngoái dịch vụ chậm đến mức nhiều người dùng bỏ cuộc, và tổng đài bị quá tải. Nhóm nền tảng chín người và quản lý vận hành muốn tránh lặp lại.

Nhóm bắt đầu bằng việc hỏi văn phòng truyền thông về tải dự kiến. Văn phòng nói các sao kê sẽ được gửi thành hai đợt và đưa ngày, nhưng không có con số. Nhóm ước lượng khoảng từ dữ liệu năm ngoái và đặt một mục tiêu: trang biểu mẫu phải phản hồi trong thời gian chấp nhận được cho đỉnh dự kiến, và dịch vụ phải luôn sẵn sàng xuyên hai đợt. Họ chạy một kiểm thử tải trên một bản sao của sản xuất và thấy cơ sở dữ liệu là nguồn lực bão hòa đầu tiên, thấp hơn nhiều so với đỉnh dự đoán. Họ áp dụng chiến lược "dẫn trước" cho cơ sở dữ liệu, vì thời gian chờ để thêm năng lực dài, và chiến lược "khớp" cho các máy chủ web, có thể được thêm trong vài phút. Một kiểm thử lỗi cho thấy mất một nút cơ sở dữ liệu làm giảm một nửa năng lực, điều không chấp nhận được lúc cao điểm, nên họ thêm một nút dự phòng.

Vào đỉnh, dịch vụ vẫn chạy và thời gian phản hồi giữ được trong đợt đầu. Ở đợt thứ hai, một thành phần xác nhận thanh toán mà không ai kiểm thử chậm đi dưới tải, và một số người dùng thấy chậm trễ. Nhóm không biết về giới hạn của phụ thuộc này và chưa được báo rằng đợt thứ hai sẽ lớn hơn. Họ thêm thành phần vào cuộc kiểm thử tải tiếp theo, đề nghị văn phòng truyền thông cho biết khối lượng mỗi đợt sớm hơn, và thống nhất rà soát quy trình dự báo ở quý tới.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối ảnh hưởng đến cả ba qua thiết kế và thay đổi. Đưa hiệu năng và năng lực vào các buổi rà soát thiết kế và vào pipeline. Báo cho vận hành về các thay đổi làm đổi tải, và hỏi doanh nghiệp về nhu cầu dự kiến.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thường mang giám sát và kế hoạch năng lực. Theo dõi bão hòa và xu hướng, giữ cái nhìn về thời gian chờ cho nguồn lực và mang bằng chứng đến lập kế hoạch. Giúp doanh nghiệp hiểu mỗi mức tính sẵn sàng tốn bao nhiêu.

### Lãnh đạo và quản trị

Lãnh đạo đặt ra cái giá họ sẵn sàng trả cho độ tin cậy và tốc độ. Hãy đòi các mục tiêu khớp nhu cầu người dùng, kèm chi phí, và chấp nhận rằng tính sẵn sàng hoàn hảo không phải một mục tiêu hợp lý. Ủng hộ kiểm thử trước các đỉnh đã biết và ngân sách cho khả năng chống chịu ở nơi quan trọng.

### Khách hàng và người dùng

Khách hàng và người dùng cảm nhận kết quả. Hãy nói với nhà cung cấp khi bạn chờ có tải thêm, như một chiến dịch hay hạn chót, và điều gì quan trọng nhất với bạn về tốc độ và tính sẵn sàng. Báo cáo sự chậm cũng như ngừng hoạt động, vì cả hai đều là thất bại từ phía bạn.

## Các kiểu thất bại thường gặp

- **Mục tiêu theo thói quen.** "Năm số chín" được đòi mà không hỏi vì sao. Thay vào đó, rút mục tiêu từ nhu cầu người dùng và định giá chúng.
- **Đỉnh bất ngờ.** Doanh nghiệp biết về một chiến dịch mà CNTT thì không. Thay vào đó, gặp nhau theo chu kỳ đều đặn và ghi lại tải dự kiến.
- **Trung bình cho hiệu năng.** Các giá trị ngoại lai chậm không được thấy. Thay vào đó, xem phân vị cao và bão hòa.
- **Năng lực chỉ được thêm sau khi có rắc rối.** Chiến lược theo sau được dùng một cách vô tình. Thay vào đó, chọn chiến lược có chủ ý, dựa trên thời gian chờ.
- **Khả năng chống chịu chưa kiểm thử.** Dự phòng tồn tại trên giấy. Thay vào đó, kiểm thử lỗi thành phần trong môi trường an toàn.
- **Thay đổi không kiểm tra hiệu năng.** Một bản phát hành làm giảm tốc độ. Thay vào đó, thêm kiểm tra vào pipeline cho các đường quan trọng.
- **Quên phụ thuộc.** Một thành phần bên thứ ba giới hạn cả dịch vụ. Thay vào đó, liệt kê phụ thuộc và kiểm thử chúng.
- **Coi dự báo là cố định.** Kế hoạch bỏ qua sai số. Thay vào đó, dùng khoảng và so sánh dự báo với thực tế.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Mục tiêu và chi phí | Mục tiêu không chính thức hoặc sao chép | Một số dịch vụ có mục tiêu được nêu | Dịch vụ có mục tiêu tính sẵn sàng, hiệu năng và tải đã thống nhất với chi phí biết trước | Mục tiêu và chi phí được rà soát theo kết quả | Mục tiêu được đặt chung với khách hàng và nhà cung cấp và điều chỉnh theo bằng chứng |
| Lập kế hoạch nhu cầu và năng lực | Năng lực được thêm sau khi có rắc rối | Một số nhóm dự báo các đỉnh đã biết | Nhu cầu được thu thập từ doanh nghiệp theo chu kỳ, với chiến lược năng lực được nêu | Độ chính xác dự báo được theo dõi và phương pháp được cải thiện | Lập kế hoạch được điều phối giữa các nhóm, nhà cung cấp và doanh nghiệp |
| Kiểm thử | Ít kiểm thử tải hay lỗi | Một số kiểm thử trước các sự kiện lớn | Kiểm thử tải và lỗi là thường lệ cho các dịch vụ chính | Kết quả kiểm thử dẫn đến cải tiến được theo dõi | Kiểm thử được chia sẻ và điều phối giữa các dịch vụ phụ thuộc nhau |
| Giám sát và ứng phó | Vấn đề được nhận ra muộn | Một số bão hòa được theo dõi | Bão hòa, độ trễ và lỗi được giám sát với cảnh báo trước các giới hạn | Xu hướng và ngưỡng được tinh chỉnh từ dữ liệu | Tín hiệu và phản hồi được điều phối giữa các nhóm và nhà cung cấp |

## Danh mục kiểm tra

- [ ] Mỗi dịch vụ có mục tiêu được nêu về tính sẵn sàng, hiệu năng và tải, kèm nguồn của chúng.
- [ ] Chúng ta đã ước lượng mức tính sẵn sàng tiếp theo sẽ tốn bao nhiêu.
- [ ] Chúng ta biết tính sẵn sàng được đo thế nào cho từng dịch vụ, và điều gì được tính là ngừng hoạt động.
- [ ] Chúng ta đã chọn một chiến lược năng lực cho từng nguồn lực chính.
- [ ] Chúng ta gặp doanh nghiệp đều đặn để biết về nhu cầu dự kiến.
- [ ] Bão hòa của các nguồn lực chính được giám sát với cảnh báo trước các giới hạn.
- [ ] Kiểm thử tải đã được chạy trước đỉnh đã biết gần nhất.
- [ ] Lỗi của ít nhất một thành phần chính đã được kiểm thử trong môi trường an toàn.
- [ ] Các thay đổi ảnh hưởng đến hiệu năng hoặc năng lực được đánh dấu trong rà soát.
- [ ] Dự báo được so sánh với nhu cầu thực tế mỗi quý.

## Lời nhắc AI

**Mục đích: biến dữ liệu đo thành cái nhìn về khoảng dư năng lực.**

```text
Here are the measurements for [resource, e.g. "database CPU"] for [service] over [period]: [paste real values or summary figures such as daily peak and average].
Known limit at which performance degrades, if you know it: [paste, or write "unknown"].
Expected demand change: [describe, with source].

Using only my data, describe the trend and how much headroom there appears to be at the observed peak, in plain words. Show how headroom would change if demand grew by the amounts I gave. Do not invent limits or growth rates. Say what extra data would make the analysis more reliable, and list what you are unsure of.
```

**Mục đích: định giá một mục tiêu tính sẵn sàng cao hơn.**

```text
Help me compare the cost and value of raising the availability target for [service] from [current target] to [proposed target].

What the service is worth, with source (revenue, cost of an outage, or other value; use only figures I provide): [paste].
What the extra availability would require (redundancy, staff, tools), with cost estimates I have: [paste, or write "unknown"].
Current measured availability: [paste].

Calculate the allowed unplanned downtime or error count at each target using only the numbers I gave, show the difference, and compare with the value and cost figures if I provided them. State your assumptions. Do not invent costs or revenue. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: lập kế hoạch một kiểm thử tải trước một đỉnh đã biết.**

```text
Plan a load test for [service] before this event: [describe the peak, with date and source of the expected load].

Architecture, in brief: [describe components, dependencies, and suppliers].
Expected load range, with the source: [paste].
Test environment available: [describe].

Give a plan with: goals, what to measure (latency distribution, errors, saturation), scenarios to run, how to ramp up, what to do with results, and risks to production or to suppliers (for example agreements that need to be made before testing). Do not invent figures. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

**Mục đích: thiết kế một kiểm thử lỗi.**

```text
Help me design a controlled failure test for [service].

What I want to learn: [for example whether availability holds if one database node fails].
Environment for the test: [describe, e.g. a production-like test environment].
Safeguards available: [monitoring, rollback, people on hand].

Describe a step-by-step test plan: hypothesis, what to break and how, what to observe, who is present, what stops the test, and how to record what happened. Keep it away from production unless I say it is safe. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [capacity-planning](../../../../skills/capacity-planning/SKILL.md): dùng để ước lượng các nguồn lực một dịch vụ cần theo thời gian và chọn chiến lược để thêm chúng.
- [demand-forecasting](../../../../skills/demand-forecasting/SKILL.md): dùng để ước lượng tải tương lai dưới dạng một khoảng từ dữ liệu quá khứ và kế hoạch kinh doanh.
- [load-testing](../../../../skills/load-testing/SKILL.md): dùng để thiết kế các kiểm thử áp nhu cầu thực tế trước một đỉnh.
- [performance-testing](../../../../skills/performance-testing/SKILL.md): dùng để kiểm tra tốc độ và mức dùng nguồn lực trên các đường quan trọng như một phần của phân phối.
- [chaos-testing](../../../../skills/chaos-testing/SKILL.md): dùng để kiểm tra tính sẵn sàng có giữ khi các thành phần hỏng không.

## Nguồn chính

- **Embracing Risk** (*Site Reliability Engineering*, Google, sre.google): kinh tế của tính sẵn sàng, đo theo yêu cầu và ngân sách lỗi.
- **Capacity planning** (Wikipedia): các định nghĩa và các chiến lược dẫn trước, theo sau, khớp và điều chỉnh.
- **Monitoring Distributed Systems** (*Site Reliability Engineering*, Google, sre.google): các tín hiệu vàng gồm bão hòa.
- **High availability** (Wikipedia): bối cảnh về thiết kế hệ thống cho vận hành liên tục.

## Tài liệu tham khảo

1. Embracing Risk — Google SRE book, sre.google — https://sre.google/sre-book/embracing-risk/
2. Capacity planning — Wikipedia — https://en.wikipedia.org/wiki/Capacity_planning
3. Monitoring Distributed Systems — Google SRE book, sre.google — https://sre.google/sre-book/monitoring-distributed-systems/
4. Service Level Objectives — Google SRE book, sre.google — https://sre.google/sre-book/service-level-objectives/
5. High availability — Wikipedia — https://en.wikipedia.org/wiki/High_availability
6. Scalability — Wikipedia — https://en.wikipedia.org/wiki/Scalability
7. Load testing — Wikipedia — https://en.wikipedia.org/wiki/Load_testing
8. Chaos engineering — Wikipedia — https://en.wikipedia.org/wiki/Chaos_engineering
9. Site reliability engineering — Wikipedia — https://en.wikipedia.org/wiki/Site_reliability_engineering
