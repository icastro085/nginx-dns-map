# nginx-dns-map

Esse projeto tem por finalidade configurar um nginx local para algumas configurações de dns externo com proxy para o ambiente local.

#### Build
```bash
$ make build
```

#### Start
```bash
$ make start
```

#### VHosts
Na pasta **/vhost** tem alguns exemplos simples de como configurar um dns externo para redirecionar para um serviço local.

#### Network
Essa imagem tem porfinalidade fazer proxy para serviço local como uma forma de fazer debug de serviços externo, então vai se conectar a rede **onsite-net**.
