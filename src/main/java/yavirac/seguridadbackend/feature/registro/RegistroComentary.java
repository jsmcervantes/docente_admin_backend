package yavirac.seguridadbackend.feature.registro;



import org.springframework.data.annotation.Id;


import lombok.Data;

@Data
public class RegistroComentary {
    
    @Id
    private long id;
    private Long registroId;
    private Long comentaryId;
    private String comentary;


 
}
