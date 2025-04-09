package hahacompani.vendingautomatapi.repository;

import hahacompani.vendingautomatapi.entity.Polzovateli;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface polzovateliRepository extends CrudRepository<Polzovateli, Integer> {

    @Query("select p from Polzovateli p where p.parol = :parol and p.email = :login")
    Polzovateli login(@Param("parol") String parol, @Param("login") String login);

}
