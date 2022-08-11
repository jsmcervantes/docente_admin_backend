package yavirac.seguridadbackend.feature.permission;


import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("permission_comentary")
public class PermissionComentary {
    
   
    private long id;
    private Long permissionId;
    private Long comentaryId;
}
