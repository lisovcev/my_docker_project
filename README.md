# My Docker Project

## Описание

Это простое приложение на Python, которое выводит текущее время и дату.

### Установка Docker и Docker Compose

1. Установка Docker:
    ```bash
    sudo apt update
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt update
    sudo apt install -y docker-ce
    ```

2. Установка Docker Compose:
    ```bash
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    ```

3. Настройка Docker для работы без root:
    ```bash
    sudo usermod -aG docker $USER
    ```

### Запуск приложения

1. Сборка Docker-образ:
    ```bash
    docker build -t my_docker_app .
    ```

2. Запуск контейнер:
    ```bash
    docker run --name my_docker_app_container my_docker_app
    ```

### Использование Docker Compose

1. Запуск контейнер с помощью Docker Compose:
    ```bash
    docker-compose up
    ```

### Файлы проекта

- `app.py` - исходный код приложения
- `Dockerfile` - инструкция по сборке Docker-образа
- `docker-compose.yml` - конфигурационный файл для Docker Compose
- `README.md` - документация проекта
