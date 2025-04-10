package hahacompani.vendingautomatapi.repository;

import hahacompani.vendingautomatapi.entity.Modeli;
import hahacompani.vendingautomatapi.entity.Modemi;
import hahacompani.vendingautomatapi.entity.Vendingovieavtomati;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface modemiRepository extends CrudRepository<Modemi, Integer> {

}
