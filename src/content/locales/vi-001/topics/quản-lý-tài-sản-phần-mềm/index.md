# Quản lý tài sản phần mềm

**Quản lý tài sản phần mềm bảo đảm một tổ chức mua phần mềm mình cần, dùng những gì mình mua và tuân theo các điều khoản mình đã chấp nhận, và với các nhóm agile, điều đó nay nghĩa là theo dõi cả các thành phần mã nguồn mở và gói thuê bao chứ không chỉ các sản phẩm có giấy phép.**

## Vì sao điều này quan trọng

Phần mềm là một trong những chi phí lớn nhất và ít thấy nhất trong CNTT. Giấy phép được mua cho những người đã rời đi, gói thuê bao gia hạn mà không ai để ý, và sản phẩm được cài theo cách giấy phép không cho phép. Mỗi điều là một chi phí hay một rủi ro. Một cuộc kiểm toán của nhà cung cấp có thể biến một sai lệch nhỏ thành một hóa đơn lớn, và một thành phần chưa được vá trong một ứng dụng bị lãng quên có thể mở cửa cho kẻ tấn công.

Các nhóm agile đổi bức tranh. Lập trình viên kéo thư viện vào chỉ bằng một lệnh, và các ứng dụng hiện đại phần lớn được lắp ráp từ các bộ phận của bên thứ ba và mã nguồn mở. Bài viết Wikipedia về chuỗi cung ứng phần mềm báo cáo rằng phần mềm mã nguồn mở được tìm thấy trong 96 phần trăm các kho mã thương mại mà một nhà cung cấp phân tích năm 2024, trích dẫn Synopsys. Các nhóm cũng mua dịch vụ đám mây và gói thuê bao bằng thẻ, ngoài quy trình mua sắm. Quản lý tài sản phần mềm (SAM) vì thế đã lớn vượt ra khỏi việc đếm các lần cài đặt của vài sản phẩm lớn thành một thực hành bao gồm cái được dùng, cái đang nợ và cái được tin cậy.

