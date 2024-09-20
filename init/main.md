---
#Tùy chỉnh thông tin
university: Đại học Quốc gia Hà Nội # Tên đại học
collage: Trường Đại học Khoa học Tự nhiên # Tên trường
faculty: Khoa Toán - Cơ - Tin học # Tên khoa
subject: Thực tập thực tế phát triển phần mềm # Tên môn học
major: Toán tin # Ngành học
title: Tool tạo pdf báo cáo từ markdown # Tên đề tài
subtitle: Báo cáo cuối môn học # Tên phụ
instructors: Phan Thanh Ngọc # Tên giáo viên hướng dẫn
author:
  - name: Phan Thanh Ngọc # Tên tác giả
    id: 20000001 # Mã số sinh viên
  - name: Phan Thanh Ngọc # Tên tác giả
    id: 20000001 # Mã số sinh viên
position: Hà Nội
day: 05 # Ngày
month: 11 # Tháng
year: 2023 # Năm
logo: "image/logo.jpg"
---
# Lời mở đầu {-}
Tui xin tự cảm ơn tui vì lười gõ latex mà lại chăm ngồi code latex để đẻ ra con này

:::{latex-env=sign}
Sinh viên
:::

`\toc`{=latex} <!--cho mục lục-->

\listoflistings <!--cho mục lục thuật toán thêm từ pandoc-crossref-->

# Ví dụ cách sử dụng {#sec:1}

## Đoạn văn

Đây là một đoạn văn ví dụ. Trích dẫn theo [@texbook]: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sagittis eleifend molestie. In fringilla enim dolor. Praesent lacinia dui velit, at ullamcorper orci laoreet non. Nullam placerat efficitur leo a ornare. Duis condimentum, tortor vitae pellentesque venenatis, lorem urna gravida nibh, a fermentum est nunc at magna. Sed posuere arcu odio, posuere porta libero eleifend vel. Maecenas ut metus quam. Praesent vitae euismod nisl. Morbi tincidunt nulla eget lacus sagittis aliquet. Aliquam condimentum commodo lacus, quis convallis quam volutpat id. Proin lobortis, sapien et fermentum faucibus, lacus est tincidunt augue, quis facilisis elit nisi non nisl. Donec et odio sit amet ligula laoreet convallis non quis nulla."

Đoạn văn thứ 2. Chân trang [^ref]

[^ref]: Chân trang

## Danh sách

### Không có thứ tự

- 1
- 2
- 3

### Có thứ tự

1. A
#. B
#. C

Chỉ cần gõ số bắt đầu và sau đó dùng # để tự cập nhật số

d) D
#) E
#) F

### Kết hợp

1. a
- b
- c
  - d
  - e
    - f
    - g
2. h

## Bảng biểu 

+---------------------+-----------------------+
| Location            | Temperature 1961-1990 |
|                     | in degree Celsius     |
|                     +-------+-------+-------+
|                     | min   | mean  | max   |
+=====================+=======+=======+=======+
| Antarctica          | -89.2 | N/A   | 19.8  |
+---------------------+-------+-------+-------+
| Earth               | -89.2 | 14    | 56.7  |
+---------------------+-------+-------+-------+
: Bảng phức tạp {#tbl:1}


| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |
: Bảng đơn giản 

## Hình ảnh 

![Ảnh](image/logo.jpg){#fig:1}

```{.mermaid}
%%| fig-cap: A simple flowchart.
graph TB
    A["a"]
    B["b"]
    A --> B
```

## Code

Inline: `print("hello")`{.python}

code block:
``` { .python caption="Mergesort" #lst:code}
def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        left_half = arr[:mid]
        right_half = arr[mid:]

        merge_sort(left_half)
        merge_sort(right_half)

        i = j = k = 0

        while i < len(left_half) and j < len(right_half):
            if left_half[i] < right_half[j]:
                arr[k] = left_half[i]
                i += 1
            else:
                arr[k] = right_half[j]
                j += 1
            k += 1

        while i < len(left_half):
            arr[k] = left_half[i]
            i += 1
            k += 1

        while j < len(right_half):
            arr[k] = right_half[j]
            j += 1
            k += 1

    return arr

# Example usage:
arr = [38, 27, 43, 3, 9, 82, 10]
sorted_arr = merge_sort(arr)
print("Sorted array is:", sorted_arr)
```

Thêm từ file
```{include="refs.bib"}
```

## Biểu thức toán học 

Inline: $a+b$

Block:
$$a+b$${#eq:eq1}

## Liên kết

Liên kết tới phần @sec:1

Liên kết tới bảng @tbl:1

Liên kết tới hình @fig:1

Liên kết tới biểu thức @eq:eq1

Liên kết tới thuật toán @lst:code

# Tài liệu tham khảo 

::: {#refs}
:::

# Phụ lục {.unnumbered}

Phần này không có số trong mục lục