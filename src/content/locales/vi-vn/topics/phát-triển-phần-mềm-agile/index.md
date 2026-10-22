# Phát triển phần mềm Agile

**Phát triển phần mềm Agile là một họ phương pháp giao phần mềm liên tục, giao theo từng bước nhỏ và học từ phản hồi, và các thực hành mà nó sinh ra, như kiểm thử tự động và tích hợp liên tục, là nền tảng thực tế để vận hành các dịch vụ luôn thay đổi một cách an toàn.**

## Vì sao điều này quan trọng

Hầu hết các nhóm vận hành một dịch vụ CNTT cũng là nhóm xây dựng và thay đổi nó. Cách phần mềm được xây dựng quyết định dịch vụ thay đổi bao lâu một lần, mỗi thay đổi rủi ro đến đâu, và những người trực có thể tin vào những gì họ nhận được đến mức nào. Một nhóm xây dựng theo lô lớn và hiếm khi bàn giao sẽ cho bộ phận vận hành vài bản phát hành lớn, đáng sợ. Một nhóm xây dựng theo các bước nhỏ, có kiểm thử và phản hồi nhanh, có thể cho họ nhiều bản phát hành nhỏ, được hiểu rõ.

Phát triển phần mềm Agile là tập hợp ý tưởng nổi tiếng nhất cho cách làm việc thứ hai. Nó cũng bị hiểu lầm rộng rãi. Một số người dùng "agile" để chỉ "không kế hoạch và không tài liệu", số khác dùng cho bất kỳ quy trình nào có cuộc họp hằng ngày. Chủ đề này cho bạn bức tranh rõ hơn: các phương pháp agile đến từ đâu, chúng có gì chung, chúng không tuyên bố điều gì, và thực hành nào quan trọng nhất với một nhóm phải giữ cho một dịch vụ chạy.

