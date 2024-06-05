# Use uma imagem base leve do Alpine Linux com Python pré-instalado
FROM python:3.9-alpine

# Defina o diretório de trabalho dentro da imagem
WORKDIR /app

# Copie o arquivo 'app.py' do host para o diretório '/app' na imagem
COPY app.py .

# Instale as dependências do aplicativo
RUN pip install flask

EXPOSE 8090

# Especifique o comando padrão a ser executado quando o contêiner for iniciado
CMD ["flask", "run", "--host=0.0.0.0", "--port=8090"]