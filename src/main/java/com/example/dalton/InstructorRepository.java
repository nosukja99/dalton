package com.example.dalton;

import org.springframework.data.repository.CrudRepository;

public interface InstructorRepository extends CrudRepository<Instructor, Long>{
    Iterable <Instructor> findAllByUserNameContainingIgnoreCase(String search);
    long countByUserNameAndPassword(String username, String password);

}
