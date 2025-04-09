package org.example.exampleprojectapi.repository;

import org.example.exampleprojectapi.entity.Roli;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface roleRepository extends CrudRepository<Roli, Integer> {
}
