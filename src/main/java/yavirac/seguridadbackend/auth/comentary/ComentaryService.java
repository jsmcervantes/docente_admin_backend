package yavirac.seguridadbackend.auth.comentary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComentaryService {
    
    @Autowired
    ComentaryRepository comentaryRepository;

    public List<Comentary> findByName(String term){
        return comentaryRepository.findByNameLikeIgnoreCase(term+"%");
    }

    public Comentary findById(long id){
        return comentaryRepository.findById(id).orElse(new Comentary());
    }
}
