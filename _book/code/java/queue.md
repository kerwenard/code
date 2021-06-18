# 优先级队列

## 定义

```java
private PriorityBlockingQueue<Var_Instr> commandQueue = new PriorityBlockingQueue<>();//定义一个可以多线程调用不冲突的队列
commandQueue.add(data);//队列增加元素
```

### 元素定义

```java
public class Var_Instr implements Comparable<Var_Instr> {
    public int Priority;
    public int TimeOutMs;
    public byte[] Instr;

    public Var_Instr(int priority, int timeoutms, byte[] instr) {
        Priority = priority;
        TimeOutMs = timeoutms;
        Instr = instr;
    }

    /*必加，用来区分从高到底还是从低到高，这里从低到高*/
    @Override
    public int compareTo(Var_Instr o) {
        return this.Priority > o.Priority ? -1 : 1;
    }
}
```