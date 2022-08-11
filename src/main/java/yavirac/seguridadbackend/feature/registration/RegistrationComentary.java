package yavirac.seguridadbackend.feature.registration;



import org.springframework.data.annotation.Id;


import lombok.Data;

@Data
public class RegistrationComentary {
    
    @Id
    private long id;
    private Long registroId;
    private Long comentaryId;
    private String comentary;


 
}
