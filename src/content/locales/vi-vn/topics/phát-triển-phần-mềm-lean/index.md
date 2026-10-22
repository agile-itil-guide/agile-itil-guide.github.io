# Phát triển phần mềm Lean

**Phát triển phần mềm Lean áp dụng các ý tưởng lean về loại bỏ lãng phí, học nhanh và tối ưu hóa toàn hệ thống vào công việc phần mềm, và nó cho các nhóm dịch vụ một cách chung để thấy thời gian và công sức rò rỉ ra khỏi dòng chảy từ yêu cầu đến giá trị ở đâu.**

## Vì sao điều này quan trọng

Các phương pháp agile bảo bạn giao hàng theo các bước nhỏ và học hỏi. Lean đặt một câu hỏi sắc hơn: thời gian đi đâu? Trong hầu hết các tổ chức dịch vụ, thời gian làm việc thực sự cho một yêu cầu chỉ là một phần nhỏ của thời gian trôi qua. Phần còn lại là chờ phê duyệt, bàn giao giữa các nhóm, làm lại do lỗi và công việc mà ngay từ đầu không ai muốn. Lean cho bạn từ ngữ và công cụ để thấy lãng phí đó và loại bỏ nó.

Lean cũng đặt trọng tâm vào toàn hệ thống. Một nhóm tăng tốc phần việc của mình trong khi hàng đợi trước hoặc sau nó dài ra thì chưa cải thiện được gì cho khách hàng. Cách nhìn này hợp với quản lý dịch vụ. Một dịch vụ là tổng của nhiều nhóm, công cụ và nhà cung cấp, và một sự chậm trễ ở bất kỳ đâu là sự chậm trễ với người dùng. Nguyên tắc "tối ưu hóa toàn bộ" là lời nhắc thường trực để nhìn vào dòng chảy từ đầu đến cuối.

Lean là nguồn của nhiều điều xuất hiện ở các phần khác của cuốn sách này. Kanban dựa trên cùng gốc rễ (xem Chủ đề 1.5 — Kanban), quản lý luồng giá trị áp dụng việc vẽ bản đồ lean cho công việc số (xem Chủ đề 5.4 — Quản lý luồng giá trị), và cải tiến liên tục vọng lại thói quen lean về những lợi ích nhỏ liên tục (xem Chủ đề 3.15 — Cải tiến liên tục). Chủ đề này giải thích các ý tưởng và cách dùng chúng mà không biến chúng thành khẩu hiệu.

## Các khái niệm cốt lõi

### Lean đến từ đâu

