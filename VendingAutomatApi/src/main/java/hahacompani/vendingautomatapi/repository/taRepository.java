package hahacompani.vendingautomatapi.repository;

import hahacompani.vendingautomatapi.entity.Polzovateli;
import hahacompani.vendingautomatapi.entity.Vendingovieavtomati;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface taRepository extends CrudRepository<Vendingovieavtomati, Integer> {

    @Query("select n from Vendingovieavtomati n where n.idCompanya.id = :idCompanya")
    List<Vendingovieavtomati> findByidCompanya(@Param("idCompanya") Integer idCompanya);

}
