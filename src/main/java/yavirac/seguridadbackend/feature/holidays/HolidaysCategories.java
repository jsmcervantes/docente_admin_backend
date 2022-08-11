package yavirac.seguridadbackend.feature.holidays;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("dias_festivos_categorias")
public class HolidaysCategories {

    @Id private long id;

    @Column("dia_festivo_id")
    private Long dayId;
    @Column("categoria_id")
    private Long categoriaActividadId;
    
}
