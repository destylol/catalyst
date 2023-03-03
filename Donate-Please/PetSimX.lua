game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "SCRIPT IS PATCHED",
	Text = "Pet Sim X is currently patched, join the discord for more info."
})

syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = "softworks"
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
