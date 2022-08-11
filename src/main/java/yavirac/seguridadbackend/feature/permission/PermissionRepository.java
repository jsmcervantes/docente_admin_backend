package yavirac.seguridadbackend.feature.permission;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface PermissionRepository extends CrudRepository<Permission, Long>{
    List<Permission> findAll();
    List<Permission> findByDescriptionLikeIgnoreCase(String term);
}
