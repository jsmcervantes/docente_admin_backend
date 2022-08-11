package yavirac.seguridadbackend.feature.registration;

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
@RequestMapping("/api/registro")
@CrossOrigin({"*"})
public class RegistrationController {
    
    @Autowired
    RegistrationService registroService;

    //CRUD

    //Create
    @PostMapping("/save")
    public Registration save(@RequestBody Registration registro){
        return registroService.save(registro);
    }

    //Read
    @GetMapping("/{id}")
    public Registration findById(@PathVariable long id){
        return registroService.findById(id);
    }

    //Update
    @PutMapping("/update")
    public Registration update(@RequestBody Registration registro)
    {
        return registroService.save(registro);
    }

    //Delete
    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        registroService.deleteById(id);
    }

    @GetMapping("/findAll")
    public List<Registration> findAll(){
       return registroService.findAll(); 
    }

    @GetMapping("/findByUsuario/{term}")
    public List<Registration> findByUsuario(@PathVariable String term){
        return registroService.findByUsuario(term);
    }

}