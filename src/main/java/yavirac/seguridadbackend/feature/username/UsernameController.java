package yavirac.seguridadbackend.feature.username;

import java.util.List;

//import org.apache.catalina.User;
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
@RequestMapping("/api/username")
@CrossOrigin({"*"})

public class UsernameController {

    @Autowired
    UsernameService usernameService;

    //CRUD

    //Create
    @PostMapping("/save")
    public Username save(@RequestBody Username username){
        return usernameService.save(username);
    }

    //Read
    @GetMapping("/{id}")
    public Username findById(@PathVariable long id){
        return usernameService.findById(id);
    }

    //Update
    @PutMapping("/update")
    public Username update(@RequestBody Username username)
    {
        return usernameService.save(username);
    }

    //Delete
    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        usernameService.deleteById(id);
    }

    @GetMapping ("/findAll") //consulte todo los requistro en la base de datos
    public List<Username> findAll(){
        return usernameService.findAll();
    }

    @GetMapping ("/findByName/{term}")
    public List<Username> findByName(@PathVariable String term){
        return usernameService.findByName(term);
    }

    
    
}
