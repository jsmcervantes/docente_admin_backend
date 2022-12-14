package yavirac.seguridadbackend.feature.category;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Long> {
    
    List<Category> findAll();
    List<Category> findByNombreLikeIgnoreCase(String term);
}
