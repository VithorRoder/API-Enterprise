package br.com.phoenix.api.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BcryptGen {

    public static void main(String[] args) {
        String pwd = (args.length > 0) ? args[0] : "admin123";
        String hash = new BCryptPasswordEncoder().encode(pwd);
        System.out.println("senha: " + pwd);
        System.out.println("hash : " + hash);
    }
}
