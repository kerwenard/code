# 定时器

```c#
System.Timers.Timer t = new System.Timers.Timer(10000);//实例化Timer类，设置间隔时间为10000毫秒；
t.Elapsed += new System.Timers.ElapsedEventHandler(theout);//到达时间的时候执行事件；
t.AutoReset = true;//设置是执行一次（false）还是一直执行(true)；
t.Enabled = true;//是否执行System.Timers.Timer.Elapsed事件；

public void theout(object source, System.Timers.ElapsedEventArgs e)
{
    MessageBox.Show("OK!");
}
```