package com.noecarpi.sito_commissioni.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.noecarpi.sito_commissioni.models.User;


public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    User findByUsername(String username);
}
