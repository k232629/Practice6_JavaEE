package practice5.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import practice5.entities.Address;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class AddressDao implements IAddressDao {

    @PersistenceContext
    private EntityManager entityManager;

    public Address getById(int id) {
        return entityManager.find(Address.class, id);
    }

    public Address save(Address address) {
        return entityManager.merge(address);
    }
}
