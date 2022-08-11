package yavirac.seguridadbackend.feature.registration;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistrationService {

    @Autowired
    RegistrationRepository registroRepository;

    //CRUD = Create, Read, Update, Delete

    public Registration save(Registration registro){

        return registroRepository.save(registro);
    }

    public Registration findById(long id){
        return registroRepository.findById(id).orElse(new Registration());
    }

    public Registration update(Registration person){
        return registroRepository.save(person);
    }

    public void deleteById(long id){
        registroRepository.deleteById(id);
    }
    
    public List<Registration> findAll(){
        return registroRepository.findAll();
    }

    public List<Registration> findByUsuario(String term){
        return registroRepository.findByUsuarioLikeIgnoreCase(term+"%" );
    }
}