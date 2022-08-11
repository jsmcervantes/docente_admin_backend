package yavirac.seguridadbackend.feature.tiposPermiso;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class TiposPermission {
    
    @Id private long id;
    private Long tiposPermisoId;
    private Long typePermissionId;

}
