package com.financeiro.course.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.time.Instant;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "tb_payment")
public class Payment implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Instant moment;

    @JsonIgnore
    @OneToOne
    @MapsId
    private Order order;

    @Override
    public final boolean equals(Object o) {
        if (!(o instanceof Payment payment)) return false;

        return id != null && id.equals(payment.getId());
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }
}
