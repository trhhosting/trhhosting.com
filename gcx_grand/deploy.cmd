rm release.zip
7z a release.zip ./release/*
scp release.zip root@web.tlm.pw:/opt/www/afi.tlm.pw/

