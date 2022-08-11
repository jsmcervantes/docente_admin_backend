package yavirac.seguridadbackend.feature.username;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface  UsernameRepository extends CrudRepository <Username , Long> {

    List <Username>findAll();
    List <Username> findByNameLikeIgnoreCase(String term);
    
}
