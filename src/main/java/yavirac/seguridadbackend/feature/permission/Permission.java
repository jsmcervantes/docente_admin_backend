package yavirac.seguridadbackend.feature.permission;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("registration_permissions")
public class Permission {
    
    @Id
    @Column("permission_id")
    private long permissionId; 
    @Column("name_permission")
    private int namePermission;
    private String description;
    @Column("date_since")
    private Timestamp dateSince;
    @Column("date_until")
    private Timestamp dateUntil;
    private Timestamp created;
    private Timestamp updated;
    private boolean enabled;
    private boolean archived;
    private Long tipoPermisoId;

    @MappedCollection(idColumn = "permission_id")
    private Set<PermissionComentary> comentaries = new HashSet<>();

}
