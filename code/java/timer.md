# 定时器

定义
```java
    private Timer Timer_Start = null;
```

关闭

```java
    //设置为空防止起来
    public void Timer_Start_Close() {
        if (Timer_Start != null) {
            Timer_Start.cancel();
            Timer_Start = null;
        }
    }
```

开始

```java
    @SuppressWarnings("null")
    private void Timer_Start_Start() {
        if (Timer_Start != null) {
            return;
        }

        Timer_Start = new Timer();

        Timer_Start.schedule(new TimerTask() {
            @Override
            public void run() {
                udpStarted = true;
                Timer_Start_Close();
            }
        }, 3000);
    }
```