package yavirac.seguridadbackend.feature.typePermission;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface  TypesPermissionRepository extends CrudRepository <TypesPermission , Long> {

    List<TypesPermission>findAll();
    List<TypesPermission>findByNombreLikeIgnoreCase(String term);
}