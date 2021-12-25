#!/bin/bash
openssl genrsa -out FakeCA.key
openssl req -new -key FakeCA.key -out FakeCA.csr
openssl x509 -req -days 36500 -in FakeCA.csr -signkey FakeCA.key -out FakeCA.crt
openssl req -new -nodes -sha256 -newkey rsa:2048 -keyout localhost.key -out localhost.csr