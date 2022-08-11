package yavirac.seguridadbackend.feature.tiposPermiso;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TiposPermisoService {

    @Autowired
    TiposPermisoRepository tiposPermisoRepository;

    public TiposPermiso save(TiposPermiso tiposPermiso){

        return tiposPermisoRepository.save(tiposPermiso);
    }

    public TiposPermiso findById(long id){
        return tiposPermisoRepository.findById(id).orElse(new TiposPermiso());
    }

    public TiposPermiso update(TiposPermiso tiposPermiso){
        return tiposPermisoRepository.save(tiposPermiso);
    }

    public void deleteById(long id){
        tiposPermisoRepository.deleteById(id);
    }

    public List<TiposPermiso> findAll(){
        return tiposPermisoRepository.findAll();
    }

    public List<TiposPermiso> findByNombre(String term){
        return tiposPermisoRepository.findByNombreLikeIgnoreCase(term+"%");
    }
    
}