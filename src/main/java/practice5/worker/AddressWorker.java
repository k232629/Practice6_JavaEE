package practice5.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import practice5.dao.IAddressDao;
import practice5.dao.ILectureDao;
import practice5.entities.Address;
import practice5.entities.Lecture;

@Service
public class AddressWorker {

    @Autowired
    private IAddressDao addressDao;

    public Address getById(int id) {
        return addressDao.getById(id);
    }

    public Address save(Address address) {
        return addressDao.save(address);
    }


}
