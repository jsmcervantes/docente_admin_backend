package yavirac.seguridadbackend.feature.registro;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistroService {

    @Autowired
    RegistroRepository registroRepository;

    //CRUD = Create, Read, Update, Delete

    public Registro save(Registro registro){

        return registroRepository.save(registro);
    }

    public Registro findById(long id){
        return registroRepository.findById(id).orElse(new Registro());
    }

    public Registro update(Registro person){
        return registroRepository.save(person);
    }

    public void deleteById(long id){
        registroRepository.deleteById(id);
    }
    
    public List<Registro> findAll(){
        return registroRepository.findAll();
    }

    public List<Registro> findByUsuario(String term){
        return registroRepository.findByUsuarioLikeIgnoreCase(term+"%" );
    }
}