require 'tbpgr_utils'

langs ="Ruby
Ruby
Ruby
Java
JavaScript
C++
Ruby
Python
Bash
Ruby
Ruby
Perl
C
VB
PHP
JavaScript
VB
Java
JavaScript
Ruby
C
Pascal
PHP
Java
Python
Ruby
Python
C++
C
Java
Java
Python
Mathematica
JavaScript
PHP
Java
C
Scala
C
C
"

def group_ranked_list(ary)
  list = ary.group_by.with_index(1) { |e|e }
    .map { |k, v| {language: k, count: v.size} }
    .sort { |a, b|
      # count の降順
      (-(a[:count] <=> b[:count])).nonzero? ||
      # count が同数の場合は language の昇順
      a[:language] <=> b[:language]
    }.map { |e|e.values }
    rank(list)
end

def rank(ary)
  rank_count = 1
  [*0..(ary.size - 1)].each_with_object([]) do |i, memo|
    rank_count += 1 if i.nonzero? && (ary[i - 1].last != ary[i].last)
    memo << [rank_count] + ary[i]
  end
end

def headers
  <<-EOS
|Rank|Language|Count|
|:--|:--|:--|
  EOS
end

answer_langs = langs.each_line.map(&:chomp)

print headers + group_ranked_list(answer_langs).to_table(:left)

__END__
Array#to_table は TbpgrUtils gem (自作 gem) のメソッド。
二次元配列を Markdown のテーブルフォーマットに変換します。
TbpgrUtils は私の遊び場的ユーティリティ。実用性はない。
