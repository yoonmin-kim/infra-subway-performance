package nextstep.subway.station.domain;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface StationRepository extends JpaRepository<Station, Long> {
    @Override
    List<Station> findAll();

    @Override
    @Query("SELECT s FROM Station as s WHERE s.id >= ?1")
    Page<Station> findAll(Pageable pageable);
}
