require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.check(1, 1, 1)).to eq '正三角形ですね！' }

  [2, 3, 4].permutation.each do |sides|
    specify { expect(Triangle.check(*sides)).to eq '不等辺三角形ですね！' }
  end

  [2, 2, 1].permutation.each do |sides|
    specify { expect(Triangle.check(*sides)).to eq '二等辺三角形ですね！' }
  end

  [1, 2, 3].permutation.each do |sides|
    specify { expect(Triangle.check(*sides)).to eq '三角形じゃないです＞＜' }
  end

  [1, 2, 9].permutation.each do |sides|
    specify { expect(Triangle.check(*sides)).to eq '三角形じゃないです＞＜' }
  end
end
