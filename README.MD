pandoc-latex-template-vnthesis
===
Đặc biệt cảm ơn các project đã cung cấp mẫu cũng như câu trả lời để hỗ trợ cho mình làm project này:

- [pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template)
- [thesis template](https://github.com/DoHaiSon/Master_Thesis)
- [thesis HUST template](https://www.overleaf.com/latex/templates/bia-triet/ydjvggvbkvhg)

Cùng ngàn vạn câu trả lời trên StackOverflow

# Mục tiêu

- Khi làm báo cáo bằng Word, một số học sinh sinh viên (HSSV) gặp khó khăn trong việc tạo mục lục, đánh số trang, chỉnh
  cỡ chữ, chỉnh lề... cũng như gặp khó khăn trong việc chèn hình ảnh, bảng biểu, công thức toán học, chèn mã nguồn...
- Chúng ta có một công cụ có thể chỉnh đơn giản hơn hoàn toàn bằng các lệnh là latex nhưng latex lại khó dùng, viết rất 
nhiều lệnh, khó nhớ, khó đọc, khó sửa, phải compile mới biết được kết quả
- Mình thấy viết bằng markdown khá đơn giản không mất nhiều thời gian cho việc trình bày mà chỉ chú trọng nội dung đồng 
thời mình cũng phát hiện ra Pandoc một phần mềm mã nguồn mở chuyên để chuyển đổi các dạng văn bản từ file markdown sang
pdf hay word hết sức dễ dàng. Nhờ Pandoc mình hoàn toàn có thể những thêm latex khi compile sang pdf, đáp ứng được mọi kì
vọng của mình.
- Mình không chuyên về Latex, Word cũng chỉ ở mức đủ dùng vậy nên mình tin nó sẽ có ích cho bạn.

# Cài đặt
- Bước 1: Cài đặt Pandoc và Latex
  - Đối với Windows bạn nên sử dụng Chocolatey để cài đặt Pandoc và Texlive
  - Đối với Linux và MacOS bạn nên sử dụng Homebrew để cài đặt Pandoc và Texlive
  - Còn nếu các bạn quá lười mày mò, hãy sử dụng Docker để tải image của mình đã được cài sẵn và tích hợp đầy đủ các plugin,
  các gói latex cần thiết. Chỉ cần `docker pull ngocptblaplafla/pandoc-texlive-full` là xong. Mình cũng dùng nên dễ hỗ trợ
  hơn (**_Recommended_**).

- Bước 2: Tải template (file vnthesis.tex) và cho pandoc theo đường dẫn sau:
  - Linux, macOS: ~/.local/share/pandoc/templates/ hoặc ~/.pandoc/templates/
  - Windows 7+: C:\Users\USERNAME\AppData\Roaming\pandoc\templates\
  - Nếu quá lười hãy dùng lệnh docker ở trên, đã bao gồm template này

# Sử dụng
- Bước 1: Copy thư mục init và mở project tại folder này
- Bước 2: Chỉnh sửa file config.yaml  
- Bước 3: Viết vào file main.md  
- Bước 4: Chạy lệnh trong file compile.sh, có thể tắt các filter không dùng (tốt nhất là để nguyên). Có thể mở terminal ở 
folder đó và copy lệnh trong file compile.sh rồi paste vào terminal đối với docker

Có thể thay `.pdf` bằng `.docx` để xuất ra file word hoặc `.tex` để xuất ra file tex.

Phiên bản `vnthesis.tex` ở đây là phiên bản mới nhất không ổn định có thể có lỗi, nên dùng bản có sẵn trong docker.
Nếu muốn dùng, hãy để trong folder của project 

# Note
Phần bìa sẽ cần rất nhiều tùy chỉnh để có thể phù hợp với mọi người nên sẽ rất mong mọi người đóng góp để hoàn thiện