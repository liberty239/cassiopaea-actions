#!/bin/bash
#!/bin/bash
go get -u github.com/liberty239/cassiopaea-tools/./...@master
cass-src fetch-all .build/html
cass-gen epub .build/html .build/sessions.epub 
cass-gen html .build/html .build/sessions.html --meta-tags google-site-verification:$GOOGLE_SITE_VERIFICATION,yandex-verification:$YANDEX_VERIFICATION
cp .build/sessions.html .site/index.html
