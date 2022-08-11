package yavirac.seguridadbackend.feature.role;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class RolePerson {
    @Id
    private long id;
    private Long rolId;
    private Long personId;
}
