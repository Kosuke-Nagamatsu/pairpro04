a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]
def bucket_sort(arr)
# 値を入れるバケツ(配列)と、ソートした値を入れ直すバケツ(配列)を二つ用意する。 bucket =
  bucket = []
  sorted_bucket = []
  # バケツを用意する数を決定するため、配列􏰃最大値を取得する。
  # インデックス番号と数字が一致するバケツに数字を割り振りたいため、最大値に+1をする。
  max_number = arr.max + 1
  max_number.times do
  # 与えられた配列􏰃要素􏰃数だけ、バケツ􏰃容量を用意する(timesメソッド、<<を調べてみよう)
    bucket << []
  end
  arr.each do |i|
  # 値を一つずつバケツに入れる。バケツ􏰃index番号と一致する箇所に値を入れる(eachメソッドを調べてみよう)
    bucket[i] << i
  end
  bucket.each do |e|
  # ソートされた値をバケツに返していく(ヒント!配列 + 配列􏰂どんな値が返ってくるか調べみよう)
    sorted_bucket = sorted_bucket + e
  end
  # ソートされたバケツを返り値として返却する
  sorted_bucket
end
p bucket_sort(a)
p bucket_sort(b)
p bucket_sort(c)
