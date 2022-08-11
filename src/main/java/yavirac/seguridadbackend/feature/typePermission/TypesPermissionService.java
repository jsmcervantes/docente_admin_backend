package yavirac.seguridadbackend.feature.typePermission;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TypesPermissionService {

    @Autowired
    TypesPermissionRepository tiposPermisoRepository;

    public TypesPermission save(TypesPermission tiposPermiso){

        return tiposPermisoRepository.save(tiposPermiso);
    }

    public TypesPermission findById(long id){
        return tiposPermisoRepository.findById(id).orElse(new TypesPermission());
    }

    public TypesPermission update(TypesPermission tiposPermiso){
        return tiposPermisoRepository.save(tiposPermiso);
    }

    public void deleteById(long id){
        tiposPermisoRepository.deleteById(id);
    }

    public List<TypesPermission> findAll(){
        return tiposPermisoRepository.findAll();
    }

    public List<TypesPermission> findByNombre(String term){
        return tiposPermisoRepository.findByNombreLikeIgnoreCase(term+"%");
    }
    
}