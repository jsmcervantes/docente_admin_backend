package yavirac.seguridadbackend.feature.tiposPermiso;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface  TiposPermisoRepository extends CrudRepository <TiposPermiso , Long> {

    List<TiposPermiso>findAll();
    List<TiposPermiso>findByNombreLikeIgnoreCase(String term);
}