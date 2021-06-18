# post

```c#
            using (var wb = new WebClient()) {
                var data = new NameValueCollection();
                data["属性"] = "";

                var response = wb.UploadValues("网址", "POST", data);
                string responseInString = Encoding.UTF8.GetString(response);
                this.Close();
            }
```