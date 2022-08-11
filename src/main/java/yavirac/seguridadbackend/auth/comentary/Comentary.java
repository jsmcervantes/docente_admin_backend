package yavirac.seguridadbackend.auth.comentary;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class Comentary {
    @Id
    private long id;
    private String name;
    
}
