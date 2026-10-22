# Các khung và tiêu chuẩn ITSM

**Quản lý dịch vụ CNTT có nhiều khung và tiêu chuẩn chồng lấn nhau, và kỹ năng hữu ích là biết mỗi thứ dùng để làm gì: hướng dẫn để học hỏi, một tiêu chuẩn bạn có thể được chứng nhận, hay một mô hình quản trị cho bạn biết cần kiểm soát gì.**

## Vì sao điều này quan trọng

Hãy hỏi năm người "chúng tôi theo thực hành tốt nhất của ITSM" nghĩa là gì và bạn có thể nhận năm câu trả lời: ITIL, ISO/IEC 20000, COBIT, FitSM, hoặc "bất cứ thứ gì công cụ của nhà cung cấp làm". Các thuật ngữ được dùng lỏng lẻo, và sự khác biệt quan trọng. Một khách hàng yêu cầu chứng nhận ISO/IEC 20000 không thể được thỏa mãn bằng đào tạo ITIL. Một kiểm toán viên hỏi về các kiểm soát COBIT sẽ không được giúp bởi một sơ đồ quy trình bàn dịch vụ.

Với các nhóm agile, câu hỏi mang tính thực tế: chúng ta phải xử lý cái nào trong số này, và cái nào có thể coi là nguồn ý tưởng? Nhiều nhóm ngạc nhiên khi biết ITIL, cái tên nổi tiếng nhất, là hướng dẫn mà cá nhân được cấp chứng chỉ chứ không phải một tiêu chuẩn cho tổ chức. Số khác ngạc nhiên khi tiêu chuẩn ITSM chính gần đây đã thêm hướng dẫn về cách làm việc agile và DevOps.

