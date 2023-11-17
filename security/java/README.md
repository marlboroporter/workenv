# Java security

* Java http client needs to have server certificates in JVM keystore to trust the server. Otherwise it is a security vialation and error will throw.
* In intranet, we need to add a company's prod or dev cerficites in JVM keystore
* Sometimes hosts pecific certificate needs to be added to same keystore
* Host specific certificates can be obtained via brower
* Chrome: visit server with server https url -> developer tool -> security -> view certificates -> details -> export 
* import cert 
    * keytool --import -alias "xxxxxx" -file "xxxxx.crt" -storepass changeit -keystore  pathfiletoJVMkeystore -noprompt 
* keys can also been imported from another keystore
    * keytool -importkeystore -srckeystore "x" -destkeystore "y" -deststoretype PKCS12 -srcstoretype PKCS12 -srcstorepass changeit -deststorepass changeit -nopromt -v

