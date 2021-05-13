# 提高vim-plug下载插件的速度

因为中国地区访问像 github 这种国外网站很不稳定, 所以在一般都是采用镜像网站的方式间接访问. 而 vim-plug 下载时都是用的实际网站, 我们可以修改 plug.vim 来将实际网站变为镜像网站, 提高下载成功率.

在 plug.vim 中搜索 github, 修改两条语句，即可成功下载GitHub资源。

1. 将该行

> let fmt = get(g:, 'plug_url_format', 'https://git::@github.com/%s.git')

 改为

> let fmt = get(g:, 'plug_url_format', 'https://git::@hub.fastgit.org/%s.git')

2 将改行

> \ '^https://git::@github\.com', 'https://github.com', '')

 改为

> \ '^https://git::@hub.fastgit\.org', 'https://hub.fastgit.org', '')

上述两个步骤的目是让镜像网站代替实际网站, 这样能有效提高下载成功率。
