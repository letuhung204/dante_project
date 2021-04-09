package com.dante.auth.service;

import com.dante.auth.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
