package yavirac.seguridadbackend.feature.permission;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PermissionService {
    
    @Autowired
    PermissionRepository permissionRepository;

    public Permission save(Permission permission){
        return permissionRepository.save(permission);
    }

    public Permission findById(long id){
        return permissionRepository.findById(id).orElse(new Permission());
    }

    public Permission update(Permission permission){
        return permissionRepository.save(permission);
    }

    public void deleteById(long id){
        permissionRepository.deleteById(id);
    }

    public List<Permission> findAll(){
        return permissionRepository.findAll();    
    }

    public List<Permission> findByDescription(String term){
        return permissionRepository.findByDescriptionLikeIgnoreCase(term+"%");
    }
}
