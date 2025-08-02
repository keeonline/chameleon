package com.keeonline.chameleon.api.v1.model;

public class GreetingsDto {
    private final int version = 1;
    private String serviceName;

    public GreetingsDto(String serviceName) {
        this.serviceName = serviceName;
    }

    public int getVersion() {
        return version;
    }
    
    public String getServiceName() {
        return serviceName;
    }

    public String getMessage() {
        return String.format("This is the %s service!",serviceName);
    }
}
