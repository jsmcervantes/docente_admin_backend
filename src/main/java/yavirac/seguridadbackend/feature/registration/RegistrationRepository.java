package yavirac.seguridadbackend.feature.registration;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface RegistrationRepository extends CrudRepository<Registration, Long> {

    List<Registration>findAll();
    List<Registration> findByUsuarioLikeIgnoreCase(String term);
    
}