Bằng chứng cần được đọc cẩn thận. [Bài viết Wikipedia về phát triển phần mềm agile](https://en.wikipedia.org/wiki/Agile_software_development) nói rằng bằng chứng giai thoại ủng hộ agile là mạnh nhưng bằng chứng thực nghiệm "còn hạn chế và chưa có tính kết luận", và chỉ ra các khảo sát, như khảo sát State of Agile hằng năm, báo cáo lợi ích nhưng đến từ ý kiến tự báo cáo. Hãy coi các phương pháp agile là những cách tiếp cận đầy hứa hẹn để thử trong môi trường của bạn.

## Các khái niệm cốt lõi

### Thuật ngữ này bao gồm những gì

"Phát triển phần mềm Agile" là một thuật ngữ bao trùm. Bài viết Wikipedia mô tả nó như bao gồm các cách tiếp cận lớn lên từ các giá trị và nguyên tắc được 17 người làm nghề thống nhất năm 2001 (xem Chủ đề 1.1 — Tuyên ngôn Agile và Chủ đề 1.2 — Các nguyên tắc Agile). Chữ "Agile" viết hoa thường dùng cho các thực hành lớn lên từ tư duy đó, còn "agile" viết thường dùng cho phẩm chất có thể thích ứng. Sự phân biệt không chặt chẽ, và bạn sẽ nghe cả hai.

Các phương pháp agile hướng tới giao phần mềm liên tục. Chúng dựa vào sự cộng tác liên tục giữa các bên liên quan và lập trình viên, xây dựng dự án quanh những cá nhân có động lực, và theo đuổi cải tiến liên tục qua phản hồi, với sự chú ý đến chất lượng. Chúng khác nhau ở điều chúng nhấn mạnh. Một số, như Extreme Programming, tập trung vào thực hành kỹ thuật, số khác, như Scrum và Kanban, tập trung vào cách quản lý công việc.

### Lịch sử ngắn

Bài viết Wikipedia truy phát triển lặp và tăng dần về năm 1957, với quản lý dự án tiến hóa và phát triển phần mềm thích ứng xuất hiện vào đầu những năm 1970. Trong thập niên 1990, một nhóm phương pháp nhẹ xuất hiện để phản ứng lại các quy trình nặng nề, dựa trên kế hoạch, thường gọi là [mô hình thác nước](https://en.wikipedia.org/wiki/Waterfall_model). Bài viết liệt kê phát triển ứng dụng nhanh (1991), quy trình thống nhất và phương pháp phát triển hệ thống động DSDM (1994), Scrum (1995), Crystal Clear và Extreme Programming (1996), và phát triển hướng tính năng (1997).

Tháng 2 năm 2001, mười bảy người làm nghề gặp nhau ở Snowbird, Utah, và viết Tuyên ngôn. Các tuyên bố sau đó xây trên nó: Tuyên bố PM về sự phụ thuộc lẫn nhau năm 2005, Tuyên ngôn Thủ công Phần mềm năm 2009, và *Guide to Agile Practices* của Agile Alliance năm 2011, đổi tên thành *Agile Glossary* năm 2016.

### Cách tiếp cận thích ứng và dự đoán

Bài viết mô tả một phổ giữa cách tiếp cận dự đoán và thích ứng. Phương pháp dự đoán lập kế hoạch phần lớn công việc chi tiết trước khi bắt đầu, và hiệu quả khi yêu cầu ổn định và được hiểu rõ. Phương pháp thích ứng chờ đợi thay đổi và lập kế hoạch theo tầm nhìn ngắn. Boehm và Turner, được bài viết trích dẫn, lập luận rằng mỗi bên có "sân nhà" riêng, nghĩa là không bên nào đúng ở mọi nơi.

Điều này quan trọng với một nhóm dịch vụ vì công việc của họ hỗn hợp. Thay thế mạng của một trung tâm dữ liệu gần với công việc dự đoán. Cải tiến một ứng dụng hướng tới khách hàng gần với công việc thích ứng. Hãy chọn cách tiếp cận cho từng loại công việc, đừng chọn một lần cho cả tổ chức.

### Các phương pháp phổ biến

Bài viết liệt kê nhiều phương pháp. Những phương pháp bạn có nhiều khả năng gặp nhất:

| Phương pháp | Điểm nhấn chính | Được đề cập trong |
|---|---|---|
| Scrum | Vai trò xác định, sự kiện đều đặn và nhịp cố định | Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch |
| Kanban | Trực quan hóa công việc và giới hạn lượng công việc đang làm | Chủ đề 1.5 — Kanban |
| Extreme Programming (XP) | Các thực hành kỹ thuật như lập trình cặp và phát triển hướng kiểm thử | Chủ đề 1.6 — Extreme Programming |
| Phát triển phần mềm Lean | Áp dụng các ý tưởng lean, như loại bỏ lãng phí, vào phần mềm | Chủ đề 1.7 — Phát triển phần mềm Lean |
| Phát triển hướng tính năng, DSDM, Crystal và phát triển phần mềm thích ứng | Các phương pháp nhẹ khác để giao phần mềm liên tục, với vai trò và thực hành riêng | Chủ đề này |
| Scrumban | Sự pha trộn giữa các sự kiện Scrum và dòng chảy Kanban | Chủ đề 1.4 — Dự báo phân phối và các chỉ số lập kế hoạch và Chủ đề 1.5 — Kanban |

Không có phương pháp nào là phương pháp agile "duy nhất". Bài viết trích quan điểm của Ken Schwaber rằng các nhóm gặp rắc rối khi đi tìm một phương pháp luận hoàn hảo trong khi chính doanh nghiệp cần thay đổi, và gợi ý của Bas Vodde rằng Scrum cung cấp những điều cơ bản để các nhóm mở rộng tại chỗ.

### Các thực hành phổ biến

Bài viết liệt kê các thực hành mà nhiều nhóm agile dùng. Một số được chọn, kèm mục đích của từng thực hành:

- **User story và backlog:** mô tả công việc từ góc nhìn của người dùng và giữ một danh sách ưu tiên về việc cần làm tiếp theo.
- **Họp đứng hằng ngày:** một cuộc họp ngắn hằng ngày, thường khoảng 15 phút, để chia sẻ tiến độ và vật cản.
- **Phát triển hướng kiểm thử (TDD) và phát triển hướng kiểm thử chấp nhận (ATDD):** viết kiểm thử trước, để "xong" được xác định trước khi công việc bắt đầu.
- **Tích hợp liên tục (CI):** hợp nhất thay đổi thường xuyên và xây dựng, kiểm thử tự động. Bài viết ghi nhận Grady Booch lần đầu đề xuất thuật ngữ này năm 1991.
- **Lập trình cặp và refactoring:** hai người chia sẻ công việc để cải thiện chất lượng và lan truyền tri thức, còn mã được cải thiện liên tục mà không đổi những gì nó làm.
- **Retrospective:** nhóm nhìn lại định kỳ về cách cải thiện.

Với một nhóm dịch vụ, ba thực hành trong số này đáng chú ý đặc biệt. Kiểm thử tự động và tích hợp liên tục làm cho thay đổi thường xuyên trở nên an toàn. Retrospective cung cấp một nơi cố định để cải thiện cách nhóm làm việc. Backlog cho một danh sách duy nhất, có thứ tự, trong đó các cải tiến dịch vụ cạnh tranh công bằng với tính năng mới.

### Kinh nghiệm, đo lường và cạm bẫy

Bài viết báo cáo rằng các khảo sát, trong đó có khảo sát của Shine Technologies năm 2002-2003 và khảo sát State of Agile từ 2006, thấy những lợi ích cảm nhận được về chất lượng, năng suất và sự hài lòng của doanh nghiệp. Nó cũng ghi nhận một khảo sát của VersionOne thấy đào tạo không đủ là nguyên nhân được nhắc nhiều nhất của các lần triển khai thất bại, và liệt kê các cạm bẫy như giao vai trò product owner cho một thành viên của nhóm phát triển và thiếu sự ủng hộ của nhà tài trợ.

Việc đo xem một nhóm "agile đến mức nào" đã sinh ra nhiều bài tự đánh giá, như bài kiểm tra Nokia, và một chỉ số chấm điểm dự án theo thời lượng, rủi ro, tính mới, công sức và tương tác. Hãy cẩn thận với bất kỳ điểm số nào như vậy. Một con số là khởi đầu cho cuộc trò chuyện, và một nhóm tối ưu hóa cho điểm số có thể mất đi trọng tâm.

### Công việc quy mô lớn, phân tán và có quy định

Bài viết nói rằng mở rộng quá khoảng 20 lập trình viên, hoặc qua nhiều địa điểm, đem lại thách thức, và một số khung đã được đề xuất, dù các quan điểm khác nhau về mức độ hiệu quả (xem Chủ đề 1.8 — Mở rộng quy mô Agile). Nó cũng báo cáo rằng các lĩnh vực có quy định như thiết bị y tế, dược phẩm, tài chính, hạt nhân, ô tô và hàng không ban đầu được cho là không phù hợp với agile, và nay đã có những điều chỉnh. Các mối quan tâm nó liệt kê là đảm bảo chất lượng, an toàn và an ninh, khả năng truy vết, và xác minh và thẩm định.

Đây chính là những mối quan tâm của quản lý dịch vụ. Khi một cơ quan quản lý hay kiểm toán viên yêu cầu bằng chứng, một nhóm agile có thể cung cấp nó từ các công cụ họ đã dùng, như lịch sử kiểm soát phiên bản, kết quả kiểm thử tự động và bản ghi thay đổi (xem Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ).

### Lời chỉ trích đáng biết

Steven Rakitin, trong một lá thư gửi *IEEE Computer* năm 2001, gọi agile là "một nỗ lực nữa nhằm làm suy yếu kỷ luật của kỹ nghệ phần mềm" và đọc sự ưu tiên phần mềm chạy được của Tuyên ngôn như giấy phép bỏ qua tài liệu. Những người ủng hộ đáp rằng tài liệu nên "vừa đủ tốt", theo cụm từ của Scott Ambler. Các nhóm dịch vụ biết cả hai phía: quá ít tài liệu làm chậm bàn giao và phản ứng sự cố, còn quá nhiều tài liệu thì cũ đi.

## Thực hành tốt

1. **Chọn phương pháp phù hợp với loại công việc.** Dùng giao phần mềm liên tục và phản hồi thường xuyên ở nơi yêu cầu thay đổi, và dùng nhiều kế hoạch trước hơn ở nơi chúng cố định và chi phí sai sót cao. Quyết định điều này cho từng loại công việc và xem lại khi hoàn cảnh thay đổi.
2. **Bắt đầu với lô nhỏ nhất có ích.** Chia công việc thành các phần có thể xây dựng, kiểm thử và phát hành trong vài ngày. Lô nhỏ cho phản hồi nhanh hơn và làm cho một thay đổi thất bại dễ hiểu và dễ hoàn tác hơn.
3. **Tự động hóa kiểm thử trước khi tăng tốc phát hành.** Phát hành thường xuyên mà không có kiểm thử tự động chuyển rủi ro sang người dùng của bạn. Xây một bộ kiểm thử chạy ở mọi thay đổi và báo hỏng rõ ràng, và coi một bản build hỏng là ưu tiên đầu tiên của nhóm.
4. **Tích hợp liên tục.** Hợp nhất công việc vào một nhánh chung thường xuyên và xây dựng tự động. Các nhánh sống lâu giấu xung đột cho đến khi chúng tốn kém để sửa.
5. **Làm cho "xong" bao gồm cả vận hành.** Một story chưa xong cho đến khi nó có thể được giám sát, hỗ trợ và hoàn tác. Thêm các kiểm tra này vào định nghĩa hoàn thành của bạn, và nhờ nhân viên vận hành giúp viết nó (xem Chủ đề 3.5 — Quản lý phát hành và triển khai).
6. **Giữ một backlog có thứ tự cho mỗi nhóm.** Đặt tính năng, lỗi và cải tiến dịch vụ vào cùng một danh sách ưu tiên để chúng cạnh tranh công khai. Các hàng đợi phụ ẩn là nơi công việc vận hành lặng lẽ chết đói.
7. **Viết vừa đủ tài liệu.** Giữ những tài liệu mọi người dùng, như runbook, mô tả dịch vụ và ghi chú kiến trúc, và giao mỗi tài liệu cho một người sở hữu cùng ngày rà soát. Xóa phần còn lại. Điều này đáp lại mối lo của Rakitin mà không quay lại các tài liệu nặng nề.
8. **Tổ chức retrospective đều đặn và hành động theo chúng.** Chọn một thay đổi từ mỗi buổi, với người phụ trách và ngày hạn. Một retrospective chỉ sinh ra thảo luận sẽ thành nghi thức.
9. **Đầu tư vào đào tạo và sự bảo trợ.** Bằng chứng khảo sát trong bài viết Wikipedia chỉ ra đào tạo và sự ủng hộ của nhà tài trợ là các điểm yếu phổ biến. Hãy lập kế hoạch cho cả hai trước khi yêu cầu các nhóm đổi cách làm việc.
10. **Điều chỉnh, và nói rõ vì sao.** Điều chỉnh một phương pháp cho bối cảnh của bạn, và ghi lại điều bạn đã đổi cùng lý do. Đổi một thực hành chỉ vì bất tiện, không có lý do, là cách các nhóm trôi xa khỏi lợi ích.
11. **Đo kết quả, không đo điểm agile.** Theo dõi những thứ như thời gian chờ giao của một thay đổi, tần suất các bản phát hành gây ra sự cố, và tốc độ khôi phục dịch vụ (xem Chủ đề 5.6 — Chỉ số và đo lường). Chỉ dùng tự đánh giá như gợi ý cho thảo luận.
12. **Đưa dữ liệu dịch vụ trở lại phát triển.** Đưa các sự cố lặp lại và bản ghi vấn đề vào backlog để phát triển học từ vận hành (xem Chủ đề 3.3 — Quản lý vấn đề).

## Câu hỏi để thảo luận với nhóm của bạn

**Chúng ta thực sự dùng những thực hành agile nào, và thực hành nào chúng ta chỉ có tên?**

Liệt kê các thực hành bạn nghĩ mình làm theo: họp đứng, retrospective, backlog, kiểm thử tự động. Với mỗi cái, hỏi lần cuối nó làm thay đổi một quyết định là khi nào. Thực hành mà không ai nối được với một quyết định là nghi thức. Người điều phối nên hỏi bằng chứng mà không ngụ ý đổ lỗi. Tiếp theo, chọn một nghi thức để cải thiện hoặc bỏ.

**Công việc nào của chúng ta nên dùng cách tiếp cận dự đoán hơn, và vì sao?**

Bài viết Wikipedia báo cáo rằng mỗi cách tiếp cận có một "sân nhà". Hỏi mọi người phân loại công việc gần đây thành ổn định và thay đổi nhanh. Công việc ổn định điển hình gồm làm mới phần cứng, di chuyển trung tâm dữ liệu và gia hạn hợp đồng lớn. Hỏi một kế hoạch cẩn thận hơn sẽ mua được gì trong mỗi trường hợp. Mục tiêu là tránh áp một phong cách cho mọi thứ.

**Chúng ta phát hiện nhanh đến đâu rằng thứ mình xây không chạy, và điều gì làm nó nhanh hơn?**

Lần theo đường đi từ viết một thay đổi đến biết nó hoạt động thế nào khi dùng. Đếm các giai đoạn và các lần chờ: rà soát, build, kiểm thử, phát hành, giám sát. Hỏi nhóm ít tin giai đoạn nào nhất. Thường câu trả lời là một kiểm thử thủ công hoặc một bước phát hành phụ thuộc vào một người. Chọn một giai đoạn để rút ngắn và thống nhất cách bạn sẽ biết nó đã ngắn hơn.

**Kiểm toán viên hoặc cơ quan quản lý cần thấy gì từ chúng ta, và cách làm việc của chúng ta đã tạo ra nó chưa?**

Mời ai đó có kinh nghiệm kiểm toán hoặc an ninh tham gia. Thu thập bằng chứng mà các công cụ của bạn đã tạo ra: lịch sử thay đổi, kết quả kiểm thử, phê duyệt. Rồi liệt kê điều còn thiếu. Các nhóm thường ngạc nhiên khi thấy các thay đổi nhỏ thường xuyên với kiểm tra tự động tạo ra bằng chứng tốt hơn các thay đổi lớn hiếm hoi. Ghi lại các khoảng trống cho cuộc thảo luận về quản trị trong Chủ đề 5.7 — Quản trị, rủi ro và tuân thủ.

**Tài liệu của chúng ta giúp mọi người ở đâu, và chỗ nào nó chỉ tồn tại vì chúng ta được bảo phải viết?**

Hỏi mọi người họ đã dùng tài liệu nào trong tháng qua. Một runbook được dùng và cập nhật thì được tính. Một tài liệu thiết kế không ai đọc từ ngày được duyệt thì không. Để nhóm quyết định giữ cái nào, gộp cái nào và xóa cái nào, rồi giao người sở hữu. Đây là cách an toàn để áp dụng ý tưởng "vừa đủ tốt".

**Lần gần nhất chúng ta đổi cách làm việc vì điều học được là gì, và thay đổi tiếp theo là gì?**

Hỏi thay đổi cụ thể gần nhất từ một buổi retrospective và nó có hiệu quả không. Nếu không ai kể tên được, retrospective chưa làm tròn việc. Hãy xem vì sao: các hành động có thể quá lớn, không có người phụ trách, hoặc cạnh tranh với công việc giao hàng. Kết thúc bằng việc chọn một thay đổi nhỏ để thực hiện trong hai tuần tới.

## Trong thực tế: một ví dụ agile ITIL

Một nhà bán lẻ trực tuyến cỡ vừa có một nhóm phát triển mười người xây dựng hệ thống quản lý đơn hàng, và một nhóm vận hành riêng sáu người vận hành nó. Nhóm phát triển đã chọn dùng sprint và phát hành mỗi hai tuần. Nhóm vận hành nhận mỗi bản phát hành kèm một ghi chú ngắn và yêu cầu triển khai trong một cửa sổ vào tối thứ Năm. Nhân viên vận hành phàn nàn rằng họ chỉ biết điều gì đã thay đổi khi có gì đó hỏng, còn lập trình viên phàn nàn rằng cửa sổ thứ Năm quá muộn để sửa bất cứ điều gì phát hiện trong kiểm thử.

Tại một buổi retrospective chung, hai nhóm vẽ lại từng bước một lần phát hành gần đây. Họ thấy các kiểm thử tự động duy nhất chỉ bao phủ khoảng một nửa luồng đơn hàng, rằng không ai bên vận hành từng thấy bản phát hành trước ghi chú thứ Năm, và bước hoàn tác chưa bao giờ được thử. Họ thống nhất ba thay đổi. Nhóm phát triển sẽ thêm một kiểm tra giám sát và một kiểm thử hoàn tác vào định nghĩa hoàn thành của mình. Một kỹ sư vận hành sẽ tham gia mỗi buổi sprint review. Các bản phát hành qua được bộ kiểm thử tự động đầy đủ sẽ được triển khai ngay khi sẵn sàng, không chỉ vào thứ Năm.

Trong hai tháng sau đó, hai trong bốn bản phát hành tiếp theo được triển khai giữa tuần. Kỹ sư vận hành bắt được một thông điệp log còn thiếu trong một sprint review, tiết kiệm một giờ tìm kiếm trong một sự cố sau này. Không phải mọi thứ đều cải thiện: bộ kiểm thử tự động vẫn bỏ qua đường hoàn tiền, và một lỗi hoàn tiền đến tay khách hàng. Hai nhóm thêm kiểm thử hoàn tiền vào sprint tiếp theo và thống nhất rà soát các khoảng trống về độ bao phủ mỗi tháng. Kỹ sư vận hành cũng nói rằng việc dự sprint review tốn thời gian mà lịch trực không cho phép, nên quản lý vận hành chuyển bớt một số nhiệm vụ khác của kỹ sư đó.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối sở hữu những thực hành làm cho thay đổi an toàn: kiểm thử, tích hợp liên tục, lô nhỏ và một định nghĩa hoàn thành rõ ràng. Hãy coi vận hành như một khách hàng của công việc bạn. Hỏi họ cần gì để chạy một bản phát hành, và đưa nó vào backlog như một tính năng.

### Nhóm dịch vụ và vận hành

Nhân viên vận hành có thể dùng các thực hành agile cho công việc của chính mình: một backlog cải tiến nhìn thấy được, chu kỳ phản hồi ngắn về sự cố và retrospective đều đặn. Hãy xin tham gia các buổi lập kế hoạch và rà soát từ sớm. Mang đến tri thức về cách dịch vụ hỏng, đó là đầu vào hữu ích nhất mà một nhóm phân phối có thể nhận.

### Lãnh đạo và quản trị

Lãnh đạo quyết định các nhóm có được thời gian và đào tạo để làm việc theo cách này không. Bằng chứng khảo sát trong bài viết Wikipedia chỉ ra đào tạo và sự bảo trợ là các điểm yếu phổ biến. Hãy hỏi bạn cần những kiểm soát nào và một nhóm có thể đáp ứng chúng bằng công cụ của chính mình ra sao, thay vì thêm một quy trình song song.

### Khách hàng và người dùng

Khách hàng thấy lợi ích của các phương pháp agile như sự cải thiện nhìn thấy được theo một nhịp đều đặn, không phải như một nghi lễ. Hãy mong được rà soát các thay đổi chạy được đều đặn và được hỏi điều gì quan trọng nhất. Đổi lại, nhóm cần câu trả lời kịp thời và sự sẵn lòng chấp nhận các bản phát hành nhỏ, chưa hoàn hảo, được cải thiện dần theo thời gian.

## Các kiểu thất bại thường gặp

- **Áp dụng nghi thức mà không có thực hành kỹ thuật.** Họp hằng ngày và bảng công việc xuất hiện, nhưng không có kiểm thử tự động nên các bản phát hành vẫn rủi ro. Thay vào đó, đầu tư vào kiểm thử, tích hợp và tự động hóa phát hành song song với các nghi lễ.
- **Gọi một quy trình thay đổi là "agile" mà không đổi quyền quyết định.** Các nhóm vẫn chờ phê duyệt từ xa. Thay vào đó, chuyển quyết định cho những người có tri thức, và đặt các giới hạn rõ ràng.
- **Dùng agile làm cái cớ không có tài liệu.** Bàn giao và sự cố bị ảnh hưởng. Thay vào đó, giữ những tài liệu ngắn mà mọi người dùng và giao mỗi tài liệu cho một người sở hữu.
- **Bỏ qua đào tạo.** Phát hiện của VersionOne trong bài viết Wikipedia nêu đào tạo không đủ là nguyên nhân được nhắc nhiều nhất của các lần triển khai thất bại. Thay vào đó, đào tạo các nhóm và lãnh đạo trước và trong thay đổi.
- **Đặt một thành viên nhóm phát triển vào vai trò product owner.** Bài viết liệt kê đây là một cạm bẫy. Thay vào đó, chọn người đại diện cho doanh nghiệp và có thời gian để quyết định.
- **Mở rộng quy mô bằng cách sao chép một khung.** Một khung lớn được cài đặt mà không hiểu thêm quy trình và làm chậm các nhóm. Thay vào đó, bắt đầu từ vấn đề bạn có và chỉ áp dụng cái giúp ích (xem Chủ đề 1.8 — Mở rộng quy mô Agile).
- **Đuổi theo điểm số agile.** Các nhóm tối ưu hóa cho chỉ số. Thay vào đó, theo dõi kết quả như thời gian chờ giao, lỗi phát hành và thời gian khôi phục dịch vụ.
- **Giữ phát triển và vận hành tách biệt.** Nhóm phân phối giao hàng còn nhóm vận hành thừa kế. Thay vào đó, đưa họ vào lập kế hoạch chung, rà soát chung và học từ sự cố (xem Chủ đề 5.2 — DevOps).

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Giao phần mềm liên tục | Công việc được giao trong các bản phát hành lớn | Một số nhóm giao theo chu kỳ ngắn | Các nhóm chia sẻ một nhịp giao chung và một định nghĩa hoàn thành | Thời gian chờ giao và kết quả phát hành được đo và rà soát | Nhịp phát hành được điều phối giữa các nhóm và nhà cung cấp |
| Thực hành kỹ thuật | Kiểm thử và build chủ yếu thủ công | Một số nhóm có kiểm thử và build tự động | Một pipeline chung chạy kiểm thử ở mọi thay đổi | Độ bao phủ kiểm thử và tỷ lệ hỏng được theo dõi và các khoảng trống được sửa | Pipeline và thực hành được cải thiện giữa các nhóm từ bằng chứng chung |
| Backlog và ưu tiên | Yêu cầu đến qua email và ngẫu hứng | Các nhóm giữ backlog riêng | Mỗi nhóm có một backlog có thứ tự bao gồm công việc dịch vụ | Dòng chảy và tuổi của backlog được rà soát với các bên liên quan | Ưu tiên được căn chỉnh giữa các nhóm, khách hàng và nhà cung cấp |
| Học tập và thích ứng | Rà soát chỉ theo sau các hỏng hóc lớn | Một số nhóm tổ chức retrospective | Mọi nhóm tổ chức retrospective đều đặn và ghi lại hành động | Hành động được theo dõi đến khi hoàn thành và tác động được kiểm tra | Bài học đi giữa các nhóm và vào chính sách mà không cần chỉ đạo trung tâm |

## Danh mục kiểm tra

- [ ] Nhóm có thể nói phương pháp hoặc thực hành agile nào mình dùng và vì sao chọn chúng.
- [ ] Công việc được phân thành loại dự đoán và loại thích ứng, với cách tiếp cận được nêu cho mỗi loại.
- [ ] Kiểm thử tự động chạy ở mọi thay đổi, và một bản build hỏng làm dừng dây chuyền.
- [ ] Định nghĩa hoàn thành của chúng ta bao gồm giám sát, ghi chú hỗ trợ và hoàn tác đã thử.
- [ ] Mỗi nhóm có một backlog có thứ tự bao gồm cải tiến dịch vụ và lỗi.
- [ ] Runbook và mô tả dịch vụ có người sở hữu và ngày rà soát.
- [ ] Retrospective được tổ chức theo nhịp đều đặn và mỗi buổi kết thúc bằng một hành động có người phụ trách.
- [ ] Các nhóm và lãnh đạo đã được đào tạo về cách làm việc mà chúng ta yêu cầu.
- [ ] Chúng ta biết kiểm toán viên cần bằng chứng gì và các công cụ của ta cung cấp nó ra sao.
- [ ] Các thước đo kết quả, như thời gian chờ giao và thời gian khôi phục dịch vụ, được rà soát đều đặn.

## Lời nhắc AI

**Mục đích: đối chiếu các thực hành hiện tại của bạn với các thực hành agile phổ biến và tìm khoảng trống.**

```text
You are helping a team understand which agile software development practices it actually uses.

Practices to consider: user stories and backlogs, daily stand-ups, retrospectives, test-driven development, continuous integration, pair programming, refactoring, definition of done, regular reviews with customers.

Our team: [team size and what you build and run].
What we do today, in our own words: [paste a short description of a typical week, including meetings, tools, and how a change reaches production].

For each practice, say whether the description shows it in use, partly in use, or not mentioned, and quote the words you based that on. Do not assume a practice exists if it is not described. Then list three questions I should ask my team to fill gaps. Ask me clarifying questions first if the description is too thin, and list what you are unsure of.
```

**Mục đích: soạn một định nghĩa hoàn thành bao gồm vận hành.**

```text
Help us write a definition of done for [type of work, e.g. "backend changes to our order service"] that covers both building and running the service.

Our current definition of done is: [paste it, or write "none"].
Things operations staff tell us they need before they accept a release: [paste a list, or write "unknown"].
Rules we must follow: [list any known audit, security, or safety rules, or write "none known"].

Produce a checklist of 8 to 12 items, grouped as build quality, release readiness, and operational readiness. Mark each item that you added by assumption. Do not claim that any standard requires an item unless I have pasted its text. Ask me clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị bằng chứng cho kiểm toán viên từ các công cụ agile của bạn.**

```text
An auditor has asked: [paste the question, e.g. "show me how changes are reviewed and approved"].

Our tools and records: [list your version control, build, test, ticket, and release tools, and what each records].
Our practice: [describe how a change goes from idea to production].

List what evidence each tool already produces that relates to the question, what gaps remain, and three lightweight ways to close each gap. Do not state that any law or standard requires something unless I have pasted its text. Separate facts from assumptions, and list what you are unsure of.
```

**Mục đích: lên kế hoạch một buổi retrospective về cách nhóm bạn áp dụng các thực hành agile.**

```text
Plan a 60-minute retrospective for a team of [number] people who are [adopting / improving] agile practices. The main problem right now is [problem].

Include: a timed agenda, a way to gather facts first, a short discussion of two or three of these questions: [paste questions from the "Questions to discuss" section], and a closing step that records exactly one action with an owner and a date.

Keep the plan free of any specific tool. If anything is missing, ask me clarifying questions first, and list what you are unsure of.
```

## Kỹ năng AI

- [scrum](../../../../skills/scrum/SKILL.md): dùng để thiết lập hoặc rà soát vai trò, sự kiện và artifact của một nhóm Scrum.
- [kanban](../../../../skills/kanban/SKILL.md): dùng để thiết kế một bảng trực quan với giới hạn công việc đang làm cho một nhóm dịch vụ hoặc vận hành.
- [extreme-programming](../../../../skills/extreme-programming/SKILL.md): dùng để rà soát hoặc áp dụng các thực hành kỹ thuật như phát triển hướng kiểm thử và tích hợp liên tục.
- [user-story](../../../../skills/user-story/SKILL.md): dùng để viết user story với tiêu chí chấp nhận bao gồm các nhu cầu vận hành.
- [agile-reflection](../../../../skills/agile-reflection/SKILL.md): dùng để tổ chức một buổi retrospective kết thúc bằng một thay đổi có người phụ trách.

## Nguồn chính

- **Manifesto for Agile Software Development** và **Principles behind the Agile Manifesto** (agilemanifesto.org): tuyên bố gốc về giá trị và nguyên tắc.
- **Agile software development** (Wikipedia): một tổng quan rộng về lịch sử, phương pháp, thực hành, việc áp dụng và các lời chỉ trích, với nhiều nguồn được trích dẫn.
- **Agile Glossary** (Agile Alliance): định nghĩa các thực hành và thuật ngữ agile, do cộng đồng lớn lên từ Tuyên ngôn duy trì.

## Tài liệu tham khảo

1. Agile software development — Wikipedia — https://en.wikipedia.org/wiki/Agile_software_development
2. Manifesto for Agile Software Development — Beck et al., agilemanifesto.org — https://agilemanifesto.org/
3. Principles behind the Agile Manifesto — Beck et al., agilemanifesto.org — https://agilemanifesto.org/principles.html
4. Waterfall model — Wikipedia — https://en.wikipedia.org/wiki/Waterfall_model
5. Scrum (software development) — Wikipedia — https://en.wikipedia.org/wiki/Scrum_(software_development)
6. Extreme programming — Wikipedia — https://en.wikipedia.org/wiki/Extreme_programming
7. Kanban (development) — Wikipedia — https://en.wikipedia.org/wiki/Kanban_(development)
8. Test-driven development — Wikipedia — https://en.wikipedia.org/wiki/Test-driven_development
9. Continuous integration — Wikipedia — https://en.wikipedia.org/wiki/Continuous_integration
10. Feature-driven development — Wikipedia — https://en.wikipedia.org/wiki/Feature-driven_development
11. Dynamic systems development method — Wikipedia — https://en.wikipedia.org/wiki/Dynamic_systems_development_method
12. Agile Glossary — Agile Alliance — https://www.agilealliance.org/agile101/agile-glossary/
