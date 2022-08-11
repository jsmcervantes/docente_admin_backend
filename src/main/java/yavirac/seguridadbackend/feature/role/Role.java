package yavirac.seguridadbackend.feature.role;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

/**
 * Rol
 */
@Data
@Table("roles")

public class Role {
    @Id
    @Column("rol_id")
    private long rolId;
    @Column("nombre")
    private String name;
    @Column("admin")
    private boolean isAdmin;
    private Timestamp created;
    private Timestamp updated;
    @Column("enable")
    private boolean isEnabled;
    @Column("archived")
    private boolean isArchived;
    @Column("categoria_actividad_id")
    private Long categoriaActividadId;

    @MappedCollection(idColumn = "rol_id")
    private Set<RolePerson> persons = new HashSet<>();
}
