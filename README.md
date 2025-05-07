# share-text-wechat-b4a
Share Text to WeChat Messenger

```b4x
Private Sub BtnShare_Click
    Dim in As Intent
    in.Initialize(in.ACTION_SEND, "")
    in.PutExtra("android.intent.extra.TEXT", "将文本从 B4A 分享到微信")
    in.SetType("text/plain")
    in.SetPackage("com.tencent.mm")
    StartActivity(in)
End Sub
```
