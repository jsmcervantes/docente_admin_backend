package yavirac.seguridadbackend.feature.username;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class UsernamePermission {
    @Id
    private long id;
    private Long usernameId;
    private Long typePermissionId;
    private String description;

}
