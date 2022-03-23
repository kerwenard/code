# tmux后台含终端运行

```bash
# 安装
pip3 install tmux

# 进入界面
tmux

# 把当前页面弄到后台
ctrl+d

# 创建新会话
tmux new -s 会话名字

# 会话列表
tmux ls

# 进入会话
tmux attach -t 名字或编号

# 杀死会话
tmux kill-session -t 名字或编号

# 所有快捷键前缀键都是ctrl+b

# 快捷键列表
?

# 列出所有会话
s

# 分离会话
d

```
