package yavirac.seguridadbackend.feature.registry;



import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("registration_permission_comentary")
public class RegistryComentary {
    
    @Id
    private long id;
    private Long registroId;
    private Long comentaryId;
    private String comentary;


 
}
