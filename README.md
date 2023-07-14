# Home Server Configuration

If you are new to a Home server I recommend investigating it more, but it allows me to have a server that is on my local network so I don't have to pay external services for something this machine can do. There are some great resources when it comes to running a Home Server and you should definitely see if it's right for you!

### Resources

-   [/r/selfhosted - Reddit](https://www.reddit.com/r/selfhosted/)
-   [Ansible](https://www.ansible.com)
-   [My Smart Home Configuration](https://github.com/ZinkNotTheMetal/my-smart-home)

## Home Server Equipment

-   [NUC8-i3 Short](https://amzn.to/43ttxG5) - [Newer model here](https://amzn.to/44L3w69)
-   [32GB RAM](https://amzn.to/43q9doY)
-   128GB NVME Drive - [1TB Drive for same cost I paid](https://amzn.to/3ro1B97)

## Why and how is your home server in GitHub?

GitHub provides me a great place to store my configuration and share with the community the work I put into keeping this server up to date. [Ansible](https://www.ansible.com) let's me run this configuration deterministically so that my server can stay up to date and make sure that no configuration is done manually. I found when I started maintaining my server it became very apparent quickly that there was no way for me to replicate all of the changes I made and that's where Ansible comes in. I can write playbooks to make sure that things weren't done manually and give me the automate first mentality. Ansible does take some getting used to, but it does provide a huge benefit.

## What all does it run? 🤷‍♂️

I have had some good luck with this NUC8-i3 machine. It has been with me since January 2019 and will upgrade to the newer model if I ever have the need. I would recommend this machine if you need a small low power server that has enough horsepower to get a lot of work done.

### Applications

1.  [Docker](https://www.docker.com) - containerization for the machine
2.  [at](https://linuxize.com/post/at-command-in-linux/) - Common Role | similar to cron but more intuitive in my opinion
3.  [NUT (Network UPS Tools)](https://networkupstools.org) - Common Role |this allows me to see my UPS in Home Assistant
4.  [Samba](https://www.samba.org/samba/what_is_samba.html) - Common Role | this allows me to file share to Windows/Mac on the network
5.  [PiHole](https://pi-hole.net) - DNS Role | this allows me to use remove ads from my network. I put it under it's own role as I'm not sure I'll be using it but is easy to enable if I want later
6.  [Docuwiki](https://www.dokuwiki.org/dokuwiki) - Docker Role | this creates a personal wiki page that is only accessible on your home network. I find this useful to put information to share with other people in the house
7.  [Mealie](https://mealie.io) - Docker Role | this creates me a personal webpage to store all of my favorite recipes, it also allows you to put in a URL and get the recipe. It's nice that it ties into Home Assistant and can make a shopping list of items I need for the meal
8.  [Piwigo](https://piwigo.org) - Docker Role | a locally run and stored photo backup system. It has a pretty good iOS app and let's me sync them without having to pay for iCloud
9.  [Plex](https://www.plex.tv) - Docker Role | a locally run media player with fantastic support
10. [Portainer](https://www.portainer.io) - Docker Role | Powerful dashboard for all things docker related
11. [Swag](https://docs.linuxserver.io/general/swag) - Docker Role | SWAG does a lot, but the main purpose I use it for is for external DNS (maintaining the DNS record if my DNS changes) so that I can VPN with an address rather than an IP. Also keeps my certificate up to date
12. [Tautulli](https://tautulli.com) - Docker Role | Great for monitoring plex and seeing who is accessing it and watching what. I clean up my users to make sure the server isn't being too taxed.
13. [Transmission](https://transmissionbt.com) - Docker Role | Great for downloading .isos and other large files using the BitTorrent transfer protocol
14. [Uptime Kuma](https://github.com/louislam/uptime-kuma) - Docker Role | A website that allows me to monitor things in my network. For instance other docker containers or if I have internet access. I use it when I'm unsure if the internet is working properly.
15. [Watchtower](https://containrrr.dev/watchtower/) - Docker Role | keeps all docker images up to date as long as they are tagged to keep them up to date. I find this extremely helpful and also automation first!

I also run Home Assistant, Node Red, ESP Home, and MQTT but way more information can be found here.

[My Smart Home Configuration](https://github.com/ZinkNotTheMetal/my-smart-home)
