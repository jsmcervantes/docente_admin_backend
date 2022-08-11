package yavirac.seguridadbackend.feature.username;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsernameService {

    @Autowired
    UsernameRepository usernameRepository;

    public Username save(Username username){

        return usernameRepository.save(username);
    }

    public Username findById(long id){
        return usernameRepository.findById(id).orElse(new Username());
    }

    public Username update(Username person){
        return usernameRepository.save(person);
    }

    public void deleteById(long id){
        usernameRepository.deleteById(id);
    }

    public List<Username> findAll(){
        return usernameRepository.findAll();
    }

    public List<Username> findByName(String term){
        return usernameRepository.findByNameLikeIgnoreCase(term+"%");
    }
    
    
}
