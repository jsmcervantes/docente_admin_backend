package yavirac.seguridadbackend.feature.typePermission;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("tipos_permission")
public class TypesPermissionRegistration {
    
    @Id private long id;
    private Long tiposPermisoId;
    private Long permissionId;

}
