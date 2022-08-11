package yavirac.seguridadbackend.feature.registry;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface RegistryRepository extends CrudRepository<Registry, Long> {

    List<Registry>findAll();
    List<Registry> findByUsuarioLikeIgnoreCase(String term);
    
}