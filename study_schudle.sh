# open crontab editor
crontab -e
## add the following line to script
# block website at 8:30AM from Monday to Friday
30 8 * * 0-5 pihole --wild --regex zhihu.com 163.com ifanr.com huxiu.com leiphone.com bilibili.com youtube.com twitch.com amazon.com amazon.ca ebay.com ebay.ca taobao.com aliexpress.com dealmoon.ca dealmoon.com smzdm.com canadadz.com

# unblock website at 16:30 from Monday to Friday
30 16 * * 0-5 pihole -w --nuke