[Bài viết Wikipedia về quản lý tài sản phần mềm](https://en.wikipedia.org/wiki/Software_asset_management) mô tả SAM là một thực hành kinh doanh để quản lý và tối ưu hóa việc mua, triển khai, bảo trì, sử dụng và thanh lý phần mềm, với mục tiêu giảm chi phí CNTT, hạn chế rủi ro kinh doanh và pháp lý, và cải thiện năng suất người dùng cuối. Nó không bao gồm dịch vụ đám mây, SBOM hay mô hình trưởng thành, nên chủ đề này thêm các bài về chuỗi cung ứng phần mềm và phần mềm mã nguồn mở. Chủ đề này mô tả thực hành và không đưa tư vấn pháp lý; điều khoản giấy phép khác nhau, và nguồn đúng là văn bản giấy phép hay hợp đồng.

## Các khái niệm cốt lõi

### SAM là gì

Theo Wikipedia, SAM là một phần của quản lý tài sản CNTT (xem Chủ đề 4.1 — Quản lý tài sản CNTT). Nó trích dẫn ITIL là mô tả nó gồm việc quản lý, kiểm soát và bảo vệ tài sản phần mềm hiệu quả. Các mục tiêu chiến lược của nó, như bài viết liệt kê, gồm giảm chi phí phần mềm và hỗ trợ qua hợp đồng số lượng lớn và phân bổ lại giấy phép không dùng, thực thi chính sách an ninh và các chuẩn máy tính để bàn, máy chủ và di động, cải thiện năng suất bằng cách triển khai công nghệ nhanh và đáng tin hơn, hạn chế gánh nặng quản lý bằng tự động hóa, và thiết lập chính sách cho việc mua, triển khai, sử dụng và cho ngừng.

### Tuân thủ giấy phép

Bài viết mô tả SAM là cân bằng số giấy phép đã mua với số thực sự được tiêu thụ, và bảo đảm việc sử dụng khớp với điều khoản giấy phép của từng nhà cung cấp. Nó lưu ý rằng số lần cài đặt là thước đo tiêu thụ phổ biến nhất, nhưng một số phần mềm được cấp phép theo người dùng, vốn, bộ xử lý hay lõi CPU. Các tổ chức có thể giảm trách nhiệm trong các cuộc kiểm toán của nhà cung cấp hay bên thứ ba như Business Software Alliance, bài viết nói, qua kiểm kê phần mềm liên tục, chính sách mua sắm và công cụ. Bài viết không mô tả quy trình kiểm toán. Điểm của bài tập là biết **quyền sử dụng** của bạn (cái bạn được phép dùng), **mức tiêu thụ** của bạn (cái bạn dùng) và khoảng cách giữa hai thứ.

### Ba câu hỏi

Một thực hành SAM trả lời ba câu hỏi cho mỗi sản phẩm quan trọng:

| Câu hỏi | Nó cần gì |
|---|---|
| Chúng ta có quyền gì? | Hợp đồng, điều khoản giấy phép, hóa đơn và bằng chứng mua |
| Chúng ta đang dùng gì? | Dữ liệu kiểm kê và sử dụng từ khám phá và đo đếm |
| Khoảng cách là gì, và chúng ta làm gì với nó? | So sánh, quyết định mua, phân bổ lại hoặc gỡ bỏ |

Một khoảng cách có thể chạy theo cả hai hướng: thiếu giấy phép, là rủi ro tuân thủ, và thừa giấy phép, là lãng phí.

### Tiêu chuẩn: ISO/IEC 19770

Bài viết liệt kê các phần của họ ISO/IEC 19770: 19770-1:2017 (yêu cầu hệ thống quản lý tài sản CNTT, một khung quy trình có thể được triển khai theo các bậc từng giai đoạn), 19770-2:2015 (thẻ định danh phần mềm), 19770-3:2016 (một lược đồ quản lý quyền sử dụng cho chi tiết giấy phép, hợp đồng và hóa đơn), 19770-4:2017 (dữ liệu đo mức sử dụng nguồn lực) và 19770-5:2015 (tổng quan và từ vựng). Bài viết nói tiêu chuẩn định danh phần mềm được IBM, Microsoft và Adobe hỗ trợ. Hãy kiểm tra các tiêu chuẩn để có ấn bản hiện hành và nội dung chính xác.

### Công nghệ SAM và giới hạn của chúng

Bài viết liệt kê các công cụ cho kiểm kê phần mềm, quản lý giấy phép, đo đếm, kiểm soát ứng dụng, triển khai, quản lý bản vá, quản lý yêu cầu và lập danh mục sản phẩm. Nó cũng đưa một ví dụ về quy mô: các quy tắc đo đếm trong System Center Configuration Manager của Microsoft hoạt động tốt cho các hệ thống nhỏ nhưng tạo ra khối lượng dữ liệu không quản lý nổi ở quy mô doanh nghiệp. Công cụ giúp ích, nhưng chúng cần một câu hỏi rõ ràng và một chủ sở hữu.

### Phần mềm mã nguồn mở

Wikipedia định nghĩa phần mềm mã nguồn mở là phần mềm có mã nguồn công khai, và người dùng có thể dùng, nghiên cứu, sửa đổi và phân phối, thường theo một giấy phép mở. Open Source Initiative duy trì định nghĩa phổ biến nhất, với mười tiêu chí và danh sách các giấy phép được phê duyệt, dù bài viết nói OSI không có thẩm quyền pháp lý với thuật ngữ này. Nó mô tả hai họ giấy phép:

| Họ | Nó đòi hỏi gì ở người nhận | Ví dụ được nêu |
|---|---|---|
| **Cho phép rộng rãi (permissive)** | Giữ thông báo bản quyền và kèm giấy phép; không có nghĩa vụ phát hành mã của chính bạn theo cùng giấy phép | BSD, MIT, Apache |
| **Copyleft** | Dùng cùng giấy phép cho ít nhất một số phần của thứ bạn phân phối (copyleft mạnh áp dụng cho mọi tác phẩm phái sinh; copyleft yếu chỉ trong một số điều kiện) | GNU GPL (mạnh); MPL, EPL (yếu) |

Cả hai họ, bài viết nói, đều đòi giữ thông báo bản quyền và cung cấp một bản sao giấy phép cùng với mã. Nó trích dẫn *Jacobson v Katzer* (2008), trong đó một tòa án thực thi các điều khoản của một giấy phép mở, gồm ghi công, theo luật bản quyền. Nó lưu ý rằng các tổ chức đang lập các văn phòng chương trình mã nguồn mở để quản lý chiến lược của mình. Các điều khoản mã nguồn mở là nghĩa vụ thật. Điều nào áp dụng phụ thuộc vào cách bạn dùng và phân phối phần mềm; hãy hỏi bộ phận pháp lý và đọc giấy phép.

### Chuỗi cung ứng phần mềm và SBOM

Bài viết về chuỗi cung ứng phần mềm mô tả nó là các thành phần, thư viện, công cụ và quy trình dùng để phát triển, build và công bố một artifact phần mềm. Nó nêu các rủi ro: kẻ tấn công có thể xâm phạm một thành phần thượng nguồn để tiếp cận mọi người dùng hạ nguồn, và trích dẫn các ví dụ gồm Log4Shell năm 2021, vụ tấn công SolarWinds năm 2020 và cửa hậu XZ Utils năm 2024. Nó mô tả một **bảng kê vật liệu phần mềm (SBOM)** là bản kiểm kê các thành phần trong một artifact phần mềm, gồm các phần mã nguồn mở và độc quyền, tương ứng phần mềm của bảng kê vật liệu sản xuất. SBOM hỗ trợ phân tích lỗ hổng và giấy phép.

Bài viết báo cáo các giới hạn: bảng tính không thể được bổ sung tự động bằng dữ liệu lỗ hổng và nên được lưu trong một kho truy vấn được; SBOM theo chính sách hiếm, với một nghiên cứu thấy khoảng 0,56 phần trăm các kho GitHub phổ biến chứa chúng; chưa đến một nửa số dự án được kiểm thử có SBOM trong các bản phát hành và nhiều cái không đầy đủ; và một nghiên cứu về sáu công cụ SBOM Java thấy thường xuyên không chính xác. Nó lưu ý rằng chỉ riêng khả năng nhìn thấy không thể bảo đảm tính toàn vẹn. Nó cũng báo cáo rằng Sắc lệnh Hành pháp 14028 của Hoa Kỳ, được ký ngày 12 tháng 5 năm 2021, chỉ đạo NIST và NTIA ban hành hướng dẫn về an ninh chuỗi cung ứng phần mềm gồm SBOM, và các yếu tố tối thiểu của NTIA chia thành trường dữ liệu, hỗ trợ tự động hóa, và thực hành và quy trình. Bài viết không nêu các định dạng SBOM hay mô tả Đạo luật Khả năng Chống chịu Mạng của Liên minh Châu Âu. Các quy tắc về SBOM khác nhau theo quốc gia và ngành; hãy hỏi bộ phận tuân thủ của bạn điều gì áp dụng cho bạn.

### SaaS và gói thuê bao đám mây

Bài viết SAM không bàn về phần mềm như một dịch vụ (SaaS) hay đám mây. Kinh nghiệm thực tế cho thấy phần mềm thuê bao tạo ra những vấn đề mới: mua ngoài bộ phận mua sắm, ghế mà không ai gỡ, các công cụ chồng lấn và dữ liệu đặt ở nhà cung cấp mà không được rà soát (xem Chủ đề 3.14 — Quản lý nhà cung cấp và Chủ đề 4.5 — Quản lý tài chính CNTT và FinOps). SAM cho gói thuê bao tập trung vào việc khám phá cái gì được mua, ai sở hữu, ai dùng và khi nào gia hạn.

### Giới hạn của các nguồn

Bài viết SAM không bao gồm quy trình kiểm toán, danh mục các loại giấy phép hay mô hình trưởng thành, và các tham chiếu chính của nó gồm các mục cũ từ 2006 đến 2009. Bài viết về chuỗi cung ứng phần mềm báo cáo các con số từ khảo sát và nghiên cứu có chất lượng không đồng đều. Hãy dùng các nguồn để định khung câu hỏi, và dùng văn bản giấy phép và hợp đồng để có câu trả lời.

## Thực hành tốt

1. **Bắt đầu với các sản phẩm quan trọng nhất.** Chọn vài sản phẩm lớn nhất hay rủi ro nhất theo chi phí hoặc mức phơi bày pháp lý và làm cho quyền sử dụng, kiểm kê và mức sử dụng rõ ràng cho chúng trước.
2. **Giữ bằng chứng về quyền sử dụng.** Lưu hợp đồng, hóa đơn và điều khoản giấy phép nơi chúng tìm được, và nối chúng với bản ghi sản phẩm. Bạn không thể bảo vệ một lập trường trong kiểm toán nếu không có bằng chứng.
3. **Biết thước đo giấy phép.** Với mỗi sản phẩm, ghi cách nó được đếm: theo người dùng, thiết bị, bộ xử lý, lõi hay cách khác. Đếm số lần cài khi giấy phép tính theo lõi cho ra câu trả lời sai.
4. **So sánh quyền sử dụng với mức dùng đều đặn.** Ít nhất hằng quý cho các sản phẩm lớn, so sánh cái bạn được dùng với cái bạn đang dùng. Hành động theo khoảng cách bằng cách mua, phân bổ lại hoặc gỡ bỏ.
5. **Thu hồi giấy phép không dùng.** Dùng dữ liệu sử dụng để tìm giấy phép không ai dùng trong một khoảng xác định, và gán lại hoặc hủy chúng sau khi kiểm tra với chủ sở hữu.
6. **Kiểm soát cách phần mềm đi vào.** Làm cho việc xin phần mềm được duyệt dễ và việc mua ngoài quy trình khó. Đưa gói thuê bao và mua bằng thẻ vào các buổi rà soát chi tiêu.
7. **Coi thành phần mã nguồn mở là tài sản.** Giữ một bản kiểm kê các thành phần mã nguồn mở trong sản phẩm của bạn, với giấy phép và phiên bản. Kiểm tra giấy phép so với cách bạn dùng và phân phối phần mềm, kèm tư vấn pháp lý.
8. **Tạo SBOM trong quá trình build.** Tạo tự động một bảng kê vật liệu phần mềm cho mỗi build, lưu nó ở nơi truy vấn được, và dùng nó để ứng phó lỗ hổng và trả lời câu hỏi của khách hàng. Kiểm tra SBOM so với build, vì công cụ có thể không chính xác.
9. **Theo dõi gói thuê bao.** Với mỗi cái, ghi chủ sở hữu, mục đích, chi phí, số ghế, người dùng, ngày gia hạn và dữ liệu được giữ. Rà soát trước khi gia hạn.
10. **Nối phần mềm với dịch vụ.** Ghi dịch vụ nào dùng phần mềm và phiên bản nào, để một lỗ hổng hay thay đổi giấy phép có thể được lần ra các dịch vụ bị ảnh hưởng (xem Chủ đề 4.4 — Quản lý cấu hình).
11. **Chuẩn bị cho kiểm toán một cách bình tĩnh.** Giữ bản ghi luôn mới, chỉ định một đầu mối, và biết quyền và nghĩa vụ của bạn từ hợp đồng. Đừng chờ thông báo mới bắt đầu sắp xếp.
12. **Cho ngừng phần mềm đúng cách.** Gỡ nó khỏi hệ thống, chấm dứt giấy phép và gói thuê bao, và cập nhật bản ghi. Phần mềm không dùng là một chi phí và một bề mặt tấn công.

## Câu hỏi để thảo luận với nhóm của bạn

**Với ba sản phẩm phần mềm đắt nhất của chúng ta, chúng ta có biết mình được dùng gì và đang dùng gì không?**

Hỏi số giấy phép đang giữ và số đang dùng của từng cái. So sánh. Các kết quả phổ biến gây ngạc nhiên: nhiều ghế hơn người dùng, hoặc người dùng vượt quá số ghế. Người điều phối có thể hỏi bằng chứng quyền sử dụng được giữ ở đâu. Lên kế hoạch đối chiếu khoảng cách lớn nhất.

**Mọi người đã mua hay cài phần mềm nào mà không nói với ai?**

Hãy thành thật và không phán xét. Hỏi về công cụ mua bằng thẻ, công cụ miễn phí dùng ở nơi làm việc và tiện ích mở rộng trình duyệt. Các lý do điển hình là tốc độ và quy trình không rõ. Bàn điều gì sẽ làm đường được duyệt đủ nhanh. Thống nhất một bước đăng ký.

**Sản phẩm của chúng ta phụ thuộc vào những thành phần mã nguồn mở nào, và giấy phép của chúng là gì?**

Hỏi có ai lập được một danh sách không. Nếu không, bàn cách tạo nó từ build. Rồi hỏi giấy phép được kiểm tra thế nào. Nhớ rằng nghĩa vụ khác nhau giữa giấy phép cho phép rộng rãi và copyleft. Lên kế hoạch cùng pháp lý để rà soát các trường hợp rủi ro cao.

**Nếu một lỗ hổng nghiêm trọng xuất hiện trong một thư viện phổ biến ngày mai, mất bao lâu để biết chúng ta có dùng nó không?**

Đi qua các bước: ai được báo, bạn tìm kiếm thế nào, bạn biết phiên bản trong từng dịch vụ ra sao. Câu trả lời cho thấy SBOM và kiểm kê sẽ giúp được đến đâu. Thống nhất một cải tiến đầu tiên, như tạo bảng kê vật liệu trong pipeline.

**Gói thuê bao nào gia hạn quý tới, và ai quyết định có giữ không?**

Liệt kê các lần gia hạn. Với mỗi cái, hỏi ai sở hữu, bao nhiêu ghế đang hoạt động và điều gì xảy ra nếu hủy. Thường không ai sở hữu quyết định. Giao chủ sở hữu và thêm một ngày rà soát trước mỗi lần gia hạn.

**Chúng ta sẽ ứng phó thế nào với một thông báo kiểm toán của nhà cung cấp?**

Hỏi ai sẽ xử lý và họ có bằng chứng gì. Bàn bản ghi có đầy đủ không. Mục đích là một kế hoạch bình tĩnh, không phải nỗi sợ kiểm toán. Thống nhất một đầu mối và một danh mục kiểm tra.

## Trong thực tế: một ví dụ agile ITIL

Một dịch vụ bưu chính quốc gia vận hành khoảng 60 ứng dụng nội bộ và một nền tảng theo dõi bưu kiện hướng khách hàng do một nhóm mười lăm người xây dựng. Một nhà cung cấp thông báo cho phòng CNTT về một cuộc kiểm toán giấy phép cho một sản phẩm cơ sở dữ liệu. Cán bộ ITAM thấy hồ sơ giấy phép rải rác trong ba bảng tính và không ai nói được cơ sở dữ liệu hiện chạy trên bao nhiêu lõi bộ xử lý, vì các máy ảo đã được chuyển giữa các máy chủ nhiều lần.

Cán bộ ITAM, một quản trị viên cơ sở dữ liệu và trưởng bộ phận mua sắm tập hợp bằng chứng. Họ thu thập hợp đồng, thước đo giấy phép (theo lõi bộ xử lý), hóa đơn và dữ liệu khám phá về nơi cơ sở dữ liệu chạy. Họ thấy sản phẩm chạy trên nhiều lõi hơn số đã mua ở một môi trường, và ít hơn ở môi trường khác, nơi giấy phép không được dùng. Sau khi nói chuyện với nhà cung cấp, họ phân bổ lại các giấy phép không dùng, mua thêm một số ít và chuyển một môi trường không thiết yếu sang một lựa chọn thay thế miễn phí. Chi phí thấp hơn nhiều so với một phát hiện kiểm toán, nhưng không nhỏ.

Cùng lúc, nhóm nền tảng được một khách hàng lớn yêu cầu danh sách các thành phần phần mềm trong nền tảng theo dõi bưu kiện. Nhóm nhận ra mình không lập được. Họ thêm một bước build tạo bảng kê vật liệu cho mỗi bản phát hành và lưu nó trong một kho. Đầu ra đầu tiên gồm một thư viện có giấy phép mà nhóm pháp lý chưa rà soát, và họ quyết định thay nó. Vấn đề vẫn còn. Công cụ SBOM của nhóm bỏ sót các thành phần trong một ngôn ngữ, và một nhóm nghiên cứu riêng vẫn tiếp tục mua gói thuê bao bằng thẻ phòng ban. Cán bộ ITAM hỏi nhà cung cấp công cụ về khoảng trống, và thuyết phục phòng ban đăng ký các gói thuê bao.

## Bốn góc nhìn

### Nhóm sản phẩm và phân phối

Các nhóm phân phối đưa phần lớn phần mềm vào tổ chức. Hãy ghi các thành phần và gói thuê bao bạn thêm, tạo bảng kê vật liệu trong build của bạn, và hỏi trước khi dùng một thư viện có giấy phép lạ. Chia sẻ phát hiện với pháp lý và an ninh.

### Nhóm dịch vụ và vận hành

Các nhóm vận hành chạy kiểm kê, vá lỗi và đo đếm. Giữ kiểm kê phần mềm nối với dịch vụ, vá nhanh khi lỗ hổng xuất hiện và thu hồi giấy phép không dùng. Giúp bộ phận mua sắm hiểu sản phẩm thực sự được dùng thế nào.

### Lãnh đạo và quản trị

Lãnh đạo sở hữu rủi ro không tuân thủ và chi tiêu. Hãy đòi quyền sử dụng và mức tiêu thụ cho các sản phẩm lớn nhất, một cái nhìn về gói thuê bao, và một kế hoạch cho rủi ro mã nguồn mở và chuỗi cung ứng. Ủng hộ một đường mua sắm đủ nhanh để mọi người dùng nó.

### Khách hàng và người dùng

Khách hàng và người dùng được lợi khi phần mềm sẵn có và an toàn. Hãy xin những gì bạn cần qua đúng đường, trả lại những gì bạn không còn dùng, và nói với nhóm về các công cụ bạn thấy hữu ích. Khách hàng của sản phẩm của bạn có thể xin bảng kê vật liệu; hãy chờ được hỏi.

## Các kiểu thất bại thường gặp

- **Chỉ đếm số lần cài.** Thước đo giấy phép là theo lõi hay người dùng. Thay vào đó, ghi thước đo và đếm đúng thứ.
- **Mất bằng chứng về quyền sử dụng.** Hợp đồng và hóa đơn không tìm thấy. Thay vào đó, lưu chúng cùng bản ghi sản phẩm.
- **Shelfware.** Giấy phép được mua mà không dùng. Thay vào đó, so sánh quyền sử dụng với mức dùng và thu hồi.
- **Mua bóng.** Gói thuê bao mua bằng thẻ thoát khỏi quy trình. Thay vào đó, làm đường được duyệt nhanh và rà soát chi tiêu để tìm ngoại lệ.
- **Thành phần mã nguồn mở không rõ.** Không ai liệt kê được chúng. Thay vào đó, tạo bảng kê vật liệu tự động trong build.
- **Bỏ qua điều khoản giấy phép mã nguồn mở.** Nghĩa vụ copyleft bị bỏ sót. Thay vào đó, kiểm tra giấy phép so với việc sử dụng và phân phối kèm tư vấn pháp lý.
- **Tin công cụ một cách mù quáng.** Công cụ bỏ sót thành phần hoặc liệt kê sai. Thay vào đó, xác thực đầu ra trên một mẫu và hỏi nhà cung cấp về các khoảng trống.
- **Hoảng loạn vì kiểm toán.** Bản ghi được tập hợp sau thông báo. Thay vào đó, giữ bản ghi luôn mới và chỉ định một đầu mối kiểm toán.

## Mô hình trưởng thành

| Chiều | Khởi đầu | Phát triển | Chuẩn hóa | Quản lý | Điều phối |
|---|---|---|---|---|---|
| Quyền sử dụng và mức dùng | Bản ghi rải rác; mức dùng không biết | Sản phẩm lớn có bản ghi quyền sử dụng | Quyền sử dụng và mức dùng được ghi cho sản phẩm chính và so sánh đều đặn | Khoảng cách và giấy phép không dùng được đo và hành động theo | Quyền sử dụng và mức dùng được chia sẻ với tài chính, mua sắm và nhà cung cấp |
| Mua sắm và gói thuê bao | Phần mềm được bất kỳ ai mua | Có đường được duyệt cho một số lần mua | Mua và gói thuê bao theo một đường với chủ sở hữu và ngày gia hạn | Chi tiêu và mức dùng ghế được rà soát trước gia hạn | Mua sắm, sử dụng và hợp đồng được điều phối trong toàn tổ chức |
| Mã nguồn mở và chuỗi cung ứng | Thành phần không rõ | Một số nhóm liệt kê thư viện | Bảng kê vật liệu được tạo trong build và giấy phép được rà soát | Phát hiện lỗ hổng và giấy phép được theo dõi đến khi đóng | Bảng kê vật liệu được chia sẻ với khách hàng và nhà cung cấp khi cần |
| Kiểm toán và tuân thủ | Thông báo kiểm toán gây hoảng loạn | Có một đầu mối | Bản ghi luôn mới và có quy trình kiểm toán | Rủi ro tuân thủ được đo và rà soát | Thực hành tuân thủ được căn chỉnh giữa nhà cung cấp và các khu vực pháp lý |

## Danh mục kiểm tra

- [ ] Với các sản phẩm phần mềm lớn nhất, chúng ta biết quyền sử dụng, thước đo giấy phép và mức dùng.
- [ ] Hợp đồng, hóa đơn và điều khoản giấy phép được lưu cùng bản ghi sản phẩm.
- [ ] Quyền sử dụng và mức dùng được so sánh ít nhất hằng quý cho các sản phẩm lớn.
- [ ] Giấy phép không dùng được thu hồi sau khi kiểm tra với chủ sở hữu.
- [ ] Mua sắm và gói thuê bao theo một đường, với chủ sở hữu và ngày gia hạn được ghi.
- [ ] Chúng ta tạo bảng kê vật liệu trong build cho các sản phẩm chúng ta phát hành hoặc vận hành.
- [ ] Giấy phép mã nguồn mở trong các thành phần của chúng ta được rà soát so với việc sử dụng, kèm tư vấn pháp lý.
- [ ] Chúng ta tìm được dịch vụ nào dùng một thành phần hay sản phẩm cho trước.
- [ ] Một người có tên xử lý các thông báo kiểm toán của nhà cung cấp.
- [ ] Phần mềm đã cho ngừng được gỡ khỏi hệ thống và bản ghi.

## Lời nhắc AI

**Mục đích: so sánh quyền sử dụng và mức tiêu thụ cho một sản phẩm.**

```text
Help me compare entitlement and usage for [product].

License metric (how the vendor counts, with the exact wording from the contract): [paste].
Entitlement (what we purchased, with dates): [paste].
Usage data (installations, users, cores, or whatever the metric requires): [paste real data].

Using only this information, compute the difference between entitlement and usage, in the vendor's unit, and say whether it indicates a shortfall or a surplus. List what is unclear in the contract wording as questions for the vendor or legal. Do not interpret legal terms beyond the text. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: rà soát danh sách thành phần mã nguồn mở về các câu hỏi giấy phép.**

```text
Here is a list of open-source components in our product with name, version, and license as reported by our tooling: [paste].
How we use and distribute the product: [for example internal use only, hosted service, shipped to customers].

Group the licenses into permissive and copyleft families based on the license names. For each group, list the types of question we should put to our legal team given how we use and distribute the product. Flag components with missing or unknown licenses. Do not give legal advice or say what the licenses require; list questions only. List what you are unsure of.
```

**Mục đích: chuẩn bị tra cứu ứng phó lỗ hổng bằng bảng kê vật liệu.**

```text
Help me plan how we would answer: "Do we use [component name and version range] and where?"

What we have today: [for example bills of materials in a repository, a spreadsheet, nothing].
Systems and services in scope: [list].

Describe the steps to find out, who does each, what data they need, what could go wrong, and how long each step might take (leave durations as [to be measured]). Propose one improvement that would shorten the answer. Do not invent our tools. Ask clarifying questions first, and list what you are unsure of.
```

**Mục đích: xây một lần rà soát gói thuê bao cho quý tới.**

```text
Here is a list of our subscriptions with owner, monthly cost, paid seats, active users in the last 90 days, renewal date, and data held: [paste real data].

Using only this data, list renewals in the next 90 days, compute unused seats and their cost for each, and highlight subscriptions with no owner. For each, suggest a question for the owner before renewal. Do not recommend canceling anything; flag candidates for review. List what you are unsure of.
```

## Kỹ năng AI

- [vendor-management](../../../../skills/vendor-management/SKILL.md): dùng để quản lý hợp đồng, gia hạn và quan hệ với các nhà cung cấp phần mềm.
- [legal-compliance-audit](../../../../skills/legal-compliance-audit/SKILL.md): dùng để chuẩn bị cho một cuộc kiểm toán của nhà cung cấp hoặc tuân thủ.
- [budget-forecasting](../../../../skills/budget-forecasting/SKILL.md): dùng để dự báo chi phí phần mềm và gói thuê bao.
- [risk-register](../../../../skills/risk-register/SKILL.md): dùng để ghi rủi ro giấy phép, lỗ hổng và chuỗi cung ứng.
- [security-testing](../../../../skills/security-testing/SKILL.md): dùng để kiểm tra phụ thuộc và build tìm các điểm yếu đã biết.

## Nguồn chính

- **Software asset management** (Wikipedia): định nghĩa, mục tiêu, công nghệ và các phần của ISO/IEC 19770.
- **Software supply chain** (Wikipedia): rủi ro, bảng kê vật liệu phần mềm, số liệu áp dụng và bối cảnh quy định.
- **Open-source software** (Wikipedia): định nghĩa, các họ giấy phép và ghi chú về rủi ro và nghĩa vụ.
- **ISO/IEC 19770** (Tổ chức Tiêu chuẩn hóa Quốc tế): chính họ tiêu chuẩn; hãy đọc các phần hiện hành để có yêu cầu chính xác.

## Tài liệu tham khảo

1. Software asset management — Wikipedia — https://en.wikipedia.org/wiki/Software_asset_management
2. Software supply chain — Wikipedia — https://en.wikipedia.org/wiki/Software_supply_chain
3. Open-source software — Wikipedia — https://en.wikipedia.org/wiki/Open-source_software
4. IT asset management — Wikipedia — https://en.wikipedia.org/wiki/IT_asset_management
5. Software license — Wikipedia — https://en.wikipedia.org/wiki/Software_license
6. Copyleft — Wikipedia — https://en.wikipedia.org/wiki/Copyleft
7. Permissive software license — Wikipedia — https://en.wikipedia.org/wiki/Permissive_software_license
8. Software as a service — Wikipedia — https://en.wikipedia.org/wiki/Software_as_a_service
9. Open Source Initiative — Wikipedia — https://en.wikipedia.org/wiki/Open_Source_Initiative
