package yavirac.seguridadbackend.feature.registro;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface RegistroRepository extends CrudRepository<Registro, Long> {

    List<Registro>findAll();
    List<Registro> findByUsuarioLikeIgnoreCase(String term);
    
}