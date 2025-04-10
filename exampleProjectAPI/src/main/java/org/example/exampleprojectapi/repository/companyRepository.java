package org.example.exampleprojectapi.repository;

import org.example.exampleprojectapi.entity.Companii;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface companyRepository extends CrudRepository<Companii, Integer> {
}
