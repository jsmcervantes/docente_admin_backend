package yavirac.seguridadbackend.feature.username;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table ("usernames")
public class Username {
    @Id
    private long usernameId;
    private String name;
    private String email;
    private String password;
    private Timestamp created;
    private Timestamp updated;
    private boolean enabled;
    private Long personId;
    
    @MappedCollection(idColumn = "username_id")
    private Set<UsernamePermission> permissions = new HashSet<>();
    
}

