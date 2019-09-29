# 蒙特卡罗法

蒙特卡罗是不基于模型的强化学习问题

通过采样若干经历完整的状态序列(episode)来估计状态的真实价值。所谓的经历完整，就是这个序列必须达到终点。比如下棋问题分出输赢，驾车问题成功达到终点或者失败。有了很多组这样的完整的状态序列

### 与动态规划的区别

不需要依赖模型转化概率。经历过的完整序列学习，完整的经历越多，学习效果越好

$$G_t=R_{t+1}+γR_{t+2}+γ^2R_{t+3}+...γ^{T-t-1}R_T$$

$$v_π(s)≈average(G_t),s.t.S_t=s$$

### 需要优化的几点

同样的一个状态在完整的状态序列中重复出现，那么该状态的收益如何计算

first visit $$or$$ every visit​ 第二张方法比第一种的计算量要大些，但在完整的经历样本序列少的场景下会比第一种方法适用


