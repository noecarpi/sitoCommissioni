package com.noecarpi.sito_commissioni.services;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.noecarpi.sito_commissioni.dtos.UserDto;
import com.noecarpi.sito_commissioni.models.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface UserService {
    void saveUser(UserDto userDto, RedirectAttributes RedirectAttributes, HttpServletRequest request, HttpServletResponse response);
    User findUserByEmail(String email);
    User findUserByUsername(String username);
}
