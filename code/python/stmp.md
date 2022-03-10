# stmp库发送邮件

示例
```python
import smtplib
from email.mime.text import MIMEText
from email.header import Header
from email.mime.multipart import MIMEMultipart
from email import encoders

HOST = 'smtp.xxx.com'# stmp服务器
USER = ''# 账号
PASS = ''# 密码或密钥

SENDER = ''# 发送邮箱
RECEIVERS = ['xx@qq.com', ]# 接收邮箱


message = MIMEMultipart()
message['From'] = Header('运维机器人', 'utf-8')
message['To'] = Header('状态', 'utf-8')

subject = '报告'
message['Subject'] = Header(subject, 'utf-8')
# 正文
message.attach(MIMEText('运维备份文档', 'plain', 'utf-8'))

with open(file1_path, 'rb') as f:#文件地址
    # 设置附件的MIME和文件名，这里是png类型:
    mime = MIMEBase('attachment', 'xls', filename=file1_name)#文件名
    # 加上必要的头信息:
    mime.add_header('Content-Disposition',
                    'attachment', filename=file1_name)#文件名
    mime.add_header('Content-ID', '<0>')
    mime.add_header('X-Attachment-Id', '0')
    # 把附件的内容读进来:
    mime.set_payload(f.read())
    # 用Base64编码:
    encoders.encode_base64(mime)
    # 添加到MIMEMultipart:
    message.attach(mime)

smtpObj = smtplib.SMTP()
smtpObj.connect(HOST, 25)    # 25 为 SMTP 端口号
smtpObj.login(USER, PASS)
smtpObj.sendmail(SENDER, RECEIVERS, message.as_string())

```