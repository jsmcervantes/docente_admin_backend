package yavirac.seguridadbackend.feature.tiposPermiso;

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

public class TiposPermisoController {

    @Autowired
    TiposPermisoService tiposPermisoService;

    //CRUD

    //Create
    @PostMapping("/save")
    public TiposPermiso save(@RequestBody TiposPermiso tiposPermiso){
        return tiposPermisoService.save(tiposPermiso);
    }

    //Read
    @GetMapping("/{id}")
    public TiposPermiso findById(@PathVariable long id){
        return tiposPermisoService.findById(id);
    }

    //Update
    @PutMapping("/update")
    public TiposPermiso update(@RequestBody TiposPermiso tiposPermiso)
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
    public List<TiposPermiso> findAll(){
        return tiposPermisoService.findAll();
    }

    @GetMapping("/findByNombre/{term}")
    public List<TiposPermiso> findByNombre(@PathVariable String term){
        return tiposPermisoService.findByNombre(term);
    }
}
