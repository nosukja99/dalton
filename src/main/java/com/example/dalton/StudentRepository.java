package com.example.dalton;

import org.springframework.data.repository.CrudRepository;

public interface StudentRepository extends CrudRepository<Student, Long>{
    Iterable <Student> findAllByUserNameContainingIgnoreCase(String search);
    long countByUserNameAndPassword(String username, String password);
}
