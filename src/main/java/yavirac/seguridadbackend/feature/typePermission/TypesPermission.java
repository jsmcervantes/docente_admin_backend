package yavirac.seguridadbackend.feature.typePermission;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table ("tipos_permiso")
public class TypesPermission {
    @Id
    @Column ("tipos_permiso_id")
    private long tiposPermisoId;
    @Column ("name")
    private String nombre;
    @Column ("date")
    private Date fecha;
    private Timestamp created;
    private Timestamp updated;
    private boolean enabled;
    private Long usernameId;

    @MappedCollection(idColumn = "tipos_permiso_id")
    private Set<TypesPermissionRegistration> permissions = new HashSet<>();
}
