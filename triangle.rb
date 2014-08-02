module Triangle
  def self.check(a, b, c)
    sorted = [a.to_f,b.to_f,c.to_f].sort
    if sorted[0] + sorted[1] <= sorted[2]
      '三角形じゃないです＞＜'
    else
      RESULTS[sorted.uniq.size - 1]
    end
  end

  RESULTS = [
    '正三角形ですね！',
    '二等辺三角形ですね！',
    '不等辺三角形ですね！',
  ]
  private_constant :RESULTS
end

if __FILE__ == $0
  puts Triangle.check(*ARGV)
end
