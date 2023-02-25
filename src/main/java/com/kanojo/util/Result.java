package com.kanojo.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Result {

    @JsonProperty("code")
    private Integer code;

    private Object data;
    private String message;

    public Result(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}
