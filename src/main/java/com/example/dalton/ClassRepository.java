package com.example.dalton;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ClassRepository extends CrudRepository<Class, Long>{

    Iterable<Class> findAllByStudents(Student student);
}
