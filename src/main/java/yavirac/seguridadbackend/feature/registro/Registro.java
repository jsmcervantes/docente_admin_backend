package yavirac.seguridadbackend.feature.registro;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

@Data
@Table("registros")
public class Registro {

    @Id
    private long registroId;
    private String usuario;
    private String comentario;
    private Timestamp created;
    private int activity;
    private boolean enabled;
    private Timestamp updated;
    private boolean archived;
    private Long usernameId; 

    @MappedCollection(idColumn = "registro_id")
    private Set<RegistroComentary> comentaries = new HashSet<>();
    
}

