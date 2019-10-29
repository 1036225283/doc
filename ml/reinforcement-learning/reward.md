

# REWARD

### reward的计算

每一个$$state$$，在采取$$action$$之后，都会获得一个$$reward$$。但是计算$$reward$$的时候，会根据后续的$$r_t=(a_{t+1}|s_{t+1})$$一起计算

比如在下棋的时候，$$agent$$在$$t+0$$时刻的状态$$s_{t+0}$$下吃掉了对方的一个车，获得了一个比较高的$$reward=$$100,但是在$$s_{t+1}$$或者$$s_{t+2}$$时刻，被对方吃掉了将，获得了一个特别低了$$reward=-$$10000,输掉了整个比赛

因此，从长远来看，吃掉对方的一个车并不是值得奖励的行为，换句话说，$$r_{t+0}=π(a_{t+0}|s_{t+0})$$ 并不是100，而应该是一个比较低的值


state|action|reward|score
:-:|:--:|:-:|:-:
$$s_{t+0}$$|$$a_{t+0}$$|$$r_{t+0}$$|100
$$s_{t+1}$$|$$a_{t+1}$$|$$r_{t+1}$$|10
$$s_{t+2}$$|$$a_{t+2}$$|$$r_{t+2}$$|-10000

也就是说，$$q_π(s_{t+0},a_{t+0})=E_π(R_{t+0}+γq_π(s_{t+1},a_{t+1})|s_{t+0},a_{t+0})$$ 
