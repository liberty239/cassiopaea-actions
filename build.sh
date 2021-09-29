#!/bin/bash
#!/bin/bash
go get -u github.com/liberty239/cassiopaea-tools/./...
cass-src fetch-all .build/html
cass-gen epub .build/html .build/sessions.epub 
cass-gen html .build/html .build/sessions.html --meta-tags google-site-verification:$GOOGLE_SITE_VERIFICATION
cp .build/sessions.html index.html
