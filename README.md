# Nginx Docker Container

Este projeto fornece um container Docker baseado no Nginx Alpine com ferramentas adicionais para desenvolvimento e administração.

## 🚀 Características

- **Base**: Nginx Alpine (imagem leve e segura)
- **Shell**: Bash configurado como shell padrão
- **Ferramentas**: Inclui bash e nano para edição de arquivos
- **Pronto para uso**: Container otimizado para desenvolvimento e produção

## 📋 Pré-requisitos

- Docker instalado em seu sistema
- Conhecimento básico de Docker e Nginx

## 🛠️ Instalação e Uso

### Construindo a imagem

```bash
docker build -t nginx-custom .
```

### Executando o container

```bash
# Executar em modo interativo
docker run -it --rm -p 8080:80 nginx-custom

# Executar em background
docker run -d -p 8080:80 --name nginx-container nginx-custom
```

### Acessando o container

```bash
# Acessar o shell do container
docker exec -it nginx-container bash
```

## 🔧 Configuração

### Volumes recomendados

```bash
# Montar arquivos de configuração personalizados
docker run -d \
  -p 8080:80 \
  -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf \
  -v $(pwd)/html:/usr/share/nginx/html \
  --name nginx-container \
  nginx-custom
```

### Portas

- **80**: Porta padrão do Nginx (HTTP)
- **443**: Porta HTTPS (se configurada)

## 📁 Estrutura de Diretórios

```
/
├── etc/nginx/          # Configurações do Nginx
│   ├── nginx.conf      # Configuração principal
│   └── conf.d/         # Configurações adicionais
├── usr/share/nginx/html/  # Arquivos web estáticos
└── var/log/nginx/      # Logs do Nginx
```

## 🔍 Comandos Úteis

### Verificar status do Nginx
```bash
docker exec nginx-container nginx -t
```

### Recarregar configuração
```bash
docker exec nginx-container nginx -s reload
```

### Visualizar logs
```bash
docker logs nginx-container
```

### Editar arquivos no container
```bash
docker exec -it nginx-container nano /etc/nginx/nginx.conf
```

## 🐛 Solução de Problemas

### Container não inicia
- Verifique se a porta 8080 não está em uso
- Confirme se o Docker está rodando

### Erro de configuração
- Teste a configuração: `nginx -t`
- Verifique os logs: `docker logs nginx-container`

### Problemas de permissão
- Certifique-se de que os arquivos montados têm as permissões corretas

## 📚 Recursos Adicionais

- [Documentação oficial do Nginx](https://nginx.org/en/docs/)
- [Docker Hub - Nginx](https://hub.docker.com/_/nginx)
- [Nginx Alpine Docker Image](https://hub.docker.com/_/nginx)

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está licenciado sob a Licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## ✨ Autor

Desenvolvido com ❤️ para simplificar o uso do Nginx em containers Docker.
