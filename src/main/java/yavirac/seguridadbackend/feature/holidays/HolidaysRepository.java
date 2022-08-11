package yavirac.seguridadbackend.feature.holidays;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface HolidaysRepository extends CrudRepository<Holidays, Long> {

    List<Holidays> findAll();
    List<Holidays> findByNameLikeIgnoreCase(String term);
    
}
