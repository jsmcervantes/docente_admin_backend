package yavirac.seguridadbackend.feature.holidays;

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
@RequestMapping("/api/diaFestivo")
@CrossOrigin({ "*" })
public class HolidaysController {

    @Autowired
    HolidaysService diaFestivoService;

    // CRUD

    // Create
    @PostMapping("/save")
    public Holidays save(@RequestBody Holidays diaFestivo) {
        return diaFestivoService.save(diaFestivo);
    }

    // Read
    @GetMapping("/{id}")
    public Holidays findById(@PathVariable long id) {
        return diaFestivoService.findById(id);
    }

    // Update
    @PutMapping("/update")
    public Holidays update(@RequestBody Holidays diaFestivo) {
        return diaFestivoService.save(diaFestivo);
    }

    // Delete
    @DeleteMapping("/deleteById/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id) {
        diaFestivoService.deleteById(id);
    }

    @GetMapping("/findAll")
    public List<Holidays> findAll(){
        return diaFestivoService.findAll();
    }

    @GetMapping("/findByName/{term}")
    public List<Holidays> findByName(@PathVariable String term){
        return diaFestivoService.findByName(term);
    }

}
