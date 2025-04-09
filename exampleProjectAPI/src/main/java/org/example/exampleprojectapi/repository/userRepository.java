package org.example.exampleprojectapi.repository;

import org.example.exampleprojectapi.entity.Polzovateli;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface userRepository extends CrudRepository<Polzovateli, Integer> {
    @Query("SELECT p FROM Polzovateli p WHERE p.email = :email AND p.parol = :password")
    Polzovateli findByEmailAndPassword(@Param("email") String email, @Param("password") String password);
}
