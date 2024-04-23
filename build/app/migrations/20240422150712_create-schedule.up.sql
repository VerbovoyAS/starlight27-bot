BEGIN TRANSACTION;

CREATE TABLE schedule
(
    date         date                                               not null,
    class_number varchar(7)                                         not null,
    lessons      jsonb                                              not null,
    created_at   timestamp with time zone default CURRENT_TIMESTAMP not null,
    updated_at   timestamp(0) with time zone                        null,
    PRIMARY KEY (date, class_number)
);
CREATE INDEX idx_schedule_lessons ON schedule USING GIN (lessons);

COMMIT;
