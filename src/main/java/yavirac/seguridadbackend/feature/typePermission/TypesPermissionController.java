package yavirac.seguridadbackend.feature.typePermission;

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
@RequestMapping("/api/tipospermiso")
@CrossOrigin({"*"})

public class TypesPermissionController {

    @Autowired
    TypesPermissionService tiposPermisoService;

    //CRUD

    //Create
    @PostMapping("/save")
    public TypesPermission save(@RequestBody TypesPermission tiposPermiso){
        return tiposPermisoService.save(tiposPermiso);
    }

    //Read
    @GetMapping("/{id}")
    public TypesPermission findById(@PathVariable long id){
        return tiposPermisoService.findById(id);
    }

    //Update
    @PutMapping("/update")
    public TypesPermission update(@RequestBody TypesPermission tiposPermiso)
    {
        return tiposPermisoService.save(tiposPermiso);
    }

    //Delete
    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        tiposPermisoService.deleteById(id);
    }

    @GetMapping("/findAll")
    public List<TypesPermission> findAll(){
        return tiposPermisoService.findAll();
    }

    @GetMapping("/findByNombre/{term}")
    public List<TypesPermission> findByNombre(@PathVariable String term){
        return tiposPermisoService.findByNombre(term);
    }
}
