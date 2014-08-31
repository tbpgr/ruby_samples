# 標準的な文字列結合
text = "a" + "b"
puts text

# String#<<、による文字列結合
text = "a"<<"b"
puts text

# String#<<、による文字列結合（ASCII Code）
text = "a"<<98
puts text

# String#concat、による文字列結合
text = "a".concat("b")
puts text

# String#concat、による文字列結合（ASCII Code）
text = "a".concat(98)
puts text

# -----------------------------------------------
# ここからは普段あまり利用する機会のない連結方法
# -----------------------------------------------

# スペース区切りによる文字列結合(タブでも可)
text = "a" "b"
puts text

# スペース区切りによる文字列結合（シングルクォートダブルクォート混在）
text = "a" 'b'
puts text

# 区切りなし、による文字列結合
text = "a""b"
puts text

# 区切りなし、による文字列結合（シングルクォートダブルクォート混在）
text = "a"'b'
puts text
