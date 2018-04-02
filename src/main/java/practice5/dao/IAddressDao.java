package practice5.dao;

import practice5.entities.Address;

public interface IAddressDao {

    Address getById(int id);

    Address save(Address address);
}
