[README.md](https://github.com/user-attachments/files/22567044/README.md)
# API Enterprise 🚀

API RESTful desenvolvida em **Spring Boot 3**, integrada com **PostgreSQL** e **JWT Authentication**, servindo como backend para o cliente **Swing Enterprise**.

---

## ✨ Funcionalidades
- Autenticação via **JWT** (login seguro com usuário/senha).
- CRUD de **Usuários/Clientes** (criação, listagem, edição, exclusão).
- Validações automáticas com **Bean Validation**.
- Persistência de dados com **Spring Data JPA**.
- **Migrações automáticas** de banco de dados com Flyway.
- Conexão otimizada com **HikariCP**.

---

## 🏗️ Arquitetura
- **Spring Boot 3.3.4**
- **Java 21**
- **Maven**
- **PostgreSQL 17**
- **Flyway**
- **JWT (io.jsonwebtoken)**

---

## ⚙️ Configuração do Ambiente

### 1. Pré-requisitos
- [Java 21+](https://adoptium.net/)
- [Maven 3.9+](https://maven.apache.org/)
- [PostgreSQL 17](https://www.postgresql.org/)

### 2. Banco de Dados
Crie o banco de dados no PostgreSQL:
```sql
CREATE DATABASE dbteste;
```

Acesse o `application.yml` em `src/main/resources` e configure:
```yaml
spring:
  datasource:
    url: jdbc:postgresql://localhost:5433/dbteste
    username: postgres
    password: sua_senha_aqui

  jpa:
    hibernate:
      ddl-auto: validate
    properties:
      hibernate:
        dialect: org.hibernate.dialect.PostgreSQLDialect

  flyway:
    enabled: true
```

### 3. Rodar a API
#### Usando Maven (dev/testes)
```bash
mvn spring-boot:run
```

#### Usando JAR (produção)
Primeiro empacote:
```bash
mvn clean package -DskipTests
```

Depois rode:
```bash
java -jar target/api-enterprise-1.0.0.jar
```

Ou use os scripts:
- `start-api.bat` → inicia a API
- `stop-api.bat` → encerra a API
- `restart-api.bat` → reinicia a API

---

## 🔑 Autenticação JWT

### Login
```http
POST /api/auth/login
Content-Type: application/json

{
  "username": "admin",
  "password": "admin123"
}
```

Resposta:
```json
{
  "token": "eyJhbGciOiJIUzI1NiJ9..."
}
```

Use esse token no header para acessar endpoints protegidos:
```
Authorization: Bearer SEU_TOKEN_AQUI
```

---

## 📌 Endpoints Principais

### Usuários / Customers
- `POST /api/customers` → criar
- `GET /api/customers` → listar todos
- `PUT /api/customers/{id}` → atualizar
- `DELETE /api/customers/{id}` → remover

---

## 🤝 Integração
Esta API é utilizada pelo cliente **[Swing Enterprise](../Client-Enterprise)** para autenticação e operações de CRUD.

---

## 📄 Licença
Projeto desenvolvido para fins de estudo e prática de **Java / Spring Boot**.
