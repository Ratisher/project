package hahacompani.vendingautomatapi.repository;

import hahacompani.vendingautomatapi.entity.Modeli;
import hahacompani.vendingautomatapi.entity.Polzovateli;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface modeliRepository extends CrudRepository<Modeli, Integer> {

}
