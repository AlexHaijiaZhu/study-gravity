# open crontab editor
crontab -e
## add the following line to script
# block website at 8:30AM from Monday to Friday
30 8 * * 1-5 PATH="$PATH:/usr/sbin:/usr/local/bin/" pihole --wild --regex zhihu.com ifanr.com huxiu.com leiphone.com bilibili.com youtube.com twitch.com amazon.com amazon.ca ebay.com ebay.ca taobao.com aliexpress.com dealmoon.ca dealmoon.com smzdm.com canadadz.com
35 8 * * 1-5 PATH="$PATH:/usr/sbin:/usr/local/bin/" pihole updateGravity
40 8 * * 1-5 service pihole-FTL restart

# unblock website at 16:30 from Monday to Friday
30 16 * * 1-5 PATH="$PATH:/usr/sbin:/usr/local/bin/" pihole --white-wild zhihu.com ifanr.com huxiu.com leiphone.com bilibili.com youtube.com twitch.com amazon.com amazon.ca ebay.com ebay.ca taobao.com aliexpress.com dealmoon.ca dealmoon.com smzdm.com canadadz.com
35 16 * * 1-5 PATH="$PATH:/usr/sbin:/usr/local/bin/" pihole updateGravity
40 16 * * 1-5 service pihole-FTL restart