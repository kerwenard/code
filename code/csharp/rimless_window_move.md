# 无边框窗口移动

* 不调用api

```c#
Point mouseOff;//鼠标移动位置变量
bool leftFlag;//标签是否为左键
private void Form1_MouseDown(object sender, MouseEventArgs e)
{
    if (e.Button == MouseButtons.Left)
    {
        mouseOff = new Point(-e.X, -e.Y); //得到变量的值
        leftFlag = true;                  //点击左键按下时标注为true;
    }
}

private void Form1_MouseMove(object sender, MouseEventArgs e)
{
    if (leftFlag)
    {
        Point mouseSet = Control.MousePosition;
        mouseSet.Offset(mouseOff.X, mouseOff.Y);  //设置移动后的位置
        Location = mouseSet;
    }
}

private void Form1_MouseUp(object sender, MouseEventArgs e)
{
    if (leftFlag)
    {
        leftFlag = false;//释放鼠标后标注为false;
    }
}
```

* 调用api

```c#
// 调用API
using System.Runtime.InteropServices;

[DllImport("user32.dll")]
public static extern bool ReleaseCapture();
[DllImport("user32.dll")]
public static extern bool SendMessage(IntPtr hwnd, int wMsg, int wParam, int lParam);
public const int WM_SYSCOMMAND = 0x0112;
public const int SC_MOVE = 0xF010;
public const int HTCAPTION = 0x0002; 

// 在空间的_MouseDown中加入如下代码:
如:

private void Form1_MouseDown(object sender, System.Windows.Forms.MouseEventArgs e)
{
    ReleaseCapture();
    SendMessage(this.Handle, WM_SYSCOMMAND, SC_MOVE + HTCAPTION, 0);
}
```