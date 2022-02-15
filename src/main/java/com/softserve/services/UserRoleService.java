package com.softserve.services;

import com.softserve.entity.UserRole;

import javax.management.relation.Role;
import java.util.List;

public interface UserRoleService {

    Role getID(int id);

    List<UserRole>findAll();

}
