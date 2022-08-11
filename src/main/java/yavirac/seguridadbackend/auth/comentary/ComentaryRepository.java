package yavirac.seguridadbackend.auth.comentary;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface ComentaryRepository extends CrudRepository<Comentary , Long> {

    List<Comentary> findByNameLikeIgnoreCase(String term);
    
}
