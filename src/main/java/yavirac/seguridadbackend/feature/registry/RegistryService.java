package yavirac.seguridadbackend.feature.registry;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistryService {

    @Autowired
    RegistryRepository registroRepository;

    //CRUD = Create, Read, Update, Delete

    public Registry save(Registry registro){

        return registroRepository.save(registro);
    }

    public Registry findById(long id){
        return registroRepository.findById(id).orElse(new Registry());
    }

    public Registry update(Registry person){
        return registroRepository.save(person);
    }

    public void deleteById(long id){
        registroRepository.deleteById(id);
    }
    
    public List<Registry> findAll(){
        return registroRepository.findAll();
    }

    public List<Registry> findByUsuario(String term){
        return registroRepository.findByUsuarioLikeIgnoreCase(term+"%" );
    }
}