Chủ đề này so sánh các khung và tiêu chuẩn chính, dùng các bài viết Wikipedia về [quản lý dịch vụ CNTT](https://en.wikipedia.org/wiki/IT_service_management), [ISO/IEC 20000](https://en.wikipedia.org/wiki/ISO/IEC_20000), [COBIT](https://en.wikipedia.org/wiki/COBIT) và [FitSM](https://en.wikipedia.org/wiki/FitSM). Các bài viết đó có chất lượng khác nhau, và nhiều bài mang các cờ bảo trì. Ở nơi chúng yếu, chủ đề này nói rõ. Hãy kiểm tra các ấn phẩm riêng của chủ sở hữu trước khi bạn dựa vào bất kỳ chi tiết nào cho một hợp đồng hay một cuộc kiểm toán.

## Các khái niệm cốt lõi

### Ba loại thứ

Các tên trong chủ đề này rơi vào ba nhóm. Giữ chúng tách biệt tránh được nhiều cuộc trò chuyện rối rắm.

| Loại | Nó cho bạn gì | Ví dụ được nêu trong bài viết Wikipedia về ITSM |
|---|---|---|
| **Hướng dẫn (một khung hoặc thư viện)** | Ý tưởng và các thực hành được mô tả để điều chỉnh | ITIL, Microsoft Operations Framework, Application Services Library, Business Information Services Library |
| **Một tiêu chuẩn có thể chứng nhận** | Các yêu cầu mà một tổ chức có thể bị kiểm toán và được chứng nhận | ISO/IEC 20000 |
| **Một mô hình quản trị hoặc năng lực** | Một cách để định hướng, kiểm soát hoặc đánh giá CNTT | COBIT, CMMI, TOGAF |

FitSM nằm giữa hai loại đầu, như mô tả dưới đây.

### ITIL

ITIL là hướng dẫn về ITSM và quản lý tài sản CNTT. Chứng chỉ dành cho cá nhân, và không tồn tại đánh giá độc lập nào về sự tuân thủ ITIL của một tổ chức (xem Chủ đề 2.2 — ITIL). Nó là nguồn từ vựng được dùng rộng rãi nhất.

### ISO/IEC 20000

ISO/IEC 20000 là một tiêu chuẩn quốc tế cho quản lý dịch vụ CNTT. Theo Wikipedia, Phần 1 đặt các yêu cầu cho một hệ thống quản lý dịch vụ bao gồm lập kế hoạch, cung cấp và cải tiến dịch vụ. Nó được phát triển từ BS 15000, do BSI Group tạo ra, và được xuất bản lần đầu vào tháng 12 năm 2005. Các bản cập nhật tiếp theo: Phần 1 vào tháng 6 năm 2011 và bản sửa đổi thứ hai, ISO/IEC 20000-1:2018, phát hành ngày 15 tháng 7 năm 2018, sau đó các tổ chức đã được chứng nhận có thời gian chuyển tiếp ba năm. Ấn bản 2018 có mười điều khoản theo cấu trúc bậc cao của ISO.

Tiêu chuẩn có nhiều phần. Bài viết liệt kê, trong số những phần khác: hướng dẫn áp dụng một hệ thống quản lý dịch vụ (Phần 2); hướng dẫn về phạm vi và khả năng áp dụng (Phần 3); hướng dẫn triển khai (Phần 5); yêu cầu cho các tổ chức chứng nhận (Phần 6); khái niệm và từ vựng (Phần 10); và một đặc tả kỹ thuật về mối quan hệ với ITIL 4 (Phần 11). Nó cũng liệt kê các phần mới xuất bản, từ 2023 đến 2025, với hướng dẫn về tích hợp và quản lý dịch vụ (SIAM), agile và DevOps, và tính bền vững. Wikipedia không nói số phần nào bao phủ chủ đề nào, nên hãy kiểm tra danh mục ISO trước khi bạn trích dẫn một phần.

Các tổ chức có thể được chứng nhận, và cá nhân có thể đạt các chứng chỉ trình độ từ các tổ chức như APMG-International, EXIN và PECB. Bài viết báo cáo rằng khảo sát ISO năm 2024 đếm được 27.332 chứng chỉ, trong đó 24.056 ở Trung Quốc. Điều đó cho thấy chứng nhận phân bố không đồng đều giữa các nước, nên đừng cho rằng một khách hàng ở nơi khác sẽ đòi nó.

Wikipedia nói tiêu chuẩn ban đầu được phát triển để phản ánh thực hành tốt nhất của ITIL, nhưng đánh dấu nhận định đó là "cần trích dẫn". Hãy coi mối quan hệ là gần nhưng không đồng nhất. Bài viết cũng nói tiêu chuẩn hỗ trợ các khung khác như Microsoft Operations Framework và các phần của COBIT.

### COBIT

COBIT, theo Wikipedia, là một khung do ISACA tạo ra cho quản lý và quản trị CNTT. Nó nối mục tiêu kinh doanh với mục tiêu CNTT và xác định trách nhiệm cho các nhóm kinh doanh và CNTT. Bài viết mô tả năm lĩnh vực quy trình: Đánh giá, Chỉ đạo và Giám sát; Căn chỉnh, Lập kế hoạch và Tổ chức; Xây dựng, Thu thập và Triển khai; Cung cấp, Phục vụ và Hỗ trợ; và Giám sát, Đánh giá và Thẩm định. Nó đưa các mốc: phát hành lần đầu năm 1996, phiên bản 5 năm 2012, và nói ISACA cấp chứng chỉ về COBIT 2019 và COBIT 5. Bài viết gắn COBIT với ITIL, ISO 27000, CMMI, TOGAF và PMBOK Guide của Project Management Institute.

Bản thân bài viết mang các cờ bảo trì về nguồn gốc và thiếu trích dẫn, và một nhận định, rằng khung giúp các công ty tuân thủ luật và nhanh nhẹn hơn, chỉ dựa vào một nguồn. Hãy dùng các ấn phẩm riêng của COBIT để có thẩm quyền.

### FitSM

FitSM là một họ các tiêu chuẩn nhẹ. Wikipedia nói nó phát triển từ FedSM, một dự án do EU tài trợ nhằm cải thiện quản lý dịch vụ trong các hạ tầng điện tử liên kết, và các sản phẩm sửa đổi được xuất bản dưới tên FitSM từ tháng 5 năm 2013. FitSM-1 chứa khoảng 85 yêu cầu có thể kiểm toán bao gồm các yêu cầu chung và 14 quy trình, và ngắn hơn nhiều so với ISO/IEC 20000 Phần 1 dù tương tự về phạm vi và phong cách. Mọi phần được xuất bản theo giấy phép Creative Commons. Các tổ chức không thể được chứng nhận là tuân thủ FitSM, dù sự tuân thủ có thể được kiểm toán, và một chương trình chứng chỉ nhân sự bắt đầu năm 2013.

FitSM hữu ích cho các nhóm nhỏ muốn một tập yêu cầu ngắn. Bài viết không nêu phiên bản hiện tại hay tình trạng nhóm duy trì nó, nên hãy xác minh những điều đó trước khi dựa vào.

### Các tên khác

Bài viết về ITSM cũng liệt kê những thứ sau. Cuốn sách này không bàn thêm về chúng.

- **CMMI:** một mô hình để thiết lập, quản lý và cải tiến dịch vụ và quy trình.
- **TOGAF:** một khung nối mục tiêu kinh doanh với mục tiêu kiến trúc.
- **Microsoft Operations Framework:** hướng dẫn quản lý dịch vụ dựa trên công nghệ của Microsoft.
- **Application Services Library và Business Information Services Library:** các khung cho quản lý ứng dụng và quản lý thông tin.
- **USM:** một hệ thống dựa trên nguyên tắc do chính phủ Hà Lan áp dụng.

Bài viết thêm rằng các khung ITSM đã dựa trên ISO 9000, ISO/IEC 27000 và CMMI. Quản lý bảo mật có họ tiêu chuẩn riêng (xem Chủ đề 3.13 — Quản lý an toàn thông tin).

### Agile và DevOps trong các tiêu chuẩn

Bài viết về ISO/IEC 20000 liệt kê một phần gần đây của tiêu chuẩn với hướng dẫn về agile và DevOps. Điều này đáng chú ý vì nó cho thấy tổ chức tiêu chuẩn coi các cách làm việc agile là thứ một hệ thống quản lý dịch vụ phải dung nạp. Bài viết không đưa chi tiết về nội dung của nó, nên hãy đọc chính tiêu chuẩn nếu bạn cần. Trong khi đó, ITIL 4 tự mô tả là căn chỉnh với agile, DevOps và lean (xem Chủ đề 2.2 — ITIL), và bài viết Wikipedia về ITSM hoàn toàn không nhắc đến agile. Các nguồn khác nhau về mức độ bắt kịp.

### Lựa chọn

Không có một khung đúng duy nhất. Một cách chọn hợp lý là hỏi bạn cần gì:

| Nếu bạn cần… | Hãy cân nhắc… |
|---|---|
| Một từ vựng chung và ý tưởng cho các thực hành | ITIL |
| Chứng nhận hệ thống quản lý dịch vụ của bạn cho khách hàng hoặc đấu thầu | ISO/IEC 20000 |
| Một tập yêu cầu ngắn, có thể kiểm toán cho một nhóm nhỏ | FitSM |
| Quản trị và kiểm soát CNTT trong doanh nghiệp, gắn với mục tiêu kinh doanh | COBIT |
| Đánh giá năng lực quy trình | CMMI |

Bảng này là tóm tắt của cuốn sách, không phải khuyến nghị của bất kỳ chủ sở hữu khung nào.

## Thực hành tốt

1. **Bắt đầu với câu hỏi bạn cần trả lời.** Viết ra điều bạn cần: từ vựng, chứng nhận, kiểm soát hay đánh giá. Chọn khung trả lời được nó, không phải khung có tiếp thị tốt nhất.
2. **Học sự khác biệt giữa hướng dẫn và tiêu chuẩn.** Dạy nhóm rằng chứng chỉ ITIL dành cho cá nhân, chứng nhận ISO/IEC 20000 dành cho tổ chức và COBIT là một mô hình quản trị. Nhiều nhầm lẫn về hợp đồng và kiểm toán bắt đầu từ đây.
3. **Tìm hiểu khách hàng và cơ quan quản lý thực sự yêu cầu gì.** Hỏi điều khoản hay yêu cầu chính xác. Thường yêu cầu là về một "khung được công nhận", và một mô tả ngắn, trung thực về thực hành của bạn là đủ.
4. **Dùng văn bản tiêu chuẩn, không phải bản tóm tắt, cho tuân thủ.** Khi bạn tuyên bố sự phù hợp, hãy làm việc từ tiêu chuẩn ISO hoặc ấn phẩm của chủ sở hữu khung. Các bản tóm tắt, kể cả bản này, chỉ để định hướng.
5. **Vẽ thực hành của bạn một lần, không phải bốn lần.** Nếu bạn phải thỏa mãn nhiều hơn một khung, hãy xây một mô tả duy nhất về thực hành và ánh xạ nó sang từng khung, thay vì viết các tài liệu riêng.
6. **Giữ hệ thống nhỏ hết mức có thể.** ISO/IEC 20000 đòi một hệ thống quản lý dịch vụ và các bản ghi. Đáp ứng từng yêu cầu bằng cách tiếp cận nhẹ nhất mà hiệu quả, và tự động hóa bằng chứng từ công cụ của bạn.
7. **Chú ý phạm vi.** Một chứng chỉ bao phủ một phạm vi nêu rõ. Chọn một phạm vi phản ánh các dịch vụ và nhóm thật, và đừng loại bỏ những phần làm cho chứng chỉ khó đạt.
8. **Kiểm tra hướng dẫn agile và DevOps trong các tiêu chuẩn bạn dùng.** Khi một tiêu chuẩn có hướng dẫn về agile và DevOps, hãy đọc nó trước khi tranh luận với kiểm toán viên về cách một nhóm agile đáp ứng một yêu cầu.
9. **Cân nhắc các lựa chọn nhẹ hơn cho các nhóm nhỏ.** FitSM hoặc một tập con của ITIL có thể hợp với một nhóm nhỏ hơn một hệ thống đầy đủ được chứng nhận. Ghi lại điều bạn từ bỏ, như chứng nhận bên ngoài.
10. **Giữ bảo mật và quản lý dịch vụ căn chỉnh.** Nếu bạn dùng ISO/IEC 27001 cho an toàn thông tin, hãy chia sẻ bản ghi và buổi rà soát với hệ thống quản lý dịch vụ của bạn để tránh trùng lặp công việc (xem Chủ đề 3.13 — Quản lý an toàn thông tin).
11. **Ghi lại việc điều chỉnh của bạn.** Ghi phần nào của một khung bạn dùng, phần nào không và vì sao. Điều này bảo vệ bạn trong kiểm toán và giúp nhân viên mới.
12. **Rà soát hằng năm.** Các tiêu chuẩn và khung thay đổi. Chỉ định ai đó theo dõi cập nhật và báo cáo điều quan trọng với nhóm của bạn (xem Chủ đề 6.4 — Lộ trình học tập và chứng chỉ).

## Câu hỏi để thảo luận với nhóm của bạn

**Khung hay tiêu chuẩn nào trong số này chúng ta bắt buộc phải dùng, và cái nào chúng ta dùng theo thói quen?**

Liệt kê những gì khách hàng, hợp đồng, cơ quan quản lý và quản lý thực sự yêu cầu, kèm tài liệu nói vậy. Rồi liệt kê những gì nhóm dùng mà không có yêu cầu. Hai danh sách thường khác nhau nhiều hơn dự kiến. Người điều phối có thể hỏi ai đã đưa từng cái vào đầu tiên và vì sao. Tiếp theo, tìm lời lẽ chính xác của bất kỳ yêu cầu nào thúc đẩy công việc.

**Nếu một khách hàng hỏi chúng ta có "được chứng nhận ITIL" không, chúng ta sẽ trả lời gì?**

Luyện một câu trả lời trung thực: cá nhân có thể được cấp chứng chỉ, tổ chức thì không, và đây là điều chúng tôi làm. So sánh các câu trả lời. Một số sẽ nói quá. Bàn khách hàng có lẽ cần gì và bằng chứng nào có thể đáp ứng, như chứng nhận ISO/IEC 20000 hay một mô tả thực hành. Thống nhất một câu mà mọi người đều dùng được.

**Chứng nhận ISO/IEC 20000 sẽ tốn chúng ta bao nhiêu, và chúng ta được gì?**

Hỏi khách hàng hay thị trường nào sẽ coi trọng nó và nhóm sẽ phải đổi gì. Đừng đoán chi phí; hãy thu thập báo giá thật hoặc hỏi một đồng nghiệp đã làm. Liệt kê những lợi ích bạn mô tả được: một nhãn được công nhận, một hệ thống có kỷ luật, tiếp cận các cuộc đấu thầu. Quyết định có nên điều tra thêm không.

**Bản ghi phục vụ kiểm toán của chúng ta đến từ đâu, và công cụ của chúng ta có thể tạo ra chúng tự động không?**

Liệt kê các bản ghi kiểm toán viên hỏi và mỗi bản đến từ đâu. Nhiều bản có thể đến từ kiểm soát phiên bản, công cụ ticket và giám sát nếu được cấu hình với ý đó. Hỏi bản ghi nào được tạo bằng tay và vì sao. Chọn một cái để tự động hóa.

**Các thực hành agile của chúng ta khớp với điều các tiêu chuẩn mong đợi ra sao, và khoảng trống ở đâu?**

Lấy một yêu cầu kiểm toán viên quan tâm, như ủy quyền thay đổi, và mô tả một nhóm agile đáp ứng nó thế nào. Khi tiêu chuẩn có hướng dẫn về agile và DevOps, hãy cùng đọc đoạn liên quan. Ghi các khoảng trống về bằng chứng, không phải về ý định.

**Ai đang theo dõi các thay đổi trong những khung này cho chúng ta?**

Hỏi ai đọc thông báo từ chủ sở hữu khung và các tổ chức tiêu chuẩn. Câu trả lời thường gặp là "không ai". Quyết định ai sẽ làm, họ báo cáo thế nào và khi nào. Người điều phối có thể đề xuất một ghi chú ngắn mỗi quý liệt kê điều đã đổi và nó có quan trọng không.

## Trong thực tế: một ví dụ agile ITIL

Một công ty phần mềm 120 người bán một sản phẩm xếp lịch được lưu trữ cho các bệnh viện và đại học. Hồ sơ đấu thầu của một khách hàng đại học lớn đòi "một hệ thống quản lý dịch vụ CNTT được chứng nhận". Những người sáng lập đã cho rằng trưởng nhóm hỗ trợ có đào tạo ITIL là đủ. Trưởng nhóm hỗ trợ giải thích rằng chứng chỉ ITIL áp dụng cho cá nhân, và hồ sơ đấu thầu nhiều khả năng có nghĩa là ISO/IEC 20000.

Trưởng bộ phận vận hành điều tra. Cô đọc lời lẽ của hồ sơ đấu thầu, nêu tên ISO/IEC 20000-1, và hỏi khách hàng họ kỳ vọng phạm vi nào. Cô đọc mục lục của tiêu chuẩn và so sánh mười điều khoản của nó với các bản ghi hiện có của công ty, chủ yếu đến từ công cụ ticket, lịch sử thay đổi và các buổi rà soát sự cố. Cô thấy phần lớn bằng chứng đã tồn tại, nhưng chưa có chính sách quản lý dịch vụ nào được ghi lại, chưa có rà soát nhà cung cấp chính thức và chưa có rà soát của ban quản lý. Cô cũng thấy tiêu chuẩn nay có một phần hướng dẫn về agile và DevOps, giúp cô giải thích các bản phát hành hằng tuần của công ty cho một kiểm toán viên tiềm năng.

Công ty quyết định theo đuổi chứng nhận chỉ cho sản phẩm được lưu trữ, với một bộ tài liệu khiêm tốn và một buổi rà soát của ban quản lý mỗi quý. Họ lên kế hoạch khoảng một năm làm việc. Không phải mọi thứ đều suôn sẻ. Hai kỹ sư phản đối các bản ghi thêm và một nhà cung cấp từ chối cung cấp báo cáo rà soát dịch vụ chính thức. Trưởng bộ phận vận hành thay một số bản ghi thủ công bằng các bản xuất từ công cụ của công ty, và thương lượng một thỏa thuận rà soát nhẹ hơn với nhà cung cấp. Công ty thắng thầu, và quyết định xem xét ở cuộc kiểm toán giám sát tiếp theo liệu hệ thống giúp hay cản trở các bản phát hành hằng tuần.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối gặp những khung này dưới dạng yêu cầu từ khách hàng và kiểm toán viên. Hãy tìm hiểu yêu cầu nào áp dụng, và hỏi bằng chứng nào được chấp nhận. Nhiều yêu cầu có thể được đáp ứng từ các công cụ bạn đã dùng. Hãy đề nghị giải thích quy trình phát hành của bạn bằng ngôn ngữ của tiêu chuẩn.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành thường gánh hệ thống quản lý. Hãy giữ các bản ghi hữu ích, với mục đích được nêu cho mỗi bản. Để ý các yêu cầu trùng lặp giữa các khung, và ánh xạ chúng một lần. Chia sẻ kế hoạch với các nhóm phân phối để bản ghi là sản phẩm phụ của công việc chứ không phải một tác vụ riêng.

### Lãnh đạo và quản trị

Lãnh đạo quyết định áp dụng khung nào và đầu tư bao nhiêu cho chứng nhận. Hãy hỏi luận chứng kinh doanh là gì, và khách hàng thực sự yêu cầu gì. Hãy cảnh giác với việc mua chứng nhận như một cái nhãn. Bảo đảm hệ thống giúp tổ chức cải tiến, và có người sở hữu nó.

### Khách hàng và người dùng

Khách hàng đòi chứng nhận thường muốn sự bảo đảm. Hãy hỏi nhà cung cấp chứng chỉ của họ bao phủ tiêu chuẩn và phạm vi nào, và cái gì nằm ngoài. Một chứng chỉ là bằng chứng về một hệ thống quản lý, không phải bảo đảm cho bất kỳ kết quả riêng lẻ nào.

## Các kiểu thất bại thường gặp

- **Nhầm chứng chỉ cá nhân với chứng nhận tổ chức.** Các nhóm tuyên bố "được chứng nhận ITIL" cho một công ty. Thay vào đó, nêu chính xác cái gì được chứng nhận và bởi ai.
- **Đuổi theo chứng nhận như một cái nhãn.** Hệ thống tồn tại cho kiểm toán, không cho cải tiến. Thay vào đó, trước hết làm các bản ghi hữu ích cho nhóm.
- **Trùng lặp tài liệu giữa các khung.** Mỗi tiêu chuẩn có một tập hồ sơ riêng. Thay vào đó, mô tả thực hành của bạn một lần và ánh xạ nó.
- **Thu hẹp phạm vi để tránh phần khó.** Chứng chỉ loại trừ các dịch vụ khách hàng quan tâm. Thay vào đó, chọn một phạm vi phản ánh các dịch vụ thật.
- **Dựa vào bản tóm tắt.** Các tuyên bố về sự phù hợp dựa trên bài blog. Thay vào đó, làm việc từ văn bản của tiêu chuẩn hoặc chủ sở hữu khung.
- **Bỏ qua hướng dẫn agile.** Các nhóm tranh luận với kiểm toán viên mà không đọc phần của tiêu chuẩn nói về agile và DevOps. Thay vào đó, đọc nó và chuẩn bị ví dụ.
- **Tài liệu hóa quá mức.** Hệ thống sinh ra nhiều bản ghi hơn bất kỳ ai đọc. Thay vào đó, gắn mỗi bản ghi với một mục đích và tự động hóa bằng chứng.
- **Quên các thay đổi.** Tiêu chuẩn tiến lên và nhóm không nhận ra. Thay vào đó, chỉ định ai đó theo dõi cập nhật.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Hiểu biết về các khung | Tên được dùng lỏng lẻo | Một số nhân viên nói được mỗi khung dùng để làm gì | Các nhóm chia sẻ một mô tả ngắn, chính xác về các khung đang dùng | Việc dùng các khung được rà soát theo yêu cầu và kết quả | Các nhóm, khách hàng và nhà cung cấp chia sẻ hiểu biết chính xác |
| Yêu cầu và phạm vi | Yêu cầu được giả định | Một số yêu cầu được truy về tài liệu | Yêu cầu và phạm vi được ghi lại | Sự tuân thủ và phạm vi được rà soát và khoảng trống được theo dõi | Yêu cầu được căn chỉnh với đối tác và khách hàng |
| Bằng chứng | Bằng chứng được tập hợp bằng tay cho mỗi yêu cầu | Một số bản ghi được tạo từ công cụ | Bằng chứng chủ yếu đến từ công cụ và được mô tả nhất quán | Chất lượng bằng chứng được đo và cải thiện | Bằng chứng được chia sẻ tự động với kiểm toán viên và đối tác |
| Cập nhật | Thay đổi của các khung không được để ý | Một số người theo dõi thông báo | Một người được chỉ định báo cáo thay đổi theo khoảng đặt trước | Thay đổi được đánh giá và hành động theo | Thay đổi được dự đoán và xử lý cùng đối tác |

## Danh mục kiểm tra

- [ ] Chúng ta có thể nêu khung và tiêu chuẩn nào mà khách hàng, hợp đồng hay cơ quan quản lý thực sự yêu cầu.
- [ ] Chúng ta biết cái nào là hướng dẫn, cái nào là tiêu chuẩn có thể chứng nhận và cái nào là mô hình quản trị.
- [ ] Các tuyên bố của chúng ta về chứng nhận là chính xác và nêu rõ phạm vi.
- [ ] Chúng ta làm việc từ văn bản của tiêu chuẩn hoặc chủ sở hữu cho mọi tuyên bố tuân thủ.
- [ ] Thực hành của chúng ta được mô tả một lần và ánh xạ sang từng khung chúng ta phải thỏa mãn.
- [ ] Bằng chứng cho kiểm toán chủ yếu đến từ công cụ của chúng ta.
- [ ] Chúng ta đã đọc hướng dẫn agile và DevOps trong các tiêu chuẩn áp dụng cho mình.
- [ ] Có người được chỉ định theo dõi cập nhật và báo cáo chúng.
- [ ] Các quyết định điều chỉnh của chúng ta được ghi lại.
- [ ] Chúng ta đã xem xét phạm vi của mình có khớp với các dịch vụ thật không.

## Lời nhắc AI

**Mục đích: ánh xạ một yêu cầu của khách hàng sang văn bản khung ủng hộ nó.**

```text
A customer or auditor has made this requirement: [paste the exact wording and where it appeared, for example a tender clause].

Here is the text of the relevant standard or framework, which I have copied from the owner's publication: [paste only text you are entitled to use; keep it short].

Using only the pasted text, say what the requirement appears to ask for, what is unclear, and what questions I should put to the customer. Do not describe the contents of any standard that I have not pasted. Do not say whether we comply. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: mô tả thực hành của bạn một lần để có thể ánh xạ sang nhiều khung.**

```text
Help me write a single plain-language description of how we handle [practice, e.g. "changes to production"].

How it works today, in steps, with the tools and records involved: [paste].
Frameworks we need to map it to: [list names; I will paste the relevant requirement text for each].

Produce a description in short numbered steps, then a table with one row per step and one column per framework showing which pasted requirement the step seems to address (only from my pasted text). Mark gaps as questions, not conclusions. Do not claim conformance. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: chuẩn bị trả lời "các bạn có được chứng nhận ITIL không?" một cách trung thực.**

```text
Write a short, honest reply to a customer who asks whether our company is "ITIL certified."

Facts I have verified from official sources: [paste, for example that certification in ITIL applies to individuals; and list the certifications our staff hold].
What we actually do: [describe our practice in a few sentences].
Other certifications we hold or are considering: [list].

The reply should be polite, accurate, under 150 words, and avoid overclaiming. Offer evidence we could share. Use only the facts I gave. Ask clarifying questions first if anything is missing, and list what you are unsure of.
```

**Mục đích: lên kế hoạch bằng chứng mà một cuộc kiểm toán quản lý dịch vụ có thể đòi.**

```text
We expect an audit of our service management against [standard name and edition].

The records we produce today, and the tool each comes from: [list].
The requirement areas I know of, with the wording I have from the standard: [paste, or write "not yet read"].

Create a table of likely evidence by requirement area (from my pasted text only), the record we already have, the gap, and whether the record could come from a tool automatically. Do not invent requirements. Ask clarifying questions first, mark assumptions, and list what you are unsure of.
```

## Kỹ năng AI

- [enterprise-architecture](../../../../skills/enterprise-architecture/SKILL.md): dùng để đặt các khung quản lý dịch vụ vào bức tranh rộng hơn của kiến trúc doanh nghiệp và quản trị.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): dùng để lập kế hoạch chuẩn bị cho một cuộc kiểm toán theo một tiêu chuẩn hoặc yêu cầu hợp đồng.
- [compliance-testing](../../../../skills/compliance-testing/SKILL.md): dùng để thiết kế các kiểm tra tạo ra bằng chứng về sự phù hợp một cách tự động.
- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng khi phạm vi chứng nhận phụ thuộc vào nhà cung cấp và bạn cần lập kế hoạch rà soát nhà cung cấp.
- [project-management-body-of-knowledge](../../../../skills/project-management-body-of-knowledge/SKILL.md): dùng khi các khung như COBIT hay PMBOK Guide gặp văn phòng dự án của bạn.