Theo [bài viết Wikipedia về sản xuất tinh gọn](https://en.wikipedia.org/wiki/Lean_manufacturing), lean phát triển từ [Hệ thống Sản xuất Toyota](https://en.wikipedia.org/wiki/Toyota_Production_System). Sau Thế chiến thứ hai, các nhà sản xuất Nhật Bản có ít tiền mặt, không gian hay nguyên liệu, và Taiichi Ohno cùng Shigeo Shingo thiết kế lại quy trình của Toyota quanh các nhà máy nhỏ và tồn kho thấp, dựa trên lời dạy của W. Edwards Deming. John Krafcik đặt ra thuật ngữ "lean" trong một bài báo năm 1988, và James Womack cùng Daniel Jones định nghĩa nó chính thức trong cuốn sách năm 1996 *Lean Thinking*.

Thuật ngữ "phát triển phần mềm lean" đến từ cuốn sách năm 2003 *Lean Software Development: An Agile Toolkit* của Mary và Tom Poppendieck, theo [bài viết Wikipedia về phát triển phần mềm lean](https://en.wikipedia.org/wiki/Lean_software_development). Cuốn sách điều chỉnh các nguyên tắc sản xuất tinh gọn cho phần mềm và so sánh các công cụ lean với các thực hành agile. Các bài nói chuyện của vợ chồng Poppendieck tại các hội nghị agile đã giúp đưa những ý tưởng này vào cộng đồng agile.

### Năm nguyên tắc của tư duy lean

Womack và Jones nêu năm nguyên tắc của tư duy lean, như bài viết về sản xuất ghi lại:

1. **Giá trị:** định nghĩa giá trị từ góc nhìn của khách hàng.
2. **Luồng giá trị:** xác định toàn bộ chuỗi bước tạo ra giá trị đó, và thách thức những bước không thêm gì.
3. **Dòng chảy:** làm cho các bước còn lại chảy không bị gián đoạn.
4. **Kéo:** để nhu cầu của khách hàng kéo công việc đi qua, thay vì đẩy nó.
5. **Hoàn hảo:** tiếp tục cải tiến, để lãng phí liên tục được loại bỏ.

### Bảy nguyên tắc cho phần mềm

Bài viết Wikipedia về phát triển phần mềm lean liệt kê bảy nguyên tắc cho phần mềm:

| Nguyên tắc | Nó đòi hỏi gì | Trong công việc dịch vụ |
|---|---|---|
| **Loại bỏ lãng phí** | Bỏ mọi thứ không thêm giá trị cho khách hàng | Bỏ các phê duyệt không bao giờ từ chối, các báo cáo không ai đọc và các tính năng không ai dùng |
| **Khuếch đại việc học** | Rút ngắn chu kỳ từ thử một việc đến học được nó diễn ra thế nào | Phát hành các thay đổi nhỏ và xem người dùng làm gì |
| **Quyết định muộn nhất có thể** | Trì hoãn cam kết cho đến khi có sự thật, đồng thời giữ các lựa chọn mở | Đừng cố định thiết kế toàn bộ tương lai của một dịch vụ trước khi bạn biết nó được dùng ra sao |
| **Giao nhanh nhất có thể** | Giảm thời gian từ ý tưởng đến giá trị; giao nhanh cho phép bạn thấy và phân tích kết quả sớm hơn | Rút ngắn đường đi cho các thay đổi nhỏ và yêu cầu thường lệ |
| **Trao quyền cho nhóm** | Để những người làm việc đưa ra quyết định về nó | Cho bàn dịch vụ thẩm quyền giải quyết các vấn đề thường gặp mà không cần chuyển lên cấp trên |
| **Xây dựng tính toàn vẹn vào bên trong** | Xây chất lượng vào khi làm việc, thay vì kiểm tra sau đó | Kiểm thử tự động, giám sát và runbook rõ ràng là một phần của công việc |
| **Tối ưu hóa toàn bộ** | Cải thiện dòng chảy từ đầu đến cuối, không phải hiệu suất của một phần | Đo thời gian từ yêu cầu đến giải quyết giữa các nhóm, không phải hàng đợi riêng của từng nhóm |

Bài viết nói rằng các nguyên tắc này chỉ thành công khi được áp dụng cùng nhau và với phán đoán đúng đắn về môi trường. Nó cũng gọi niềm tin rằng "vội vàng sinh lãng phí" là một huyền thoại, lập luận rằng giao nhanh giúp các nhóm thấy và phân tích kết quả sớm hơn. Nhận định đó là một quan điểm, không phải quy luật: tốc độ không có chất lượng được xây vào đúng là sinh lãng phí, đó là lý do "xây dựng tính toàn vẹn vào bên trong" đứng cạnh "giao nhanh nhất có thể".

### Lãng phí trong phần mềm và công việc dịch vụ

Bảy loại lãng phí của lean (gọi là *muda*) đến từ danh sách của Shingo cho sản xuất: tồn kho, sản xuất thừa, xử lý thừa, vận chuyển, chuyển động thừa, chờ đợi và lỗi. Bài viết về phần mềm lean ánh xạ chúng sang phần mềm như sau:

| Lãng phí trong sản xuất | Tương đương trong phần mềm | Ví dụ trong một nhóm dịch vụ |
|---|---|---|
| Tồn kho | Công việc làm dở | Một danh sách dài các thay đổi đã bắt đầu nhưng chưa xong |
| Sản xuất thừa | Tính năng thừa | Một báo cáo hay dịch vụ không ai yêu cầu |
| Xử lý thừa | Quy trình thừa | Bốn phê duyệt cho một thay đổi rủi ro thấp |
| Vận chuyển | Chuyển đổi tác vụ | Một kỹ sư bị kéo giữa sự cố và công việc dự án |
| Chờ đợi | Chờ đợi | Một ticket chờ trong hàng đợi của nhóm khác |
| Chuyển động | Bàn giao | Một yêu cầu đi qua năm người |
| Lỗi | Lỗi | Một lỗi gây làm lại và sự cố lặp lại |

Các thuật ngữ tiếng Nhật *mura* (không đều) và *muri* (quá tải) đôi khi được thêm vào các thảo luận về lãng phí. Các bài viết Wikipedia được tham khảo ở đây chỉ liệt kê bảy loại lãng phí, nên hãy dùng các thuật ngữ thêm một cách thận trọng và định nghĩa chúng khi dùng.

### Vẽ bản đồ luồng giá trị

Bài viết về phần mềm lean nêu vẽ bản đồ luồng giá trị là kỹ thuật để tìm lãng phí, với lãng phí được loại bỏ qua nhiều vòng lặp lại. Một bản đồ cho thấy từng bước trên đường đi từ yêu cầu đến giá trị được giao, cùng thời gian công việc được làm và thời gian nó chờ. Kết quả thường gây sốc: một đường đi mất hàng tuần có thể chỉ chứa vài giờ làm việc thực sự.

### Kéo, dòng chảy và kanban

Nguyên tắc kéo của lean đứng sau các giới hạn công việc đang làm dở của Kanban. Bài viết về phần mềm mô tả phát triển đúng lúc, trong đó khách hàng nêu kết quả cần có và nhóm tự tổ chức các tác vụ của mình, kéo công việc khi năng lực cho phép. Các thẻ kanban là một hình thức nhìn thấy được của sự kéo đó (xem Chủ đề 1.5 — Kanban).

### Kaizen: cải tiến nhỏ liên tục

Kaizen có nghĩa là cải tiến liên tục, từng chút một. Bài viết về sản xuất truy nó về các nhóm cải tiến tại Toyota năm 1936. Trong một nhóm dịch vụ, nó hiện ra dưới dạng các thay đổi nhỏ được làm thường xuyên bởi những người gần công việc nhất, như một mẫu được chỉnh lại, một kiểm tra tự động mới hay một lần bàn giao rõ hơn. Nó khác với các chương trình cải tiến lớn ở chỗ không bao giờ chờ chu kỳ ngân sách.

### Giới hạn của lean

Các bài viết được tham khảo không nêu lời chỉ trích chính thức nào, nhưng các giới hạn thực tế thì ai cũng biết. Lean đến từ sản xuất lặp lại được, còn công việc tri thức biến động hơn nhiều. Việc đếm lãng phí có thể làm giảm khoảng dư mà một nhóm cần để đối phó với bất ngờ, nên một nhóm đầy tải phản ứng chậm với một sự cố. Hãy coi lean như một lăng kính tìm ra lãng phí, và giữ năng lực dự phòng ở nơi biến động cao (xem Chủ đề 3.11 — Tính sẵn sàng, năng lực và hiệu năng).

## Thực hành tốt

1. **Định nghĩa giá trị từ phía khách hàng.** Với mỗi dịch vụ, viết ra người dùng thực sự nhận được gì và khi nào. Dùng điều này để đánh giá mọi bước: nó thêm giá trị cho người dùng, hay chỉ phục vụ quy trình của chính chúng ta?
2. **Vẽ bản đồ luồng giá trị cho một loại yêu cầu thật.** Chọn một yêu cầu hoặc thay đổi phổ biến và lần theo từ lần liên hệ đầu tiên đến khi giao. Ghi thời gian làm việc và thời gian chờ ở mỗi bước. Một bản đồ sơ lược vẽ trong một giờ hữu ích hơn một bản hoàn hảo vẽ trong một quý.
3. **Gọi tên các lãng phí bạn tìm thấy.** Dùng bảy loại như danh mục kiểm tra: công việc làm dở, tính năng thừa, quy trình thừa, chuyển đổi tác vụ, chờ đợi, bàn giao, lỗi. Gọi tên chúng giúp bàn luận dễ hơn mà không đổ lỗi cho cá nhân.
4. **Tấn công lần chờ dài nhất trước.** Sự chậm trễ lớn nhất trên bản đồ thường nằm giữa các bước, không phải bên trong chúng. Giảm nó thường tốt hơn đánh bóng một bước vốn đã nhanh.
5. **Giới hạn công việc đang làm dở.** Hoàn thành công việc nhanh hơn tung hứng nó. Đặt trần cho số hạng mục đang mở của mỗi nhóm và quan sát điều xảy ra với thời gian mỗi hạng mục mất.
6. **Xây chất lượng vào bên trong.** Thêm các kiểm tra ngay lúc làm việc, như kiểm thử tự động, đánh giá đồng cấp và giám sát trước phát hành, để lỗi được tìm sớm. Kiểm tra ở cuối chậm và đắt hơn.
7. **Trì hoãn các quyết định bạn chưa thể đưa ra tốt.** Giữ các lựa chọn mở cho đến khi có sự thật, nhưng đặt một ngày để quyết định. Điều này tránh cả việc cam kết sớm vào một thiết kế sai lẫn sự do dự bất tận.
8. **Trao quyền cho những người gần công việc nhất.** Để chuyên viên bàn dịch vụ, kỹ sư trực và lập trình viên đưa ra quyết định trong các giới hạn rõ ràng. Nêu các giới hạn, như ngưỡng chi tiêu hay rủi ro, và rà soát chúng sau các sự cố.
9. **Nhìn vào tổng thể, không phải bộ phận.** Đo thời gian từ đầu đến cuối từ yêu cầu đến giải quyết, và bàn nó với mọi nhóm liên quan. Một thay đổi giúp một nhóm và làm chậm nhóm khác không phải là cải tiến.
10. **Làm cải tiến nhỏ, thường xuyên và cục bộ.** Khuyến khích mỗi nhóm làm một cải tiến nhỏ mỗi tuần hoặc hai tuần, và chia sẻ điều đã học. Ghi lại thay đổi và kết quả của nó.
11. **Giữ khoảng dư ở nơi biến động cao.** Đừng lấp đầy mọi giờ của một nhóm trực. Để lại năng lực cho bất ngờ, và đánh giá nó bằng việc nhóm phục hồi nhanh thế nào khi có sự cố.
12. **Dùng lean cùng các thực hành khác.** Kết hợp bản đồ luồng giá trị với các thước đo dòng chảy từ Kanban, và với quản lý vấn đề cho các lỗi lặp lại (xem Chủ đề 3.3 — Quản lý vấn đề).

## Câu hỏi để thảo luận với nhóm của bạn

**Nếu chúng ta theo một yêu cầu phổ biến từ đầu đến cuối, bao nhiêu phần thời gian trôi qua là công việc thực sự?**

Chọn một yêu cầu điển hình và thu thập ngày của từng bước. Đánh dấu thời gian có người đang làm và thời gian nó nằm trong hàng đợi. Tỷ lệ này thường gây sốc. Hỏi mọi người họ kỳ vọng các lần chờ ở đâu, và thực tế chúng ở đâu. Người điều phối nên cưỡng lại việc đưa giải pháp lúc đầu và mời nhóm thống nhất về điều bản đồ cho thấy.

**Trong bảy loại lãng phí, loại nào chúng ta thấy thường xuyên nhất trong công việc hằng ngày?**

Đưa mọi người danh sách và xin một ví dụ gần đây cho mỗi loại. Hãy chờ công việc làm dở, chuyển đổi tác vụ, chờ đợi và bàn giao xuất hiện nhiều. Hỏi loại nào nhóm có thể tự thay đổi và loại nào cần các nhóm khác hay quản lý. Kết thúc bằng việc chọn một loại lãng phí để giảm trong tháng này.

**Chúng ta làm gì mà khách hàng sẽ không nhớ nếu chúng ta ngừng?**

Liệt kê báo cáo, cuộc họp, biểu mẫu và phê duyệt. Với mỗi thứ, hỏi ai dùng nó và điều gì xảy ra nếu nó dừng. Một số sẽ cần cho kiểm toán hoặc an toàn, đó là lý do chính đáng. Số khác sẽ hóa ra là thói quen. Giao cho ai đó kiểm tra từng mục còn nghi ngờ trước khi bỏ.

**Chúng ta kiểm tra chất lượng ở cuối thay vì xây nó vào bên trong ở đâu?**

Nhìn vào các quy trình phát hành, thay đổi và sự cố của bạn để tìm các kiểm tra ở cuối dây chuyền. Hỏi các kiểm tra đó tìm ra lỗi gì và khi nào chúng có thể được tìm ra sớm hơn. Các câu trả lời điển hình gồm kiểm thử sau khi phát triển xong và rà soát tài liệu sau sự việc. Chọn một kiểm tra để chuyển lên sớm hơn và mô tả cách bạn sẽ biết nó có giúp không.

**Ai có thể ra quyết định trong nhóm mà không cần hỏi, và ai nên có thể?**

Mời mọi người liệt kê năm quyết định gần nhất họ muốn đưa ra mà không thể, và vì sao. Tìm các mẫu hình, như giới hạn chi tiêu, phê duyệt thay đổi hay quyết định ưu tiên. Hỏi điều gì sẽ làm cho việc chuyển một trong những quyết định đó gần công việc hơn trở nên an toàn, như một hàng rào bảo vệ hay một lần rà soát sau sự việc. Đừng ép phải có câu trả lời đồng ý; mục đích là tìm ra điều mọi người tin là cần thiết.

**Nếu mọi việc chúng ta làm bây giờ nhanh hơn, cái gì sẽ vỡ trước?**

Câu hỏi này kiểm tra "giao nhanh nhất có thể" và "xây dựng tính toàn vẹn vào bên trong" cùng nhau. Hỏi dòng chảy nhanh hơn sẽ làm quá tải một nhóm, một công cụ hay một người ở đâu. Các câu trả lời điển hình là kiểm thử, phê duyệt và tải trực. Hãy coi các câu trả lời là những thứ cần cải thiện tiếp theo. Nhớ rằng lean coi trọng dòng chảy của toàn hệ thống, nên nút thắt là nơi để đầu tư.

## Trong thực tế: một ví dụ agile ITIL

Phòng CNTT của một cơ quan thuế quốc gia vận hành một dịch vụ nội bộ để nhân viên yêu cầu quyền truy cập phần mềm. Một yêu cầu điển hình mất khoảng ba tuần, và nhân viên phàn nàn ầm ĩ. Nhóm năm người đáp ứng các yêu cầu tin rằng họ làm việc chăm chỉ và ngạc nhiên trước lời phàn nàn.

Một quản lý dẫn dắt một buổi vẽ bản đồ luồng giá trị với nhóm, nhóm bảo mật và hai người dùng nghiệp vụ. Cùng nhau họ lần theo mười yêu cầu gần đây. Mỗi yêu cầu đi qua tám bước: nộp biểu mẫu, quản lý trực tiếp phê duyệt, chủ sở hữu dữ liệu phê duyệt, rà soát bảo mật, kiểm tra giấy phép, giao ticket, cài đặt và xác nhận. Bản đồ cho thấy công việc thực sự mất khoảng một giờ, và gần như cả ba tuần là chờ giữa các bước, chủ yếu cho hai phê duyệt và rà soát bảo mật. Trong ba trong mười trường hợp, yêu cầu bị trả lại cho người dùng vì thiếu một trường trong biểu mẫu.

Nhóm thống nhất ba thay đổi. Biểu mẫu có các trường bắt buộc và một hướng dẫn ngắn, việc này loại bỏ các lần trả lại. Các yêu cầu cho một danh sách ngắn các ứng dụng phổ biến, rủi ro thấp chỉ cần một phê duyệt từ quản lý trực tiếp, và chủ sở hữu dữ liệu được thông báo. Nhóm bảo mật đồng ý rà soát một mẫu các yêu cầu đó mỗi tuần, thay vì mọi yêu cầu trước khi cài đặt. Sau hai tháng, thời gian điển hình giảm xuống còn khoảng một tuần. Một khó khăn vẫn còn: các yêu cầu cho ứng dụng nhạy cảm vẫn mất ba tuần, và nhóm bảo mật ghi nhận rằng việc lấy mẫu đã bắt được hai yêu cầu lẽ ra phải bị từ chối. Họ điều chỉnh danh sách các ứng dụng đủ điều kiện phê duyệt nhanh, và quyết định rà soát nó mỗi quý.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối có thể dùng lean để nhìn vượt ra ngoài sprint hay bảng của chính mình. Vẽ bản đồ đường đi từ một ý tưởng đến tay người dùng, gồm kiểm thử, rà soát bảo mật và phê duyệt phát hành, và tìm nơi công việc chờ. Coi công việc chưa xong là lãng phí, và ưu tiên hoàn thành hơn bắt đầu.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thấy lãng phí hằng ngày: sự cố lặp lại, bàn giao giữa các tầng và yêu cầu bị trả qua trả lại. Dùng bản đồ để cho thấy công việc chờ ở đâu, và dùng quản lý vấn đề để loại bỏ nguyên nhân của các lần lặp. Hãy biện hộ cho năng lực dự phòng bằng cách cho thấy điều xảy ra với dòng chảy khi mọi giờ đều được lên kế hoạch.

### Lãnh đạo và quản trị

Lãnh đạo định hình hệ thống tạo ra phần lớn lãng phí: quy tắc phê duyệt, chu kỳ cấp vốn và báo cáo. Hãy hỏi các nhóm của bạn những quy tắc đó tốn nhiều thời gian nhất ở đâu và mỗi quy tắc bảo vệ chống lại rủi ro nào. Hãy sẵn sàng thay một kiểm soát bằng một kiểm tra nhẹ hơn đạt cùng mục đích.

### Khách hàng và người dùng

Khách hàng định nghĩa giá trị trong tư duy lean, và họ cảm nhận lãng phí như sự chậm trễ. Hãy mong được hỏi bạn thực sự cần gì và sớm đến đâu. Hãy nói với nhóm phần nào của một dịch vụ quan trọng nhất với bạn, vì điều đó định hướng công sức đi đâu. Đổi lại, bạn có thể mong những lần chờ ngắn hơn, dễ dự đoán hơn.

## Các kiểu thất bại thường gặp

- **Cắt giảm năng lực nhân danh lãng phí.** Các nhóm chạy hết tải và không thể ứng phó với bất ngờ. Thay vào đó, giữ khoảng dư ở nơi biến động cao và đánh giá bằng việc nhóm phục hồi nhanh thế nào.
- **Vẽ bản đồ mà không hành động.** Bản đồ luồng giá trị được dán lên tường và không có gì thay đổi. Thay vào đó, chọn lần chờ lớn nhất và thống nhất một thay đổi có người chịu trách nhiệm trước khi buổi họp kết thúc.
- **Tối ưu hóa một nhóm.** Một lợi ích cục bộ chuyển hàng đợi sang nơi khác. Thay vào đó, đo thời gian từ đầu đến cuối và thống nhất thay đổi với mọi nhóm trong luồng.
- **Bỏ các kiểm soát mà không hiểu chúng.** Một bước trông như lãng phí lại đang bảo vệ chống một rủi ro thật. Thay vào đó, hỏi mỗi bước bảo vệ điều gì và thay nó bằng một kiểm tra nhẹ hơn khi có thể.
- **Dùng từ ngữ lean như khẩu hiệu.** Mọi người nói "lãng phí" để gạt bỏ công việc của đồng nghiệp. Thay vào đó, dùng các thuật ngữ để mô tả dòng chảy và giữ cuộc trò chuyện về hệ thống.
- **Đẩy tốc độ lên trên chất lượng.** Giao nhanh hơn tạo thêm lỗi và làm lại. Thay vào đó, coi "xây dựng tính toàn vẹn vào bên trong" là điều kiện tiên quyết của tốc độ.
- **Áp con số sản xuất vào công việc tri thức.** Mục tiêu từ nhà máy không hợp với công việc biến động. Thay vào đó, dùng lean như cách để thấy và hỏi, và đặt các thước đo từ dữ liệu của chính bạn.
- **Coi lean là một dự án một lần.** Lợi ích phai đi khi sự chú ý chuyển đi nơi khác. Thay vào đó, biến các cải tiến nhỏ thành một phần thường lệ của mọi nhóm.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Thấy lãng phí | Lãng phí được cảm nhận nhưng không được mô tả | Một số nhóm vẽ bản đồ công việc của mình | Các nhóm dùng chung các loại lãng phí và bản đồ luồng giá trị | Chờ đợi và làm lại được đo dọc theo luồng giá trị | Bản đồ và thước đo vượt qua các nhóm và nhà cung cấp |
| Dòng chảy và kéo | Công việc bị đẩy và bắt đầu hàng loạt | Một số nhóm giới hạn công việc đang làm dở | Quy tắc kéo và giới hạn là chuẩn | Các thước đo dòng chảy định hướng thay đổi giới hạn và chính sách | Dòng chảy được điều phối trên toàn luồng |
| Xây chất lượng vào bên trong | Chất lượng được kiểm tra ở cuối | Một số nhóm kiểm thử sớm và rà soát công việc | Kiểm tra tự động và rà soát tích hợp sẵn là chuẩn | Tỷ lệ lỗi lọt qua được theo dõi và giảm | Các thực hành chất lượng được chia sẻ và cải thiện giữa các nhóm |
| Cải tiến liên tục | Cải tiến theo sau khủng hoảng | Một số nhóm làm các thay đổi nhỏ đều đặn | Mỗi nhóm có một thói quen cải tiến đều đặn | Cải tiến được theo dõi và tác động được kiểm tra | Cải tiến lan giữa các nhóm và nhà cung cấp một cách thường quy |

## Danh mục kiểm tra

- [ ] Chúng ta đã định nghĩa giá trị nghĩa là gì cho ít nhất một dịch vụ từ phía người dùng.
- [ ] Chúng ta đã vẽ bản đồ luồng giá trị cho một loại yêu cầu phổ biến, với thời gian làm việc và thời gian chờ.
- [ ] Nhóm có thể gọi tên bảy loại lãng phí và đưa một ví dụ gần đây cho mỗi loại.
- [ ] Công việc đang làm dở được giới hạn, và công việc chưa xong nhìn thấy được.
- [ ] Các kiểm tra chất lượng diễn ra trong lúc làm việc cũng như ở cuối.
- [ ] Chúng ta đã chọn ít nhất một lần chờ để giảm, với người chịu trách nhiệm và một ngày.
- [ ] Nhóm có các giới hạn rõ ràng cho những quyết định có thể đưa ra mà không cần hỏi.
- [ ] Chúng ta đo thời gian từ đầu đến cuối cho ít nhất một dòng chảy giữa các nhóm.
- [ ] Chúng ta giữ năng lực dự phòng cho bất ngờ ở nơi nhu cầu biến động.
- [ ] Mỗi nhóm làm và ghi lại một cải tiến nhỏ theo nhịp đều đặn.

## Lời nhắc AI

**Mục đích: phân tích một luồng giá trị từ các thời gian bạn cung cấp.**

```text
Help me analyze a value stream for [type of request, e.g. "software access requests"].

Here are the steps in order, with who does each step, how long work was actually done on it, and how long the item waited before and after it. Use real numbers from a few recent cases: [paste as a table, with one row per step and one column per case].

Calculate, using only my numbers, the total elapsed time, the total working time, and the share of time spent waiting. Identify the three longest waits. For each wait, ask what the step protects against, and suggest one lighter alternative. Do not invent data. If numbers are missing, ask me first, mark assumptions, and list what you are unsure of.
```

**Mục đích: phân loại các ví dụ lãng phí từ công việc của chính nhóm bạn.**

```text
Here is a list of things that frustrate our team or customers: [paste 8-12 short, factual examples].

Classify each one under the seven wastes of lean software development: partially done work, extra features, extra process, task switching, waiting, handoffs, and defects. If an item does not fit any, say so. Give one sentence of reasoning per item based only on what I wrote. Then say which two categories seem most common in this list and suggest two questions the team should discuss. Mark assumptions, and list what you are unsure of.
```

**Mục đích: kiểm tra xem bỏ một kiểm soát có an toàn không.**

```text
We are considering removing or simplifying this control: [describe the approval, report, or step].

What we believe it is for: [describe the purpose, or write "unknown"].
Who uses its output: [list people or teams, or write "unknown"].
Rules we know apply (audit, security, legal), with the actual text if you have it: [paste text, or write "none known"].

List the questions we should answer before changing it. Describe two lighter ways to meet its purpose, and a way to check after the change that nothing worse happened. Do not claim any law or standard applies unless I pasted its text. Mark assumptions, and list what you are unsure of.
```

**Mục đích: lên kế hoạch một buổi workshop vẽ bản đồ luồng giá trị.**

```text
Plan a 90-minute value stream mapping workshop for [number] people from [teams or roles]. We want to examine [request type or service].

Include: a timed agenda, who must attend, what data to bring (use only data we really have), how to draw the map step by step, how to mark working time and waiting time, and a closing step that records one agreed change with an owner and a date. Keep it free of any particular tool. Ask clarifying questions first if information is missing, and list what you are unsure of.
```

## Kỹ năng AI

- [value-stream-map](../../../../skills/value-stream-map/SKILL.md): dùng để vẽ các bước, thời gian làm việc và thời gian chờ của một yêu cầu từ đầu đến cuối.
- [kaizen](../../../../skills/kaizen/SKILL.md): dùng để lập kế hoạch các cải tiến nhỏ, liên tục khi đã tìm thấy lãng phí.
- [workflow-analysis](../../../../skills/workflow-analysis/SKILL.md): dùng để phân tích công việc di chuyển giữa các vai trò thế nào và tìm các điểm bàn giao và chậm trễ.
- [kanban](../../../../skills/kanban/SKILL.md): dùng để áp dụng kéo và giới hạn công việc đang làm dở vào dòng chảy bạn đã vẽ.
- [six-sigma](../../../../skills/six-sigma/SKILL.md): dùng khi lỗi và biến thiên, không chỉ chờ đợi, là vấn đề chính và bạn cần một phương pháp dựa trên dữ liệu để giảm chúng.

## Nguồn chính

- **Lean software development** (Wikipedia): bảy nguyên tắc, ánh xạ lãng phí và các liên kết để đọc thêm.
- **Lean manufacturing** (Wikipedia): lịch sử của lean tại Toyota, các loại lãng phí và năm nguyên tắc của tư duy lean.
- **Lean Software Development: An Agile Toolkit** (Mary và Tom Poppendieck, 2003): cuốn sách đưa các ý tưởng lean vào cộng đồng agile.
- **Lean Thinking** (James Womack và Daniel Jones, 1996): bản phát biểu chính thức về năm nguyên tắc của lean.

## Tài liệu tham khảo

1. Lean software development — Wikipedia — https://en.wikipedia.org/wiki/Lean_software_development
2. Lean manufacturing — Wikipedia — https://en.wikipedia.org/wiki/Lean_manufacturing
3. Toyota Production System — Wikipedia — https://en.wikipedia.org/wiki/Toyota_Production_System
4. Kaizen — Wikipedia — https://en.wikipedia.org/wiki/Kaizen
5. Value-stream mapping — Wikipedia — https://en.wikipedia.org/wiki/Value-stream_mapping
6. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
7. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
8. Muda (Japanese term) — Wikipedia — https://en.wikipedia.org/wiki/Muda_(Japanese_term)
