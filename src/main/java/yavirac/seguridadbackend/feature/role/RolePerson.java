package yavirac.seguridadbackend.feature.role;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("rol_person")
public class RolePerson {
    @Id
    private long id;
    private Long rolId;
    private Long personId;
}
