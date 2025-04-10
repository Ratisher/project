package hahacompani.vendingautomatapi.repository;

import hahacompani.vendingautomatapi.entity.Companii;
import hahacompani.vendingautomatapi.entity.Modemi;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface companiRepository extends CrudRepository<Companii, Integer> {

}