## Nguồn chính

- **ISO/IEC 20000-1** (Tổ chức Tiêu chuẩn hóa Quốc tế): chính tiêu chuẩn; hãy đọc phạm vi và các đề mục điều khoản trong danh mục ISO trước khi đưa ra tuyên bố.
- **ISO/IEC 20000** (Wikipedia): lịch sử, các phần và bối cảnh chứng nhận của tiêu chuẩn, kèm trích dẫn.
- **COBIT** (ISACA, và Wikipedia): các ấn phẩm riêng của ISACA là có thẩm quyền; bài viết Wikipedia cho lịch sử và cấu trúc nhưng nguồn dẫn yếu.
- **FitSM** (Wikipedia và dự án FitSM): một lựa chọn thay thế ngắn, có giấy phép tự do; hãy kiểm tra các trang của dự án để biết phiên bản hiện tại.

## Tài liệu tham khảo

1. IT service management — Wikipedia — https://en.wikipedia.org/wiki/IT_service_management
2. ISO/IEC 20000 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_20000
3. COBIT — Wikipedia — https://en.wikipedia.org/wiki/COBIT
4. FitSM — Wikipedia — https://en.wikipedia.org/wiki/FitSM
5. ITIL — Wikipedia — https://en.wikipedia.org/wiki/ITIL
6. CMMI — Wikipedia — https://en.wikipedia.org/wiki/CMMI
7. TOGAF — Wikipedia — https://en.wikipedia.org/wiki/TOGAF
8. ISACA — Wikipedia — https://en.wikipedia.org/wiki/ISACA
9. ISO/IEC 27001 — Wikipedia — https://en.wikipedia.org/wiki/ISO/IEC_27001
10. Microsoft Operations Framework — Wikipedia — https://en.wikipedia.org/wiki/Microsoft_Operations_Framework
