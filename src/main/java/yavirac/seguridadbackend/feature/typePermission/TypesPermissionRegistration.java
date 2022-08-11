package yavirac.seguridadbackend.feature.typePermission;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class TypesPermissionRegistration {
    
    @Id private long id;
    private Long tiposPermisoId;
    private Long permissionId;

}
