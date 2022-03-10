# 定时库APScheduler

[官方文档地址](https://apscheduler.readthedocs.io/en/stable/index.html)

[详细](https://cloud.tencent.com/developer/article/1662162)

## 简易说明

```bash
pip install apscheduler
```

* triggers 触发器
  * interval 间隔触发
  * crontab 指定日期触发
* job stores 任务储存器
  * MemoryJobStore 没有序列化，任务存储在内存中，增删改查都是在内存中完成。
  * SQLAlchemyJobStore 使用 SQLAlchemy这个 ORM框架作为存储方式。
  * MongoDBJobStore 使用 mongodb作为存储器。
  * RedisJobStore 使用 redis作为存储器。
* executors 执行器
  * ThreadPoolExecutor 线程池执行器。
  * ProcessPoolExecutor 进程池执行器。
  * GeventExecutor Gevent程序执行器。
  * TornadoExecutor Tornado程序执行器。
  * TwistedExecutor Twisted程序执行器。
  * AsyncIOExecutor asyncio程序执行器。
* schedulers 调度器
  * BlockingScheduler 阻塞执行
  * BackgroundScheduler 多线程执行用
  * AsyncIOScheduler asyncio框架用
  * GeventScheduler gevent框架用
  * TwistedScheduler Twisted框架用
  * QtScheduler Qt用

## 基本示例

```python
from datetime import datetime
import time
import os
from apscheduler.schedulers.background import BackgroundScheduler

def tick():
    print('Tick! The time is: %s' % datetime.now())

if __name__ == '__main__':
    scheduler = BackgroundScheduler()
    scheduler.add_job(tick, 'interval', seconds=3) # 添加一个任务，3秒后运行
    scheduler.add_job(tick, 'cron', hour='8, 12', minute='30')#每天早上八点半和十二点半各执行一次抓包程序，可以是数字类型
    scheduler.start()

    try:
        while True:
            time.sleep(2)
    except (KeyboardInterrupt, SystemExit):
        scheduler.shutdown()
```