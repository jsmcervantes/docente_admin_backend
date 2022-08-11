package yavirac.seguridadbackend.feature.registry;



import org.springframework.data.annotation.Id;


import lombok.Data;

@Data
public class RegistryComentary {
    
    @Id
    private long id;
    private Long registroId;
    private Long comentaryId;
    private String comentary;


 
}
