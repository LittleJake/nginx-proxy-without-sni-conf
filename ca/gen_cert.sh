#!/bin/bash

cat > crt.txt << EOF
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
extendedKeyUsage = serverAuth, clientAuth
subjectAltName=@SubjectAlternativeName

[SubjectAlternativeName]

EOF

SERVER_NAME=`grep server_name ../conf.d/reverse.conf |sed s/\;//g|awk '{print $2}'`
N=1
for i in $SERVER_NAME
do
    echo "DNS."$N"="$i>>crt.txt
    N=$(($N + 1))
done


openssl x509 -req -CAkey FakeCA.key -CA FakeCA.pem -in localhost.csr -out localhost.pem -CAcreateserial -days 36500 -extfile crt.txt
nginx -s reload
