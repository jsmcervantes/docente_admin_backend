package yavirac.seguridadbackend.feature.permission;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/permission")
@CrossOrigin({"*"})
public class PermissionController {
    
    @Autowired
    PermissionService permissionService;

    //CRUD

    //Create
    @PostMapping("/save")
    public Permission save(@RequestBody Permission permission){
        return permissionService.save(permission);
    }

    //Read
    @GetMapping("/{id}")
    public Permission findById(@PathVariable long id){
        return permissionService.findById(id);
    }

    //Update
    @PutMapping("/update")
    public Permission update(@RequestBody Permission permission)
    {
        return permissionService.save(permission);
    }

    //Delete
    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        permissionService.deleteById(id);
    }

    @GetMapping("/findAll")
    public List<Permission> findAll(){
        return permissionService.findAll();   
    }

    @GetMapping("findByDescription/{term}")
    public List<Permission> findByDescription(@PathVariable String term) {
        return permissionService.findByDescription(term);
    }

   

    
}
