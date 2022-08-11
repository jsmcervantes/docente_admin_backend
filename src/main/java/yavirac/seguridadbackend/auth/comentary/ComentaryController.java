package yavirac.seguridadbackend.auth.comentary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/comentary")
@CrossOrigin({"*"})
public class ComentaryController {

    @Autowired
    ComentaryService comentaryService;
    
    @GetMapping("/findByName/{term}")
    public List<Comentary> findByName(@PathVariable String term){
        return comentaryService.findByName(term);
    }

    @GetMapping("/findById/{id}")
    public Comentary findById(@PathVariable long id){
        return comentaryService.findById(id);
    }
}
