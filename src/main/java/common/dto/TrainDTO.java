package common.dto;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class TrainDTO {

    private int id;

    private int capacity;

    private String name;

    private int startSt;

    private int [] stationId;

    private String [] stationName;

    private Object [] timeOnStation;

    private int [] minutesFromStartStn;

    private Object startDateTime;

}
